/datum/job/roguetown/prisonerc
	title = "Tribal Slave"
	flag = PRISONERC
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 2
	spawn_positions = 2

	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDSPLUS
	tutorial = "You are a slave in the tribe, likely for your crimes against it... Or something else, either way you live, mine and likely do other things as the tribals tell you to do."

	outfit = /datum/outfit/job/roguetown/prisonerc
	display_order = JDO_PRISONERC
	give_bank_account = 10
	min_pq = -14
	max_pq = null
	can_random = FALSE

	cmode_music = 'sound/music/combat_bum.ogg'

/datum/outfit/job/roguetown/prisonerc/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/loincloth/brown
	if(H.mind)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/labor/mining, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/labor/farming, 3, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/sneaking, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/music, 1, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("intelligence", 1)
		H.change_stat("fortune", 2)
		H.change_stat("strength", 1)
		H.change_stat("constitution", -1)
		ADD_TRAIT(H, TRAIT_BOG_TREKKING, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NASTY_EATER, TRAIT_GENERIC)
