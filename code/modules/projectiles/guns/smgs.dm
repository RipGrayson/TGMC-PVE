/obj/item/weapon/gun/smg
	fire_sound = 'sound/weapons/guns/fire/smg_light.ogg'
	unload_sound = 'sound/weapons/guns/interact/smg_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/smg_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/smg_cocked.ogg'
	type_of_casings = "bullet"
	muzzleflash_iconstate = "muzzle_flash_light"
	load_method = MAGAZINE //codex
	force = 8
	w_class = WEIGHT_CLASS_BULKY
	wield_delay = 0.2 SECONDS
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/stock/t19stock,
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOBURST)
	gun_skill_category = GUN_SKILL_SMGS

	fire_delay = 0.08 SECONDS
	burst_amount = 3
	recoil_unwielded = 0.5
	akimbo_additional_delay = 0.1
	movement_acc_penalty_mult = 3

//-------------------------------------------------------
// MP-19 Machinepistol. It fits here more.

/obj/item/weapon/gun/smg/standard_machinepistol
	name = "\improper MP-19 machinepistol"
	desc = "The MP-19 is the TerraGov Marine Corps standard-issue machine pistol. It's known for it's low recoil and scatter when used one handed. It's usually carried by specialized troops who do not have the space to carry a much larger gun like medics and engineers. It uses 10x20mm caseless rounds."
	icon_state = "t19"
	item_state = "t19"
	caliber = CALIBER_10X20_CASELESS //codex
	max_shells = 30 //codex
	flags_equip_slot = ITEM_SLOT_BACK|ITEM_SLOT_BELT
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER|GUN_IS_ATTACHMENT
	type_of_casings = null
	default_ammo_type = /obj/item/ammo_magazine/smg/standard_machinepistol
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/standard_machinepistol,
		/obj/item/ammo_magazine/minigun_powerpack/adaptive_ammopack/belt,
		)
	wield_delay_mod	= 0.2 SECONDS
	slot = ATTACHMENT_SLOT_UNDER
	attach_delay = 3 SECONDS
	detach_delay = 3 SECONDS
	w_class = WEIGHT_CLASS_NORMAL
	placed_overlay_iconstate = "t19"
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/stock/t19stock,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/gyro,
		/obj/item/attachable/motiondetector,
	)

	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 19,"rail_x" = 9, "rail_y" = 21, "under_x" = 21, "under_y" = 15, "stock_x" = 24, "stock_y" = 10)

	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.9
	recoil_unwielded = 0
	scatter = 0
	fire_delay = 0.08 SECONDS
	scatter_unwielded = 4
	aim_slowdown = 0.15
	burst_amount = 5
	movement_acc_penalty_mult = 2
	akimbo_additional_delay = 0.14
	upper_akimbo_accuracy = 5
	lower_akimbo_accuracy = 3
/obj/item/weapon/gun/smg/standard_machinepistol/can_attach(obj/item/attaching_to, mob/attacher)
	if(!attachments_by_slot[ATTACHMENT_SLOT_RAIL])
		return TRUE
	to_chat(attacher, span_warning("You cannot attach [src] to [attaching_to] while [attachments_by_slot[ATTACHMENT_SLOT_RAIL]] occupies [src]'s rail slot."))
	return FALSE

/obj/item/weapon/gun/smg/standard_machinepistol/on_attach(obj/item/attached_to, mob/user)
	flags_gun_features |= GUN_WIELDED_STABLE_FIRING_ONLY|GUN_WIELDED_FIRING_ONLY
	return ..()

/obj/item/weapon/gun/smg/standard_machinepistol/on_detach(obj/item/attached_to, mob/user)
	flags_gun_features &= ~GUN_WIELDED_STABLE_FIRING_ONLY|GUN_WIELDED_FIRING_ONLY
	return ..()


/obj/item/weapon/gun/smg/standard_machinepistol/compact
	starting_attachment_types = list(/obj/item/attachable/reddot, /obj/item/attachable/compensator, /obj/item/attachable/lasersight)

