/datum/coven/potence
	name = "Potence"
	desc = "Boosts melee and unarmed damage."
	icon_state = "potence"
	power_type = /datum/coven_power/potence

/datum/coven_power/potence
	name = "Potence power name"
	desc = "Potence power description"

	grouped_powers = list(
		/datum/coven_power/potence/one,
		/datum/coven_power/potence/two,
		/datum/coven_power/potence/three,
		/datum/coven_power/potence/four,
		/datum/coven_power/potence/five
	)

//POTENCE 1
/datum/coven_power/potence/one
	name = "Potence 1"
	desc = "Enhance your muscles. Never hit softly."

	level = 1
	research_cost = 0
	check_flags = COVEN_CHECK_CAPABLE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/potence/one/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/potence/first)
	

/datum/coven_power/potence/one/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/potence/first)
	owner.remove_overlay(POTENCE_LAYER)

//POTENCE 2
/datum/coven_power/potence/two
	name = "Potence 2"
	desc = "Become powerful beyond your muscles. Wreck people and things."

	level = 2
	research_cost = 1
	vitae_cost = 55
	check_flags = COVEN_CHECK_CAPABLE

	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/potence/two/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/potence/second)

/datum/coven_power/potence/two/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/potence/second)
	owner.remove_overlay(POTENCE_LAYER)

//POTENCE 3
/datum/coven_power/potence/three
	name = "Potence 3"
	desc = "Become a force of destruction. Lift and break the unliftable and the unbreakable."

	level = 3
	research_cost = 2
	vitae_cost = 60
	check_flags = COVEN_CHECK_CAPABLE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/potence/three/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/potence/third)


/datum/coven_power/potence/three/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/potence/third)
	owner.remove_overlay(POTENCE_LAYER)

//POTENCE 4
/datum/coven_power/potence/four
	name = "Potence 4"
	desc = "Become an unyielding machine for as long as your Vitae lasts."

	level = 4
	research_cost = 3
	vitae_cost = 65
	check_flags = COVEN_CHECK_CAPABLE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/potence/four/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/potence/fourth)
	ADD_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)

/datum/coven_power/potence/four/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/potence/fourth)
	owner.remove_overlay(POTENCE_LAYER)
	REMOVE_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)


//POTENCE 5
/datum/coven_power/potence/five
	name = "Potence 5"
	desc = "The people could worship you as a god if you showed them this."

	level = 5
	research_cost = 4
	vitae_cost = 70
	check_flags = COVEN_CHECK_CAPABLE
	toggled = TRUE
	duration_length = 2 TURNS

/datum/coven_power/potence/five/activate()
	. = ..()
	owner.apply_status_effect(/datum/status_effect/buff/potence/fifth)
	ADD_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)


/datum/coven_power/potence/five/deactivate()
	. = ..()
	owner.remove_status_effect(/datum/status_effect/buff/potence/fifth)
	owner.remove_overlay(POTENCE_LAYER)
	REMOVE_TRAIT(owner, TRAIT_STRENGTH_UNCAPPED, TRAIT_MIRACLE)


/datum/status_effect/buff/potence/first
	id = "potence1"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_STR = 2)
/datum/status_effect/buff/potence/second
	id = "potence2"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_STR = 4)
/datum/status_effect/buff/potence/third
	id = "potence3"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_STR = 6)
/datum/status_effect/buff/potence/fourth
	id = "potence4"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_STR = 8)
/datum/status_effect/buff/potence/fifth
	id = "potence5"
	alert_type = /atom/movable/screen/alert/status_effect/buff/alch/strengthpot
	effectedstats = list(STATKEY_STR = 10)
