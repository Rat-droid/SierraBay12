/// Heph

/datum/gear/head/hephberet
	display_name = "Hephaestus beret"
	path = /obj/item/clothing/head/beret/heph
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu

/datum/gear/head/zenghuberet
	display_name = "Zeng-Hu beret"
	path = /obj/item/clothing/head/beret/zenghuberet
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)


/datum/gear/head/zenghuberet/New()
    ..()
    var/zenhguberet = list()
    zenhguberet["Zeng-Hu beret"] = /obj/item/clothing/head/beret/zenghuberet
    zenhguberet["Zeng-Hu beret alt"] = /obj/item/clothing/head/beret/zenghuberetalt
    gear_tweaks += new/datum/gear_tweak/path(zenhguberet)
    allowed_branches = list(/datum/mil_branch/contractor)
/// Other's
