/obj/item/clothing/under/HephTactical
    name = "Hephaestus tactical uniform"
    desc = "A high-performance uniform designed by Hephaestus Industries, built for tactical operations and elite missions."
    icon = 'mods/clothtest/icons/obj_under.dmi' // Путь к общему файлу иконок
    item_icons = list(slot_w_uniform_str= 'mods/clothtest/icons/onmob_under.dmi') // Путь к иконке для отображения на персонаже
    icon_state = "underglove"  // Стейт для отображения в инвентаре
    item_state = "underglove"  // Стейт для отображения в руках
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0) //it's security uniform's stats

/obj/item/clothing/under/sweater
	name = "striped sweater"
	desc = "A warm sweater with a subtle striped pattern."
	icon = 'mods/clothtest/icons/obj_under.dmi' // Путь к общему файлу иконок
	item_icons = list(slot_w_uniform_str= 'mods/clothtest/icons/onmob_under.dmi') // Путь к иконке для отображения на персонаже
	icon_state = "sweater"  // Стейт для отображения в инвентаре
	item_state = "sweater"  // Стейт для отображения в руках
	worn_state = "sweater"
