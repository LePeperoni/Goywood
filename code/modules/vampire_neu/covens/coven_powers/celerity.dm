/datum/coven/celerity
	name = "Celerity"
	desc = "Boosts your speed." //THERES NO FUCKING MASQUARADE, ITS DARK AGES BEATCH!!!
	icon_state = "celerity"
	power_type = /datum/coven_power/celerity

/datum/coven_power/celerity
	name = "Celerity power name"
	desc = "Celerity power description"
	grouped_powers = list(
		/datum/coven_power/celerity/one,
		/datum/coven_power/celerity/two,
		/datum/coven_power/celerity/three,
		/datum/coven_power/celerity/four,
		/datum/coven_power/celerity/five,
	)
	var/multiplicative_slowdown = -0.1

/datum/coven_power/celerity/activate(atom/target)
	. = ..()
	owner.add_movespeed_modifier(MOVESPEED_ID_CELERITY, multiplicative_slowdown = src.multiplicative_slowdown)
	owner.apply_status_effect(/datum/status_effect/buff/celerity, level)
	owner.AddComponent(/datum/component/after_image)

/datum/coven_power/celerity/deactivate(atom/target, direct)
	. = ..()
	qdel(owner.GetComponent(/datum/component/after_image))
	owner.remove_status_effect(/datum/status_effect/buff/celerity)
	owner.remove_movespeed_modifier(MOVESPEED_ID_CELERITY)

//CELERITY 1
/datum/coven_power/celerity/one
	name = "Celerity 1"
	desc = "Enhances your speed to make everything a little bit easier."

	level = 1
	research_cost = 0
	check_flags = COVEN_CHECK_LYING | COVEN_CHECK_IMMOBILE
	toggled = TRUE
	duration_length = 2 TURNS


/datum/coven_power/celerity/one/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/celerity/first)
	

/datum/coven_power/celerity/one/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/celerity/first)
	owner.remove_overlay(POTENCE_LAYER)

//CELERITY 2

/datum/coven_power/celerity/two
	name = "Celerity 2"
	desc = "Significantly improves your speed and reaction time."

	level = 2
	research_cost = 1
	vitae_cost = 55
	check_flags = COVEN_CHECK_LYING | COVEN_CHECK_IMMOBILE
	toggled = TRUE
	duration_length = 2 TURNS


/datum/coven_power/celerity/two/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/celerity/second)

/datum/coven_power/celerity/two/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/celerity/second)
	owner.remove_overlay(POTENCE_LAYER)

//CELERITY 3
/datum/coven_power/celerity/three
	name = "Celerity 3"
	desc = "Move faster. React in less time. Your body is under perfect control."

	level = 3
	research_cost = 2
	vitae_cost = 60
	check_flags = COVEN_CHECK_LYING | COVEN_CHECK_IMMOBILE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/celerity/three/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/celerity/third)


/datum/coven_power/celerity/three/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/celerity/third)
	owner.remove_overlay(POTENCE_LAYER)


//CELERITY 4
/datum/coven_power/celerity/four
	name = "Celerity 4"
	desc = "Breach the limits of what is humanly possible. Move like a lightning bolt."

	level = 4
	research_cost = 3
	vitae_cost = 65
	check_flags = COVEN_CHECK_LYING | COVEN_CHECK_IMMOBILE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/celerity/four/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/celerity/fourth)

/datum/coven_power/celerity/four/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/celerity/fourth)
	owner.remove_overlay(POTENCE_LAYER)

//CELERITY 5
/datum/coven_power/celerity/five
	name = "Celerity 5"
	desc = "You are like light. Blaze your way through the world."

	level = 5
	research_cost = 4
	vitae_cost = 70
	check_flags = COVEN_CHECK_LYING | COVEN_CHECK_IMMOBILE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/celerity/five/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/celerity/fifth)
	ADD_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)


/datum/coven_power/celerity/five/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/celerity/fifth)
	owner.remove_overlay(POTENCE_LAYER)
	REMOVE_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)

/datum/status_effect/buff/celerity/first
	id = "celerity1"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_SPD = 2)
/datum/status_effect/buff/celerity/second
	id = "celerity2"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_SPD = 4)
/datum/status_effect/buff/celerity/third
	id = "celerity3"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_SPD = 6)
/datum/status_effect/buff/celerity/fourth
	id = "celerity4"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_SPD = 8)
/datum/status_effect/buff/celerity/fifth
	id = "celerity5"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_SPD = 10)

