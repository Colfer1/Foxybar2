
/////////////////////////////////////////////////PIZZA////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/pizza
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	slices_num = 6
	volume = 80
	list_reagents = list(/datum/reagent/consumable/nutriment = 30, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | DAIRY | VEGETABLES
	weapon_special_component = /datum/component/weapon_special/single_turf

/* Death to pizza furniture
/obj/item/reagent_containers/food/snacks/pizzaslice/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/kitchen/rollingpin))
		if(!isturf(loc))
			to_chat(user, span_warning("I need to put [src] on a surface to roll it out!"))
			return
		new /obj/item/stack/sheet/pizza(loc)
		to_chat(user, span_notice("I smoosh [src] into a cheesy sheet."))
		qdel(src)
		return
	return ..()
*/

/obj/item/reagent_containers/food/snacks/pizzaslice
	icon = 'icons/obj/food/pizzaspaghetti.dmi'
	list_reagents = list(/datum/reagent/consumable/nutriment = 5)
	foodtype = GRAIN | DAIRY | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizza/margherita
	name = "pizza margherita"
	desc = "The most cheezy pizza in America."
	icon_state = "pizzamargherita"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/margherita
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizza/margherita/robo/Initialize()
	bonus_reagents += list(/datum/reagent/nanomachines = 70)
	return ..()

/obj/item/reagent_containers/food/snacks/pizzaslice/margherita
	name = "margherita slice"
	desc = "A slice of the most cheezy pizza in America."
	icon_state = "pizzamargheritaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/pizza/meat
	name = "meatpizza"
	desc = "Greasy pizza with delicious meat."
	icon_state = "meatpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/meat
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 8)
	list_reagents = list(/datum/reagent/consumable/nutriment = 30, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 8)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES| DAIRY | MEAT

/obj/item/reagent_containers/food/snacks/pizzaslice/meat
	name = "meatpizza slice"
	desc = "A nutritious slice of meat pizza."
	icon_state = "meatpizzaslice"
	filling_color = "#A52A2A"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT

/obj/item/reagent_containers/food/snacks/pizza/mushroom
	name = "mushroom pizza"
	desc = "Very special pizza."
	icon_state = "mushroompizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mushroom
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 5)
	list_reagents = list(/datum/reagent/consumable/nutriment = 30, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/mushroom
	name = "mushroom pizza slice"
	desc = "Maybe it is the last slice of pizza in your life."
	icon_state = "mushroompizzaslice"
	filling_color = "#FFE4C4"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "mushroom" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/vegetable
	name = "vegetable pizza"
	desc = "No vegetables were harmed during making this pizza."
	icon_state = "vegetablepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/vegetable
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 5)
	list_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/medicine/oculine = 12, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 2, "cheese" = 1, "carrot" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/vegetable
	name = "vegetable pizza slice"
	desc = "A slice of the most green pizza of all pizzas not containing green ingredients."
	icon_state = "vegetablepizzaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 2, "cheese" = 1, "carrot" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/donkpocket
	name = "hot-pocket pizza"
	desc = "Who thought this would be a good idea?"
	icon_state = "donkpocketpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/donkpocket
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 5)
	list_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/medicine/omnizine = 10, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1, "laziness" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | JUNKFOOD | ANTITOXIC

/obj/item/reagent_containers/food/snacks/pizzaslice/donkpocket
	name = "hot-pocket pizza slice"
	desc = "Smells like a hot-pocket."
	icon_state = "donkpocketpizzaslice"
	filling_color = "#FFA500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1, "laziness" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT | JUNKFOOD | ANTITOXIC

/obj/item/reagent_containers/food/snacks/pizza/dank
	name = "dank pizza"
	desc = "The hippie's pizza of choice."
	icon_state = "dankpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/dank
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 6)
	list_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/doctor_delight = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | FRUIT | DAIRY | ANTITOXIC

/obj/item/reagent_containers/food/snacks/pizzaslice/dank
	name = "dank pizza slice"
	desc = "So good, man..."
	icon_state = "dankpizzaslice"
	filling_color = "#2E8B57"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | FRUIT | DAIRY | ANTITOXIC