/obj/item/weapon/gun/smg/standard_machinepistol/vgrip //cutest looking gun setup in the game
	starting_attachment_types = list(/obj/item/attachable/reddot, /obj/item/attachable/verticalgrip)

/obj/item/weapon/gun/smg/standard_machinepistol/scanner
	starting_attachment_types = list(/obj/item/attachable/motiondetector, /obj/item/attachable/compensator, /obj/item/attachable/lasersight)

//-------------------------------------------------------
// War is hell. Not glorious.

/obj/item/weapon/gun/smg/standard_smg
	name = "\improper SMG-90 submachinegun"
	desc = "The SMG-90 is the TerraGov Marine Corps standard issue SMG. Its known for it's compact size and ease of use inside the field. It's usually carried by troops who want a lightweight firearm to rush with. It uses 10x20mm caseless rounds."
	fire_sound = 'sound/weapons/guns/fire/t90.ogg'
	icon_state = "t90"
	item_state = "t90"
	caliber = CALIBER_10X20_CASELESS //codex
	max_shells = 50 //codex
	flags_equip_slot = ITEM_SLOT_BACK
	wield_delay = 0.2 SECONDS
	force = 20
	type_of_casings = null
	default_ammo_type = /obj/item/ammo_magazine/smg/standard_smg
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/standard_smg,
		/obj/item/ammo_magazine/minigun_powerpack/adaptive_ammopack/belt,
		)
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/motiondetector,
		/obj/item/attachable/buildasentry,
		/obj/item/attachable/shoulder_mount,
		/obj/item/weapon/gun/smg/standard_machinepistol,
		/obj/item/attachable/stock/t19stock,
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_AUTOMATIC)
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 17,"rail_x" = 9, "rail_y" = 20, "under_x" = 24, "under_y" = 14, "stock_x" = 24, "stock_y" = 16)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.12 SECONDS
	aim_speed_modifier = 0.55
	accuracy_mult = 1.05
	accuracy_mult_unwielded = 0.9
	scatter = 1
	fire_delay = 0.08 SECONDS
	scatter_unwielded = 8
	aim_slowdown = 0.2
	burst_amount = 0
	upper_akimbo_accuracy = 4
	lower_akimbo_accuracy = 2

	placed_overlay_iconstate = "t90"

/obj/item/weapon/gun/smg/standard_smg/breacher
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness)

/obj/item/weapon/gun/smg/standard_smg/nonstandard
	starting_attachment_types = list(/obj/item/attachable/reddot)

/obj/item/weapon/gun/smg/standard_smg/tactical
	starting_attachment_types = list(/obj/item/attachable/compensator, /obj/item/attachable/reddot, /obj/item/attachable/lasersight)

//-------------------------------------------------------
//M-25 SMG

/obj/item/weapon/gun/smg/m25
	name = "\improper SMG-25 submachinegun"
	desc = "The RivArms SMG-25 submachinegun, an update to a classic design. A light firearm capable of effective one-handed use that is ideal for close to medium range engagements. Its low recoil and balanced frame allow for a quick refire rate even when aiming down the sights. Uses 10x20mm rounds in a high capacity magazine."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "m25"
	item_state = "m25"
	caliber = CALIBER_10X20_CASELESS //codex
	max_shells = 60 //codex
	fire_sound = 'sound/weapons/guns/fire/mp5.ogg'
	unload_sound = 'sound/weapons/guns/interact/mp5_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/mp5_reload.ogg'
	flags_equip_slot = ITEM_SLOT_BACK
	actions_types = list(/datum/action/item_action/aim_mode)
	type_of_casings = null
	default_ammo_type = /obj/item/ammo_magazine/smg/m25
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/m25,
		/obj/item/ammo_magazine/smg/m25/ap,
		/obj/item/ammo_magazine/smg/m25/extended,
		/obj/item/ammo_magazine/minigun_powerpack/adaptive_ammopack/belt,
	)
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/gyro,
		/obj/item/attachable/stock/t19stock,
		/obj/item/weapon/gun/grenade_launcher/underslung, //MY. ASS.IS. HEAVY!
	)

	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 17,"rail_x" = 14, "rail_y" = 20, "under_x" = 23, "under_y" = 14, "stock_x" = 24, "stock_y" = 16)

	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.95
	scatter = 4
	fire_delay = 0.08 SECONDS
	aim_fire_delay = 0.08 SECONDS
	scatter_unwielded = 10
	aim_slowdown = 0.15
	burst_amount = 3

