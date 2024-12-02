/// Heph

/datum/gear/uniform/HephClothing
	display_name = "hephaestus uniform selection"
	path = /obj/item/clothing/under

/datum/gear/uniform/HephClothing/New()
    ..()
    var/hephaest = list()
    hephaest["Hephaestus tactical uniform"] = /obj/item/clothing/under/HephTactical
    hephaest["Hephaestus technician"] = /obj/item/clothing/under/HephTech
    hephaest["Hephaestus technician alt"] = /obj/item/clothing/under/HephTechalt
    hephaest["Hephaestus miner"] = /obj/item/clothing/under/HephMiner
    hephaest["Hephaestus enginer"] = /obj/item/clothing/under/HephEngineer
    hephaest["Hephaestus atmospheric"] = /obj/item/clothing/under/HephAtmos
    hephaest["Hephaestus apprentice"] = /obj/item/clothing/under/HephApprentice
    gear_tweaks += new/datum/gear_tweak/path(hephaest)
    allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu

/datum/gear/uniform/ZengHuClothing
	display_name = "zeng-hu uniform selection"
	path = /obj/item/clothing/under

/datum/gear/uniform/ZengHuClothing/New()
    ..()
    var/zenghu = list()
    zenghu["Zeng-Hu tactical uniform"] = /obj/item/clothing/under/HephTactical
    zenghu["Zeng-Hu technician"] = /obj/item/clothing/under/HephTech
    zenghu["Zeng-Hu technician alt"] = /obj/item/clothing/under/HephTechalt
    zenghu["Zeng-Hu miner"] = /obj/item/clothing/under/HephMiner
    gear_tweaks += new/datum/gear_tweak/path(zenghu)
    allowed_branches = list(/datum/mil_branch/contractor)
///sweater

/datum/gear/uniform/sweater
    display_name = "striped Sweater"
    path = /obj/item/clothing/under/sweater