/obj/item/reagent_containers/food/snacks/pizza/sassysage
	name = "sausage pizza"
	desc = "I can really smell the sausage."
	icon_state = "sassysagepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/sassysage
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizzaslice/sassysage
	name = "sausage pizza slice"
	desc = "Delicious sausage."
	icon_state = "sassysagepizzaslice"
	filling_color = "#FF4500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "meat" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/pineapple
	name = "\improper Hawaiian pizza"
	desc = "The pizza equivalent of Einstein's riddle."
	icon_state = "pineapplepizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/pineapple
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 6, "ham" = 2)
	foodtype = PINEAPPLE //Over powering tast of gods fruit

/obj/item/reagent_containers/food/snacks/pizzaslice/pineapple
	name = "\improper Hawaiian pizza slice"
	desc = "A slice of delicious controversy."
	icon_state = "pineapplepizzaslice"
	filling_color = "#FF4500"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 6, "ham" = 2)
	foodtype = PINEAPPLE //Over powering tast of gods fruit

/obj/item/reagent_containers/food/snacks/pizza/pineapple/anomaly
	desc = "A anomaly made pizza with pineapple..."
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 16, /datum/reagent/consumable/nutriment/vitamin = 16)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 6, "ham" = 2, "good" = 10)

/obj/item/reagent_containers/food/snacks/pizzaslice/pineapple/anomaly
	desc = "A slice of good tasting pizza. But has pineapple on it, what a anomaly!"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 6, "ham" = 2, "good" = 10)

/obj/item/reagent_containers/food/snacks/pizza/arnold
	name = "\improper Arnold pizza"
	desc = "Hello, you've reached Arnold's pizza shop. I'm not here now, I'm out killing pepperoni."
	icon_state = "arnoldpizza"
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/arnold
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 30, /datum/reagent/consumable/nutriment/vitamin = 6, /datum/reagent/iron = 10, /datum/reagent/medicine/omnizine = 30)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pepperoni" = 2, "9 millimeter bullets" = 2)

/* Nope
/obj/item/reagent_containers/food/snacks/proc/try_break_off(mob/living/M, mob/living/user) //maybe i give you a pizza maybe i break off your arm
	var/obj/item/bodypart/l_arm = user.get_bodypart(BODY_ZONE_L_ARM)
	var/obj/item/bodypart/r_arm = user.get_bodypart(BODY_ZONE_R_ARM)
	if(prob(50) && iscarbon(user) && M == user && (r_arm || l_arm))
		user.visible_message(span_warning("\The [src] breaks off [user]'s arm!!"), span_warning("\The [src] breaks off your arm!"))
		if(l_arm)
			l_arm.dismember()
		else
			r_arm.dismember()
		playsound(user,pick('sound/misc/desceration-01.ogg','sound/misc/desceration-02.ogg','sound/misc/desceration-01.ogg') ,50, TRUE, -1)

/obj/item/reagent_containers/food/snacks/proc/i_kill_you(obj/item/I, mob/user)
	if(istype(I, /obj/item/reagent_containers/food/snacks/pineappleslice))
		to_chat(user, "<font color='red' size='7'>If you want something crazy like pineapple, I kill you.</font>")
		user.gib() //if you want something crazy like pineapple, i kill you

/obj/item/reagent_containers/food/snacks/pizza/arnold/attack(mob/living/M, mob/living/user)
	. = ..()
	try_break_off(M, user)

/obj/item/reagent_containers/food/snacks/pizza/arnold/attackby(obj/item/I, mob/user)
	i_kill_you(I, user)
	. = ..()

*/
/obj/item/reagent_containers/food/snacks/pizzaslice/arnold
	name = "\improper Arnold pizza slice"
	desc = "I come over, maybe I give you a pizza, maybe I break off your arm."
	icon_state = "arnoldpizzaslice"
	filling_color = "#A52A2A"
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1, "pineapple" = 2, "ham" = 2)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT
/*
/obj/item/reagent_containers/food/snacks/pizzaslice/arnold/attack(mob/living/M, mob/living/user)
	. =..()
	try_break_off(M, user)

/obj/item/reagent_containers/food/snacks/pizzaslice/arnold/attackby(obj/item/I, mob/user)
	i_kill_you(I, user)
	. = ..()
*/