/obj/item/weapon/gun/smg/m25/holstered
	starting_attachment_types = list(/obj/item/attachable/reddot, /obj/item/attachable/compensator, /obj/item/attachable/gyro)

/obj/item/weapon/gun/smg/m25/magharness
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness, /obj/item/attachable/compensator, /obj/item/attachable/gyro)

/obj/item/weapon/gun/smg/m25/elite
	name = "\improper SMG-25B2 Commando submachinegun"
	desc = "The RivArms SMG-25 submachinegun, B2 variant. Features a lighter composite body, hevy barrel, and integrated barrel charger. This reliable weapon typically comes with armor piercing 10x20mm rounds and is standard issue for elite troops."
	icon_state = "m25b2"
	item_state = "m25b2"
	fire_sound = 'sound/weapons/guns/fire/smg_heavy.ogg'
	default_ammo_type = /obj/item/ammo_magazine/smg/m25/ap
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/burstfire_assembly,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/gyro,
		/obj/item/attachable/stock/t19stock,
		/obj/item/attachable/stock/t19stock,
	)

	flags_item_map_variant = NONE

	burst_amount = 4
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 1
	damage_mult = 2
	aim_slowdown = 0
	scatter = -4

/obj/item/weapon/gun/smg/m25/elite/pmc
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness,/obj/item/attachable/stock/t19stock,)

/obj/item/weapon/gun/smg/m25/elite/suppressed
	icon_state = "m25"
	item_state = "m25"
	starting_attachment_types = list(/obj/item/attachable/suppressor, /obj/item/attachable/magnetic_harness) //Tacticool

//-------------------------------------------------------
//SMG-27, based on the grease gun

/obj/item/weapon/gun/smg/mp7
	name = "\improper SMG-27 submachinegun"
	desc = "An archaic design going back hundreds of years, the SMG-27 was common in its day. Today it sees limited use as cheap computer-printed replicas or family heirlooms, though it somehow got into the hands of colonial rebels."
	icon_state = "mp7"
	item_state = "mp7"
	caliber = CALIBER_46X30 //codex
	max_shells = 30 //codex
	fire_sound = 'sound/weapons/guns/fire/mp7.ogg'
	default_ammo_type = /obj/item/ammo_magazine/smg/mp7
	allowed_ammo_types = list(/obj/item/ammo_magazine/smg/mp7)
	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/scope,
		/obj/item/attachable/stock/t19stock,
	)

	attachable_offset = list("muzzle_x" = 33, "muzzle_y" = 18,"rail_x" = 12, "rail_y" = 21, "under_x" = 28, "under_y" = 17, "stock_x" = 28, "stock_y" = 17)

	fire_delay = 0.08 SECONDS
	burst_delay = 0.12 SECONDS
	burst_amount = 4
	accuracy_mult_unwielded = 0.9
	scatter = 5
	scatter_unwielded = 10
	damage_mult = 1.2

//-------------------------------------------------------
//SKORPION //Based on the same thing. (chezk gun for evil people)

/obj/item/weapon/gun/smg/skorpion
	name = "\improper CZ-81 submachinegun"
	desc = "A robust, 20th century firearm that's a combination of pistol and submachinegun. Fires .32ACP caliber rounds from a 20 round magazine."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "skorpion"
	item_state = "skorpion"
	caliber = CALIBER_32ACP //codex
	max_shells = 20 //codex
	flags_equip_slot = ITEM_SLOT_BELT
	fire_sound = 'sound/weapons/guns/fire/skorpion.ogg'
	unload_sound = 'sound/weapons/guns/interact/skorpion_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/skorpion_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/skorpion_cocked.ogg'
	default_ammo_type = /obj/item/ammo_magazine/smg/skorpion
	allowed_ammo_types = list(/obj/item/ammo_magazine/smg/skorpion)
	attachable_offset = list("muzzle_x" = 29, "muzzle_y" = 21,"rail_x" = 10, "rail_y" = 24, "under_x" = 23, "under_y" = 15, "stock_x" = 23, "stock_y" = 15)

	burst_delay = 0.1 SECONDS
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.9
	scatter = 2
	scatter_unwielded = 6
	fire_delay = 0.08 SECONDS
	aim_slowdown = 0.3
	wield_delay = 0.2 SECONDS

