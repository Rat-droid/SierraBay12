/// Heph

/datum/gear/head/heph_beret
	display_name = "Hephaestus beret"
	path = /obj/item/clothing/head/beret/Heph_beret
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu

/datum/gear/head/zenghu_beret
	display_name = "Zeng-Hu beret"
	path = /obj/item/clothing/head/beret/ZengHu_beret
	cost = 1
	allowed_branches = list(/datum/mil_branch/contractor)


/datum/gear/head/zenghu_beret/New()
    ..()
    var/zenhguberet = list()
    zenhguberet["Zeng-Hu beret"] = /obj/item/clothing/head/beret/ZengHu_beret
    zenhguberet["Zeng-Hu beret alt"] = /obj/item/clothing/head/beret/ZengHu_beret_alt
    gear_tweaks += new/datum/gear_tweak/path(zenhguberet)
    allowed_branches = list(/datum/mil_branch/contractor)
/// Other's
