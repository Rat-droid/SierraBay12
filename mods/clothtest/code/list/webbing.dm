/// Webbing

/datum/gear/storage/WebbingSelection
    display_name = "webbing, colour selection"
    path = /obj/item/clothing/accessory/storage
    flags = GEAR_HAS_COLOR_SELECTION


/datum/gear/storage/WebbingSelection/New()
    ..()
    var/webbing = list()
    webbing["Standard colored webbing"] = /obj/item/clothing/accessory/storage/webbing_g
    webbing["Vest harness"] = /obj/item/clothing/accessory/storage/vest_harness
    webbing["Vest harness pouches"] = /obj/item/clothing/accessory/storage/vest_harness_pouches
    webbing["Vest harness alt"] = /obj/item/clothing/accessory/storage/vest_harness_alt
    gear_tweaks += new/datum/gear_tweak/path(webbing)
    flags = GEAR_HAS_COLOR_SELECTION