/obj/item/weapon/gun/smg/skorpion/mag_harness
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness)

//-------------------------------------------------------
//PPSH //Based on the PPSh-41.

/obj/item/weapon/gun/smg/ppsh
	name = "\improper PPSh-17b submachinegun"
	desc = "The PPSh-17b or \"Papasha\" is replica of a 20th century USSR model submachinegun that many terrorist organizations had copied all over the years. Despite its small-hitting firepower, its reliablity, extreme longevity and high firepower rate proves useful for the hands of the user."
	icon = 'icons/Marine/gun64.dmi'
	icon_state = "ppsh"
	item_state = "ppsh"
	caliber = CALIBER_762X25 //codex
	max_shells = 42 //codex
	flags_equip_slot = ITEM_SLOT_BACK
	fire_sound = 'sound/weapons/guns/fire/ppsh.ogg'
	dry_fire_sound = 'sound/weapons/guns/fire/ppsh_empty.ogg'
	unload_sound = 'sound/weapons/guns/interact/ppsh_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/ppsh_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ppsh_cocked.ogg'
	default_ammo_type = /obj/item/ammo_magazine/smg/ppsh
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/ppsh,
		/obj/item/ammo_magazine/smg/ppsh/extended,
	)
	attachable_allowed = list(
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/suppressor,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/motiondetector,
		/obj/item/attachable/reddot,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/stock/irremoveable/ppsh,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/angledgrip,
		/obj/item/attachable/gyro,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/bipod,
		/obj/item/attachable/stock/t19stock
	)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_AMMO_COUNTER
	attachable_offset = list("muzzle_x" = 38, "muzzle_y" = 19,"rail_x" = 13, "rail_y" = 21, "under_x" = 26, "under_y" = 15, "stock_x" = 19, "stock_y" = 13)
	actions_types = list(/datum/action/item_action/aim_mode)
	aim_fire_delay = 0.15 SECONDS
	aim_speed_modifier = 2.5

	starting_attachment_types = list(
//		/obj/item/attachable/stock/irremoveable/ppsh,
	)

	fire_delay = 0.08 SECONDS
	burst_amount = 6
	accuracy_mult = 1.05
	accuracy_mult_unwielded = 0.8
	scatter = 5
	scatter_unwielded = 15
	aim_slowdown = 0.3
	wield_delay = 0.2 SECONDS


//-------------------------------------------------------
//GENERIC UZI //Based on the uzi submachinegun, of course.

/obj/item/weapon/gun/smg/uzi
	name = "\improper SMG-2 submachinegun"
	desc = "A cheap, reliable design and manufacture make this ubiquitous submachinegun useful despite the age. Put the fire selector to full auto for maximum firepower. Use two if you really want to go ham."
	icon_state = "uzi"
	item_state = "uzi"
	caliber = CALIBER_9X19 //codex
	max_shells = 32 //codex
	fire_sound = 'sound/weapons/guns/fire/uzi.ogg'
	unload_sound = 'sound/weapons/guns/interact/uzi_unload.ogg'
	reload_sound = 'sound/weapons/guns/interact/uzi_reload.ogg'
	cocked_sound = 'sound/weapons/guns/interact/uzi_cocked.ogg'
	default_ammo_type = /obj/item/ammo_magazine/smg/uzi
	allowed_ammo_types = list(/obj/item/ammo_magazine/smg/uzi, /obj/item/ammo_magazine/smg/uzi/extended)
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 20,"rail_x" = 11, "rail_y" = 27, "under_x" = 22, "under_y" = 16, "stock_x" = 22, "stock_y" = 16)

	fire_delay = 0.08 SECONDS
	burst_amount = 4
	accuracy_mult_unwielded = 0.9
	scatter = 0
	scatter_unwielded = 4
	aim_slowdown = 0.15
	wield_delay = 0.2 SECONDS

