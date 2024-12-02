/// Heph

/datum/gear/head/hephjackets
	display_name = "Hephaestus jacket "
	path = /obj/item/clothing/suit/storage/hephjackets
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu

/datum/gear/head/zenghujackets
	display_name = "Zeng-Hu jacket selection"
	path = /obj/item/clothing/suit/storage
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/datum/gear/suit/zenghujackets/New()
	..()
	var/zenghujackets = list()
	zenghujackets += /obj/item/clothing/suit/storage/zenghujacket
	zenghujackets += /obj/item/clothing/suit/storage/zenghujacketalt
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(zenghujackets)

/// Other's
