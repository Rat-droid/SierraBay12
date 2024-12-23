/// Hepheast ///

/datum/gear/uniform/hephclothing
	display_name = "Hephaestus uniform selection"
	path = /obj/item/clothing/under

/datum/gear/uniform/hephclothing/New()
    ..()
    var/hephaest = list()
    hephaest["Hephaestus Tactical uniform"] = /obj/item/clothing/under/Heph_Tactical
    hephaest["Hephaestus Technician"] = /obj/item/clothing/under/Heph_Tech
    hephaest["Hephaestus Technician alt"] = /obj/item/clothing/under/Heph_Tech_alt
    hephaest["Hephaestus Miner"] = /obj/item/clothing/under/Heph_Miner
    hephaest["Hephaestus Enginer"] = /obj/item/clothing/under/Heph_Engineer
    hephaest["Hephaestus Atmospheric"] = /obj/item/clothing/under/Heph_Atmos
    hephaest["Hephaestus Apprentice"] = /obj/item/clothing/under/Heph_Apprentice
    hephaest["Hephaestus Liaison"] = /obj/item/clothing/under/Heph_Liaison
    hephaest["Hephaestus Librarian"] = /obj/item/clothing/under/Heph_Librarian
    gear_tweaks += new/datum/gear_tweak/path(hephaest)
    allowed_branches = list(/datum/mil_branch/contractor)

/// Zeng-Hu ///

/datum/gear/uniform/ZengHu_Clothing
	display_name = "Zeng-hu uniform selection"
	path = /obj/item/clothing/under

/datum/gear/uniform/ZengHu_Clothing/New()
    ..()
    var/zenghu = list()
    zenghu["Zeng-Hu Physician"] = /obj/item/clothing/under/ZengHu_Phys
    zenghu["Zeng-Hu Surgeon"] = /obj/item/clothing/under/ZengHu_Surgeon
    zenghu["Zeng-Hu Chemist"] = /obj/item/clothing/under/ZengHu_Chemist
    zenghu["Zeng-Hu Psychologist"] = /obj/item/clothing/under/ZengHu_Psych
    zenghu["Zeng-Hu Intern"] = /obj/item/clothing/under/ZengHu_Intern
    zenghu["Zeng-Hu EMT"] = /obj/item/clothing/under/ZengHu_Emt
    zenghu["Zeng-Hu Liaison"] = /obj/item/clothing/under/ZengHu_Liaison
    zenghu["Zeng-Hu Librarian"] = /obj/item/clothing/under/ZengHu_Librarian
    zenghu["Zeng-Hu Scientist"] = /obj/item/clothing/under/ZengHu_Scientist
    zenghu["Zeng-Hu Xenoarchaeologists"] = /obj/item/clothing/under/ZengHu_Xenoarch
    zenghu["Zeng-Hu Xenobiologists"] = /obj/item/clothing/under/ZengHu_Xenob
    zenghu["Zeng-Hu Assistants"] = /obj/item/clothing/under/ZengHu_Assistant
    gear_tweaks += new/datum/gear_tweak/path(zenghu)
    allowed_branches = list(/datum/mil_branch/contractor)

/// Other ///

/datum/gear/uniform/sweater
    display_name = "striped sweater"
    path = /obj/item/clothing/under/sweater