/obj/item/weapon/gun/smg/uzi/mag_harness
	default_ammo_type = /obj/item/ammo_magazine/smg/uzi/extended
	starting_attachment_types = list(/obj/item/attachable/magnetic_harness)

//-------------------------------------------------------
// SOM SMG

/obj/item/weapon/gun/smg/som
	name = "\improper V-21 submachinegun"
	desc = "The V-21 is the principal submachinegun used by the Sons of Mars, designed to be used effectively one or two handed with  a variable rate of fire. When fired at full speed it's performance is severely degraded unless used properly wielded, while the lower rate of fire can still be effectively used one handed when necessary. It uses 10x20mm caseless rounds."
	icon_state = "v21"
	icon = 'icons/Marine/gun64.dmi'
	item_state = "v21"
	caliber = CALIBER_10X20_CASELESS
	max_shells = 50
	flags_equip_slot = ITEM_SLOT_BACK
	type_of_casings = null
	default_ammo_type = /obj/item/ammo_magazine/smg/som
	allowed_ammo_types = list(
		/obj/item/ammo_magazine/smg/som,
		/obj/item/ammo_magazine/smg/som/ap,
		/obj/item/ammo_magazine/smg/som/incendiary,
		/obj/item/ammo_magazine/smg/som/extended,
		/obj/item/ammo_magazine/minigun_powerpack/adaptive_ammopack/belt
		)
	fire_sound = 'sound/weapons/guns/fire/vector_fire.ogg'
	gun_firemode_list = list(GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST) //full auto, fuller auto

	attachable_allowed = list(
		/obj/item/attachable/suppressor,
		/obj/item/attachable/reddot,
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/lasersight,
		/obj/item/attachable/flashlight,
		/obj/item/attachable/extended_barrel,
		/obj/item/attachable/heavy_barrel,
		/obj/item/attachable/scope/mini,
		/obj/item/attachable/magnetic_harness,
		/obj/item/attachable/motiondetector,
		/obj/item/attachable/stock/t19stock,
	)

	attachable_offset = list("muzzle_x" = 38, "muzzle_y" = 20,"rail_x" = 13, "rail_y" = 22, "under_x" = 31, "under_y" = 15, "stock_x" = 24, "stock_y" = 10)

	fire_delay = 0.08 SECONDS
	aim_slowdown = 0.15
	wield_delay = 0.2 SECONDS

	accuracy_mult = 1.05
	accuracy_mult_unwielded = 0.9

	recoil = 0
	recoil_unwielded = 0.5

	scatter = 2
	scatter_unwielded = 8

	burst_amount = 3
	burst_delay = 0.1 SECONDS
	extra_delay = 0.1 SECONDS
	autoburst_delay = 0.1 SECONDS //this makes it fuller auto (Note from PVE, this is HILARIOUSLY stupid.)
	burst_accuracy_mult = 0.7
	burst_scatter_mult = 0.8

	akimbo_additional_delay = 0.1
	upper_akimbo_accuracy = 5
	lower_akimbo_accuracy = 3

/obj/item/weapon/gun/smg/som/scout
	starting_attachment_types = list(
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/motiondetector,
	)

/obj/item/weapon/gun/smg/som/one_handed
	starting_attachment_types = list(
		/obj/item/attachable/lasersight,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
	)

/obj/item/weapon/gun/smg/som/veteran
	default_ammo_type = /obj/item/ammo_magazine/smg/som/ap
	starting_attachment_types = list(
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/reddot,
	)

/obj/item/weapon/gun/smg/som/support
	starting_attachment_types = list(
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/compensator,
		/obj/item/attachable/magnetic_harness,
	)

/obj/item/weapon/gun/smg/som/basic
	starting_attachment_types = list(
		/obj/item/attachable/verticalgrip,
		/obj/item/attachable/magnetic_harness,
	)
