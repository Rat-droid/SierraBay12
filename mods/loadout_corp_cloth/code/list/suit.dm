/// Heph

/datum/gear/suit/hephjacket
	display_name = "Hephaestus jacket "
	path = /obj/item/clothing/suit/storage/toggle/jacket_heph
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu

/datum/gear/suit/zenghujackets
	display_name = "Zeng-Hu jacket selection"
	path = /obj/item/clothing/suit/storage
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/datum/gear/suit/zenghujackets/New()
	..()
	var/zenghujackets = list()
	zenghujackets["Zeng-Hu jacket"] = /obj/item/clothing/suit/storage/toggle/jacket_zenghu
	zenghujackets["Zeng-Hu jacket alt"] = /obj/item/clothing/suit/storage/toggle/jacket_zenghu_alt
	zenghujackets["Zeng-Hu emt jacket"] = /obj/item/clothing/suit/storage/toggle/jacket_zeng_emt
	gear_tweaks += new/datum/gear_tweak/path(zenghujackets)

/// Other's
