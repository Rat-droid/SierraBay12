//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:31

var/global/list/priority_air_alarms = list()
var/global/list/minor_air_alarms = list()


/obj/machinery/computer/atmos_alert
	name = "atmospheric alert computer"
	desc = "Used to access the atmospheric sensors."
	icon_keyboard = "atmos_key"
	icon_screen = "alert:0"
	light_color = "#e6ffff"
	machine_name = "atmospheric alert console"
	machine_desc = "A hub for local air sensor systems, displaying a list of atmospheric alarms in the region."

/obj/machinery/computer/atmos_alert/Initialize()
	. = ..()
	GLOB.atmosphere_alarm.register_alarm(src, TYPE_PROC_REF(/atom, update_icon))

/obj/machinery/computer/atmos_alert/Destroy()
	GLOB.atmosphere_alarm.unregister_alarm(src)
	. = ..()

/obj/machinery/computer/atmos_alert/interface_interact(user)
	ui_interact(user)
	return TRUE

/obj/machinery/computer/atmos_alert/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 1)
	var/data[0]
	var/major_alarms[0]
	var/minor_alarms[0]

	for(var/datum/alarm/alarm in GLOB.atmosphere_alarm.major_alarms(get_z(src)))
		major_alarms[LIST_PRE_INC(major_alarms)] = list("name" = sanitize(alarm.alarm_name()), "ref" = "\ref[alarm]")

	for(var/datum/alarm/alarm in GLOB.atmosphere_alarm.minor_alarms(get_z(src)))
		minor_alarms[LIST_PRE_INC(minor_alarms)] = list("name" = sanitize(alarm.alarm_name()), "ref" = "\ref[alarm]")

	data["priority_alarms"] = major_alarms
	data["minor_alarms"] = minor_alarms

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "atmos_alert.tmpl", src.name, 500, 500)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/computer/atmos_alert/on_update_icon()
	if(operable())
		if(GLOB.atmosphere_alarm.has_major_alarms(get_z(src)))
			icon_screen = "alert:2"
		else if (GLOB.atmosphere_alarm.has_minor_alarms(get_z(src)))
			icon_screen = "alert:1"
		else
			icon_screen = initial(icon_screen)
	..()

/obj/machinery/computer/atmos_alert/OnTopic(user, href_list)
	if(href_list["clear_alarm"])
		var/datum/alarm/alarm = locate(href_list["clear_alarm"]) in GLOB.atmosphere_alarm.alarms
		if(alarm)
			for(var/datum/alarm_source/alarm_source in alarm.sources)
				var/obj/machinery/alarm/air_alarm = alarm_source.source
				if(istype(air_alarm))
					var/list/new_ref = list("atmos_reset" = 1)
					air_alarm.Topic(air_alarm, new_ref, state = air_alarm_topic)
		return TOPIC_REFRESH


var/global/datum/topic_state/air_alarm_topic/air_alarm_topic = new()

/datum/topic_state/air_alarm_topic/href_list(mob/user)
	var/list/extra_href = list()
	extra_href["remote_connection"] = 1
	extra_href["remote_access"] = 1

	return extra_href
