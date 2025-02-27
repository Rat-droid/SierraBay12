
/datum/design/item/encryptionkey/binary
	name = "binary"
	desc = "Allows for deciphering the binary channel on-the-fly."
	id = "binaryencrypt"
	req_tech = list(TECH_ESOTERIC = 2)
	materials = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 300)
	build_path = /obj/item/device/encryptionkey/binary
	sort_string = "VASAA"
	category = list("Misc")

/datum/design/item/camouflage/chameleon
	name = "holographic equipment kit"
	desc = "A kit of dangerous, high-tech equipment with changeable looks."
	id = "chameleon"
	req_tech = list(TECH_ESOTERIC = 2)
	materials = list(MATERIAL_STEEL = 500, MATERIAL_ALUMINIUM = 500, MATERIAL_PLASTIC = 500)
	build_path = /obj/item/storage/backpack/chameleon/sydie_kit
	sort_string = "VASBA"
	category = list("Misc")

/datum/design/item/advmop
	name = "Advanced Mop"
	desc = "An upgraded mop with a large internal capacity for holding water or other cleaning chemicals."
	id = "advmop"
	req_tech = list(TECH_ENGINEERING = 4, TECH_MATERIAL = 4, TECH_POWER = 3)
	materials = list(MATERIAL_ALUMINIUM = 2500, MATERIAL_STEEL = 500, MATERIAL_PLASTIC = 200)
	build_path = /obj/item/mop/advanced
	category = list("Misc")

/datum/design/blutrash
	name = "Trashbag of Holding"
	desc = "An advanced trash bag with bluespace properties; capable of holding a plethora of garbage."
	id = "blutrash"
	req_tech = list(TECH_BLUESPACE = 5, TECH_MATERIAL = 6)
	materials = list(MATERIAL_PLASTIC = 5000, MATERIAL_GOLD = 1500, MATERIAL_URANIUM = 250, MATERIAL_PHORON = 1500)
	build_path = /obj/item/storage/bag/trash/bluespace
	category = list("Misc")

/datum/design/item/holosign
	name = "Holographic Sign Projector"
	desc = "A holograpic projector used to project various warning signs."
	id = "holosign"
	req_tech = list(TECH_ENGINEERING = 5, TECH_BLUESPACE = 4, TECH_POWER = 4)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_GLASS = 1000)
	build_path = /obj/item/holosign_creator
	category = list("Misc")

/datum/design/item/party
	name = "Uncertified module: PRTY"
	desc = "Schematics for a robotic module, scraped from seedy parts of the net. Who knows what it does."
	id = "borg_party_module"
	req_tech = list(TECH_DATA = 2, TECH_ESOTERIC = 2)
	build_type = MECHFAB
	materials = list(MATERIAL_STEEL = 7500, MATERIAL_ALUMINIUM = 5000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/borg/upgrade/uncertified/party
	category = "Cyborg Upgrade Modules"
	category = list("Robot Upgrade")

/datum/design/item/plant_scanner
	name = "Plant Analyzer"
	desc = "A hand-held botanical scanner used to analyze plants."
	id = "plant_scanner"
	req_tech = list(TECH_MAGNET = 2, TECH_BIO = 2)
	materials = list(MATERIAL_STEEL = 200, MATERIAL_GLASS = 100, MATERIAL_PLASTIC = 150)
	build_path = /obj/item/device/scanner/plant
	category = list("Misc")
