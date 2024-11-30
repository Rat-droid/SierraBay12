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
    gear_tweaks += new/datum/gear_tweak/path(hephaest)
    allowed_branches = list(/datum/mil_branch/contractor)

///sweater

/datum/gear/uniform/sweater
    display_name = "striped Sweater"
    path = /obj/item/clothing/under/sweater