/obj/item/reagent_containers/food/snacks/pizzaslice/custom
	name = "pizza slice"
	icon_state = "pizzamargheritaslice"
	filling_color = "#FFFFFF"
	foodtype = GRAIN | VEGETABLES


// Used by MREs
/obj/item/reagent_containers/food/snacks/pizzaslice/pepperoni
	name = "\improper MRE pepperoni pizza slice"
	desc = "A freeze dried, dehydrated slice of bread with tomato sauce, pepperoni and cheese."
	icon_state = "meatpizzaslice"
	filling_color = "#A52A2A"
	tastes = list("cardboard" = 1, "tomato" = 1, "cheese" = 1, "pepperoni" = 2)
	foodtype = GRAIN | VEGETABLES | DAIRY | MEAT

/obj/item/reagent_containers/food/snacks/pizza/mothic_firecracker
	name = "mothic firecracker pizza"
	desc = "They're not kidding when they call this a hot pizza pie."
	icon_state = "firecracker_pizza"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/bbqsauce = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/consumable/capsaicin = 10,
	)
	tastes = list("crust" = 1, "chili" = 1, "corn" = 1, "cheese" = 1, "bbq sauce" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mothic_firecracker

/obj/item/reagent_containers/food/snacks/pizzaslice/mothic_firecracker
	name = "mothic firecracker slice"
	desc = "A spicy slice of something quite nice."
	icon_state = "firecracker_slice"
	tastes = list("crust" = 1, "chili" = 1, "corn" = 1, "cheese" = 1, "bbq sauce" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/mothic_five_cheese
	name = "mothic five-cheese pizza"
	desc = "A favourite amongst mice, rats, and English inventors."
	icon_state = "five_cheese_pizza"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mothic_five_cheese

/obj/item/reagent_containers/food/snacks/pizzaslice/mothic_five_cheese
	name = "mothic five-cheese slice"
	desc = "It's the cheesiest slice in the galaxy!"
	icon_state = "five_cheese_slice"
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/mothic_white_pie
	name = "mothic white-pie pizza"
	desc = "I say to-may-to, I say to-mah-to, and we put neither on this pizza."
	icon_state = "white_pie_pizza"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "cheese" = 1, "herbs" = 1, "garlic" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mothic_white_pie

/obj/item/reagent_containers/food/snacks/pizzaslice/mothic_white_pie
	name = "mothic white-pie slice"
	desc = "Cheesy, garlicky, herby, delicious!"
	icon_state = "white_pie_slice"
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/mothic_pesto
	name = "mothic pesto pizza"
	desc = "Green as the grass in the garden. Not that there's many of those on mothic ships."
	icon_state = "pesto_pizza"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "pesto" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mothic_pesto

/obj/item/reagent_containers/food/snacks/pizzaslice/mothic_pesto
	name = "mothic pesto slice"
	desc = "A slice of presto pesto pizza."
	icon_state = "pesto_slice"
	tastes = list("crust" = 1, "pesto" = 1, "cheese" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/pizza/mothic_garlic
	name = "mothic garlic pizzabread"
	desc = "The best food in the galaxy, hands down."
	icon_state = "garlic_pizza"
	list_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/tomatojuice = 6,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("crust" = 1, "garlic" = 1, "butter" = 1)
	foodtype = GRAIN | VEGETABLES | DAIRY
	slice_path = /obj/item/reagent_containers/food/snacks/pizzaslice/mothic_garlic

/obj/item/reagent_containers/food/snacks/pizzaslice/mothic_garlic
	name = "mothic garlic pizzabread slice"
	desc = "The best combination of oily, garlicky, and crusty known to mothkind."
	icon_state = "garlic_slice"
	tastes = list("dough" = 1, "garlic" = 1, "butter" = 1)
	foodtype = GRAIN | VEGETABLES
