/obj/item/rig/attackby(obj/item/W as obj, mob/living/carbon/user as mob)
	if(!istype(user,/mob/living/carbon)) 
		return 0

	if(electrified != 0)
		if(shock(user)) //Handles removing charge from the cell, as well. No need to do that here.
			return
	var/l_hand = user.get_item_for_held_index(1)
	var/r_hand = user.get_item_for_held_index(2)
	// Pass repair items on to the chestpiece.
	if(chest && (istype(W,/obj/item/stack) || istype(W, /obj/item/weldingtool)))
		return chest.attackby(W,user)

	// Lock or unlock the access panel.
	if(W.GetID())
		if(subverted)
			locked = 0
			to_chat(user, span_danger("It looks like the locking system has been shorted out."))
			return

		if((!req_access || !req_access.len) && (!req_one_access || !req_one_access.len))
			locked = 0
			to_chat(user, span_danger("\The [src] doesn't seem to have a locking mechanism."))
			return

		if(security_check_enabled && !src.allowed(user))
			to_chat(user, span_danger("Access denied."))
			return

		locked = !locked
		to_chat(user, "I [locked ? "lock" : "unlock"] \the [src] access panel.")
		return

	else if(istype(W,/obj/item/crowbar))
		if(!open && locked)
			to_chat(user, "The access panel is locked shut.")
			return

		open = !open
		to_chat(user, "I [open ? "open" : "close"] the access panel.")
		return

	if(open)
		// Hacking.
		if(istype(W,/obj/item/wirecutters) || istype(W,/obj/item/multitool))
			if(open)
				wires.interact(user)
			else
				to_chat(user, "I can't reach the wiring.")
			return
		// Air tank.
		if(istype(W,/obj/item/tank)) //Todo, some kind of check for suits without integrated air supplies.
			if(air_supply)
				to_chat(user, "\The [src] already has a tank installed.")
				return

			user.doUnEquip(W)
			air_supply = W
			W.forceMove(src)
			to_chat(user, "I slot [W] into [src] and tighten the connecting valve.")
			return

		// Check if this is a hardsuit upgrade or a modification.
		else if(istype(W,/obj/item/rig_module))
			if(istype(src.loc,/mob/living/carbon/human))
				var/mob/living/carbon/human/H = src.loc
				if(H.back == src)
					to_chat(user, span_danger("I can't install a hardsuit module while the suit is being worn."))
					return 1

			if(!installed_modules) 
				installed_modules = list()
			if(installed_modules.len)
				for(var/obj/item/rig_module/installed_mod in installed_modules)
					if(!installed_mod.redundant && istype(installed_mod,W))
						to_chat(user, "The hardsuit already has a module of that class installed.")
						return 1

			var/obj/item/rig_module/mod = W
			to_chat(user, "I begin installing \the [mod] into \the [src].")
			if(!do_after(user, 40 * W.toolspeed, target = src))
				return
			if(!user || !W)
				return
			to_chat(user, "I install \the [mod] into \the [src].")
			user.doUnEquip(mod)
			installed_modules |= mod
			mod.forceMove(src)
			mod.installed(src)
			update_icon()
			return 1

		else if(!cell && istype(W,/obj/item/stock_parts/cell))
			to_chat(user, "I jack \the [W] into \the [src]'s battery mount.")
			user.doUnEquip(W)
			W.forceMove(src)
			src.cell = W
			return

		else if(istype(W,/obj/item/wrench))
			if(!air_supply)
				to_chat(user, "There is not tank to remove.")
				return
			if(r_hand && l_hand)
				air_supply.forceMove(get_turf(user))
			else
				user.put_in_hands(air_supply)
			to_chat(user, "I detach and remove \the [air_supply].")
			air_supply = null
			return

		else if(istype(W,/obj/item/screwdriver))
			var/list/current_mounts = list()
			if(cell) current_mounts   += "cell"
			if(installed_modules && installed_modules.len) current_mounts += "system module"

			var/to_remove = input("Which would you like to modify?") as null|anything in current_mounts
			if(!to_remove)
				return

			if(istype(src.loc,/mob/living/carbon/human) && to_remove != "cell")
				var/mob/living/carbon/human/H = src.loc
				if(H.back == src)
					to_chat(user, "I can't remove an installed device while the hardsuit is being worn.")
					return

			switch(to_remove)
				if("cell")
					if(cell)
						to_chat(user, "I detatch \the [cell] from \the [src]'s battery mount.")
						for(var/obj/item/rig_module/module in installed_modules)
							module.deactivate()
						var/l_hand2 = user.get_item_for_held_index(1)
						var/r_hand2 = user.get_item_for_held_index(2)
						if(r_hand2 && l_hand2)
							cell.forceMove(get_turf(user))
						else
							user.put_in_hands(cell)
						cell = null
					else
						to_chat(user, "There is nothing loaded in that mount.")

				if("system module")
					var/list/possible_removals = list()
					for(var/obj/item/rig_module/module in installed_modules)
						if(module.permanent)
							continue
						possible_removals[module.name] = module

					if(!possible_removals.len)
						to_chat(user, "There are no installed modules to remove.")
						return

					var/removal_choice = input("Which module would you like to remove?") as null|anything in possible_removals
					if(!removal_choice)
						return

					var/obj/item/rig_module/removed = possible_removals[removal_choice]
					to_chat(user, "I detatch \the [removed] from \the [src].")
					removed.forceMove(get_turf(src))
					removed.removed()
					installed_modules -= removed
					update_icon()

		return

	// If we've gotten this far, all we have left to do before we pass off to root procs
	// is check if any of the loaded modules want to use the item we've been given.
	for(var/obj/item/rig_module/module in installed_modules)
		if(module.accepts_item(W,user)) //Item is handled in this proc
			return
	..()


/obj/item/rig/attack_hand(mob/user)
	if(electrified != 0)
		if(shock(user)) //Handles removing charge from the cell, as well. No need to do that here.
			return
	..()

/obj/item/rig/emag_act(remaining_charges, mob/user)
	if(!subverted)
		req_access.Cut()
		req_one_access.Cut()
		locked = FALSE
		subverted = TRUE
		to_chat(user, span_danger("I short out the access protocol for the suit."))
		return TRUE
