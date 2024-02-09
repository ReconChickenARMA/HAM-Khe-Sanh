/*
	Author: CVO - Mr. Zorn

	Description:
		Defines Equipment


	Returns:
		<>

	Examples:
*/


/*=================================================*
	CVO_ARSENAL_DEFINE
*=================================================*

Here, you define the Available Equipment for the CVO Arsenal
It is seperated in 3 Parts

##################
1. BASE KIT - This is Available for Everyone
##################

Variable Name: CVO_A_BASE = [];

For easier reading it is suggested to compartmentalise
and append the individual Groups to CVO_A_BASE



##################
### 2. ROLE KIT - This is dependent on the Players Role.
##################

Traits like "Medic" or "Engineer" are automatically detected,
meaning manually giving a player the medic or doctor trait isnt necessary.

##################
3. Personal KIT - Add Items to individual players based on their UID(steam64)
##################

This is based on Code blocks to allow for checks.

##################

BASE KIT gets defined once in the beginning, as it will never change during during mission.

ROLE KIT gets updated each time the arsenal opens as Roles and Traits might change mid-mission (Ad-hoc Medic)
PLAYER KIT gets updated each time the arsenal opens as it CAN be dependend on other Roles and Traits as well.


##################


*=================================================*/  


if (!hasInterface) exitWith {};
diag_log ("[CVO] [Arsenal_Define] - start");


// #####################################################
// ###### DEFINE ARSENAL BOXES HERE - objects that give accesss to the CVO Arsenal
// #####################################################
// ###### Ether Define the CVO_Arsenal_Boxes directly via array or by putting all boxes in one layer called "CVO_ARSENAL_BOXES"
// #####################################################

CVO_Arsenal_boxes = [];

CVO_arsenal_boxes append [
	cvo_arsenal_1,
	cvo_arsenal_2,
	cvo_arsenal_3,
	cvo_arsenal_4,
	cvo_arsenal_5,
	cvo_arsenal_6,
	cvo_arsenal_7,
	cvo_arsenal_8,
	cvo_arsenal_9,
	cvo_arsenal_10,
	cvo_arsenal_11
];


/*private _layerArray = getMissionLayerEntities "cvo_arsenal_boxes";
if (!(_layerArray isEqualTo [])) then {CVO_Arsenal_boxes append getMissionLayerEntities "cvo_arsenal_boxes" # 0;};*/


// #####################################################
// ###### DEFINE BASE KIT HERE - AVAILABLE FOR EVERYONE
// #####################################################

CVO_A_BASE = [];

// ###### Baseline Equipment ###### 
// The Following can be mostly left as default

if (CVO_A_modLoaded_GreenMag) then {

		CVO_A_BASE append [
			"greenmag_ammo_556x45_basic_60Rnd",
			"greenmag_ammo_556x45_basic_30Rnd",

			"greenmag_ammo_762x51_basic_60Rnd",
			"greenmag_ammo_762x51_basic_30Rnd",

			"greenmag_ammo_545x39_basic_60Rnd",
			"greenmag_ammo_545x39_basic_30Rnd",

			"greenmag_ammo_762x39_basic_60Rnd",
			"greenmag_ammo_762x39_basic_30Rnd",
			
			"greenmag_ammo_9x19_basic_60Rnd",
			"greenmag_ammo_9x19_basic_30Rnd",
			
			"greenmag_ammo_762x54_basic_60Rnd",
			"greenmag_ammo_762x54_basic_30Rnd",

			"greenmag_item_speedloader"
		];
	diag_log "[CVO] [ARSENAL_DEFINE] - GreenMag added";
};


// Medical 
CVO_A_BASE append [
	"ACE_packingBandage",
	"ACE_fieldDressing",
	"ACE_tourniquet", 
	"ACE_splint",
	"ACE_morphine",
	"ACE_epinephrine", 
	"ACE_salineIV", 
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_bodyBag"];

// Tools & Equipment
CVO_A_BASE append [
	"ChemicalDetector_01_watch_F",

	"immersion_pops_poppack",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"immersion_cigs_cigar0",
	"immersion_cigs_cigar0_nv",

	"ACE_Humanitarian_Ration",

	"ACE_MapTools",
	"ace_marker_flags_yellow",
	"ace_marker_flags_red",
	"ace_marker_flags_green",
	"ace_marker_flags_blue",

	"ACE_EntrenchingTool",
	"ACE_EarPlugs",

	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",

	"ACE_DAGR",
	"ACE_CableTie",
	"ACE_Chemlight_Shield",
	"acex_intelitems_notepad",
	"ACE_Flashlight_KSF1",

	"vn_prop_drink_01",
	"vn_prop_drink_02",
	"vn_prop_drink_06",
	
	"FISH_Cream_Kit_Tropical",

	"tsp_paperclip",

	"vn_b_item_watch",
	"ItemCompass",
	"vn_b_item_compass_sog"];

// Binoculars
CVO_A_BASE append [
	"Old_Camera_HUD",
	"Old_Camera",
	"Old_Camera_Color_HUD",
	"Old_Camera_Color",
	"vn_m19_binocs_grn",
	"vn_m19_binocs_grey",
	"vn_mk21_binocs",
	"vn_camera_01",
	"vn_anpvs2_binoc"];

// NVGs
CVO_A_BASE append [

];


// Rappeling Rope 
CVO_A_BASE append [
	//"AUR_Rappel_Rope_70",
	//"AUR_Rappel_Rope_50",
	//"AUR_Rappel_Rope_30",
	"AUR_Rappel_Rope_20",
	"AUR_Rappel_Rope_10",
	"AUR_Rappel_Gear"];

// Radios
CVO_A_BASE append  ["vn_b_item_radio_urc10"];

// ###### Wearables ###### 

// Uniforms 
CVO_A_BASE append [
	"vn_b_uniform_macv_01_02",
	"vn_b_uniform_sas_01_06",
	"vn_b_uniform_sas_02_06",
	"vn_b_uniform_sas_03_06",
	"vn_b_uniform_macv_02_02",
	"vn_b_uniform_macv_03_02",
	"vn_b_uniform_macv_04_02",
	"vn_b_uniform_macv_05_02",
	"vn_b_uniform_macv_06_02",
	""];

// Vests
CVO_A_BASE append [
	"vn_b_vest_sas_02",
	"vn_b_vest_sas_03",
	"vn_b_vest_sas_04",
	"vn_b_vest_sas_01"
];

// Backpacks
CVO_A_BASE append [
	"vn_b_pack_trp_02",
	"vn_b_pack_trp_01",
	"vn_b_pack_trp_03",
	"vn_b_pack_01",
	"vn_b_pack_04",
	"vn_b_pack_02",
	"vn_b_pack_05"];

// Headgear
CVO_A_BASE append [
	"vn_b_boonie_08_02",
	"vn_b_boonie_08_01",
	"vn_b_boonie_07_02",
	"vn_b_boonie_07_01",
	"vn_b_boonie_06_02",
	"vn_b_boonie_06_01",
	"vn_b_bandana_03",
	"vn_b_bandana_06",
	"vn_b_bandana_08",
	"vn_b_bandana_01",
	"vn_b_bandana_04",
	"vn_b_bandana_05",
	"vn_b_bandana_02",
	"vn_b_boonie_02_03",
	"vn_b_boonie_02_06",
	"vn_b_boonie_02_08",
	"vn_b_boonie_02_01",
	"vn_b_boonie_02_09",
	"vn_b_boonie_02_04",
	"vn_b_boonie_02_05",
	"vn_b_boonie_02_02",
	"vn_b_boonie_03_03",
	"vn_b_boonie_03_06",
	"vn_b_boonie_03_08",
	"vn_b_boonie_03_01",
	"vn_b_boonie_03_09",
	"vn_b_boonie_03_04",
	"vn_b_boonie_03_05",
	"vn_b_boonie_03_02",
	"vn_b_boonie_04_03",
	"vn_b_boonie_04_06",
	"vn_b_boonie_04_08",
	"vn_b_boonie_04_01",
	"vn_b_boonie_04_09",
	"vn_b_boonie_04_04",
	"vn_b_boonie_04_05",
	"vn_b_boonie_04_02",
	"vn_b_boonie_05_03",
	"vn_b_boonie_05_06",
	"vn_b_boonie_05_08",
	"vn_b_boonie_05_01",
	"vn_b_boonie_05_09",
	"vn_b_boonie_05_04",
	"vn_b_boonie_05_05",
	"vn_b_boonie_05_02",
	"vn_b_boonie_01_03",
	"vn_b_boonie_01_06",
	"vn_b_boonie_01_08",
	"vn_b_boonie_01_01",
	"vn_b_boonie_01_09",
	"vn_b_boonie_01_04",
	"vn_b_boonie_01_05",
	"vn_b_boonie_01_02",
	"vn_b_headband_03",
	"vn_c_headband_04",
	"vn_c_headband_03",
	"vn_b_headband_05",
	"vn_b_headband_08",
	"vn_b_headband_01",
	"vn_c_headband_02",
	"vn_c_headband_01",
	"vn_b_headband_04",
	"vn_b_headband_02",
	"vn_i_helmet_m1_02_01",
	"vn_i_helmet_m1_03_01",
	"vn_b_helmet_m1_01_01",
	"vn_b_helmet_m1_14_01",
	"vn_b_helmet_m1_15_01",
	"vn_b_helmet_m1_16_01",
	"vn_b_helmet_m1_18_01",
	"vn_b_helmet_m1_19_01",
	"vn_b_helmet_m1_02_01",
	"vn_b_helmet_m1_20_01",
	"vn_b_helmet_m1_03_01",
	"vn_b_helmet_m1_05_01",
	"vn_b_helmet_m1_06_01",
	"vn_b_helmet_m1_07_01",
	"vn_b_helmet_m1_09_01",
	"vn_b_helmet_m1_04_01",
	"vn_b_helmet_m1_17_01",
	"vn_b_helmet_m1_08_01",
	"vn_b_helmet_m1_10_01",
	"vn_b_helmet_m1_11_01"];

// Facewear
CVO_A_BASE append [
	"vn_b_aviator",
	"vn_b_bandana_a",
	"vn_o_bandana_b",
	"vn_o_bandana_g",
	"vn_b_acc_m17_01",
	"vn_b_acc_m17_02",
	"vn_b_acc_goggles_01",
	"immersion_pops_pop0",
	"murshun_cigs_cig0",
	"immersion_cigs_cigar0",
	"vn_o_acc_goggles_02",
	"vn_o_poncho_01_01",
	"vn_b_scarf_01_03",
	"vn_o_scarf_01_04",
	"vn_o_scarf_01_03",
	"vn_o_scarf_01_02",
	"vn_b_scarf_01_01",
	"vn_o_scarf_01_01",
	"vn_b_acc_rag_01",
	"vn_b_acc_rag_02",
	"vn_b_spectacles",
	"vn_g_spectacles_02",
	"vn_g_spectacles_01",
	"vn_b_squares",
	"vn_b_squares_tinted",
	"vn_g_glasses_01",
	"vn_b_spectacles_tinted",
	"vn_b_acc_towel_01",
	"vn_b_acc_towel_02"];

// ###### WEAPONS - MAIN ###### 

// Rifles
CVO_A_BASE append  [
	//XM1 Series Rifles
	"vn_xm16e1",	
	"vn_xm177e1",
	"vn_xm177e1_camo",
	"vn_xm177",
	"vn_xm177_camo",
	"vn_xm177_fg",
	"vn_xm177_short",
	"vn_xm177_stock",
	"vn_xm177_stock_camo",

	//M16/M4/XM1 magazines
	"vn_m16_20_mag",
	"vn_m16_40_mag",
	"vn_m16_20_t_mag",
	"vn_m16_40_t_mag",
	"vn_m16_30_mag",
	"vn_m16_30_t_mag",

	//L1A1 Variants
	"vn_l1a1_01",
	"vn_l1a1_01_camo",	
	"vn_l1a1_02",
	"vn_l1a1_02_camo",	
	"vn_l1a1_03",
	"vn_l1a1_03_camo",	

	//L1A1 Ammo
	"vn_l1a1_10_mag",
	"vn_l1a1_10_t_mag",
	"vn_l1a1_20_mag",
	"vn_l1a1_20_t_mag",
	"vn_l1a1_30_mag",
	"vn_l1a1_30_t_mag",
	"vn_l1a1_30_02_mag",
	"vn_l1a1_30_02_mag",
	
	//M16
	"vn_m16",
	"vn_m16_camo",	

	//AK variants
	"vn_ak_01",
	"vn_kbkg",	
	"vn_type56",

	//AK ammo 
	"vn_kbkg_mag",
	"vn_kbkg_t_mag",
	"vn_type56_mag",
	"vn_type56_t_mag",
	
	//SMGs 
	"vn_f1_smg",
	"vn_k50m",
	"vn_l2a3",
	"vn_l2a3_f",
	"vn_l34a1",
	"vn_l34a1_f",
	"vn_m45",
	"vn_m45_camo",
	"vn_m45_fold",
	"vn_m1928_tommy",
	"vn_m1928a1_tommy",
	"vn_m1a1_tommy",
	"vn_m1a1_tommy_so",
	"vn_m3a1",
	"vn_mat49",
	"vn_mat49_f",
	"vn_mc10",
	"vn_mp40",
	"vn_mpu",
	"vn_pps43",
	"vn_pps52",
	"vn_ppsh41",
	"vn_sten",
	"vn_type64_smg",
	"vn_type64_f_smg",
	"vn_vz61",
	//SMG Ammo 
	"vn_f1_smg_mag",
	"vn_f1_smg_t_mag",
	"vn_ppsh41_35_mag",
	"vn_ppsh41_35_t_mag",
	"vn_ppsh41_71_mag",
	"vn_ppsh41_71_t_mag",
	"vn_m45_mag",
	"vn_m45_t_mag",
	"vn_m1a1_20_mag",
	"vn_m1a1_20_t_mag",
	"vn_m1a1_30_mag",
	"vn_m1a1_30_t_mag",
	"vn_m1928_mag",
	"vn_m1928_t_mag",
	"vn_m3a1_mag",
	"vn_m3a1_t_mag",
	"vn_mat49_mag",
	"vn_mat49_t_mag",
	"vn_mc10_mag",
	"vn_mc10_t_mag",
	"vn_mp40_mag",
	"vn_mp40_t_mag",
	"vn_mpu_mag",
	"vn_mpu_t_mag",
	"vn_pps_mag",
	"vn_pps_t_mag",
	"vn_sten_mag",
	"vn_sten_t_mag",
	"vn_type64_smg_mag",
	"vn_type64_smg_t_mag",
	"vn_vz61_mag",
	"vn_vz61_t_mag",
	//Battle Rifles
	"vn_m1carbine",
	"vn_m1_garand",
	"vn_m14",
	"vn_m14_camo",
	"vn_m14a1",
	"vn_m14a1_shorty",
	"vn_m1918",
	"vn_m2carbine",	
	"vn_m3carbine",
	"vn_m4956",
	"vn_sks",
	
	//BR ammo
	"vn_carbine_15_mag",
	"vn_carbine_15_t_mag",
	"vn_carbine_30_mag",
	"vn_carbine_30_t_mag",
	"vn_m1_garand_mag",
	"vn_m1_garand_t_mag",
	"vn_m14_10_mag",
	"vn_m14_10_t_mag",
	"vn_m14_mag",
	"vn_m14_t_mag",
	"vn_m1918_mag",
	"vn_m1918_t_mag",
	"vn_m4956_10_mag",
	"vn_m4956_10_t_mag",
	"vn_sks_mag",
	"vn_sks_t_mag",

	//Shotguns, Launchers, misc 
	"vn_izh54",
	"vn_izh54_shorty",
	"vn_m1897",
	
	//Misc Ammo 
	"vn_izh54_mag",
	"vn_izh54_so_mag",
	"vn_m1897_buck_mag",
	"vn_m1897_fl_mag",
	"vn_40mm_m576_buck_mag",
	"vn_m127_mag",
	"vn_m128_mag",
	"vn_m129_mag",
	"vn_40mm_m661_flare_g_mag",
	"vn_40mm_m662_flare_r_mag",
	"vn_40mm_m680_smoke_w_mag",
	"vn_40mm_m682_smoke_r_mag",
	"vn_40mm_m695_flare_y_mag",
	"vn_40mm_m715_smoke_g_mag",
	"vn_40mm_m716_smoke_y_mag",
	"vn_40mm_m717_smoke_p_mag",
	"vn_40mm_m583_flare_w_mag",

	//Attachments
	"vn_b_l1a1",
	"vn_bipod_m16",
	"vn_o_4x_m16",
	"vn_o_1x_sp_m16",	
	"vn_s_m45_camo",
	"vn_s_m45",
	"vn_b_carbine",
	"vn_b_m1_garand",	
	"vn_b_m14",
	"vn_s_m14",
	"vn_o_m14_front",
	"vn_s_m16",	
	"vn_bipod_m1918",
	"vn_b_m36",
	"vn_b_camo_m36",
	"vn_b_m38",
	"vn_s_m3a1",
	"vn_b_camo_m40a1",	
	"vn_b_m4956",	
	"vn_b_camo_m9130",
	"vn_s_mat49",
	"vn_s_mc10",
	"vn_s_mpu",	
	"vn_s_sten",
	"vn_b_m16"
	];

// Pistols
CVO_A_BASE append [
	"vn_p38s",
	"vn_m10_mag",
	"vn_hd",
	"vn_hd_mag",
	"vn_hp",
	"vn_izh54_p",
	"vn_m1895",
	"vn_m1895_mag",
	"vn_m1911",
	"vn_m1911_mag",
	"vn_mx991_m1911",
	"vn_m712",
	"vn_m712_mag",
	"vn_m79_p",
	"vn_mk22",
	"vn_mk22_mag",
	"vn_m10",
	"vn_p38",
	"vn_p38_mag",
	"vn_pm",
	"vn_fkb1_pm",
	"vn_pm_mag",
	"vn_ppk",
	"vn_ppk_mag",
	"vn_tt33",
	"vn_tt33_mag",
	"vn_type64",
	"vn_vz61_p",
	"vn_welrod",
	"vn_welrod_mag",
	"vn_hp_mag"
];

// Handgrenades and Throwables
CVO_A_BASE append   [
	"vn_molotov_grenade_mag",
	"vn_f1_grenade_mag",
	"vn_m14_grenade_mag",
	"vn_m14_early_grenade_mag",
	"vn_m34_grenade_mag",
	"vn_m61_grenade_mag",
	"vn_m67_grenade_mag",
	"vn_m7_grenade_mag",
	"vn_m18_green_mag",
	"vn_m18_purple_mag",
	"vn_m18_red_mag",
	"vn_m18_white_mag",
	"vn_m18_yellow_mag",
	"vn_v40_grenade_mag"
];

// Launchers
CVO_A_BASE append [
	"vn_m72",
	"vn_m72_mag",
	"vn_m20a1b1_01",
	"vn_m20a1b1_heat_mag",
	"vn_m20a1b1_wp_mag",
	"vn_rpg7",
	"vn_rpg7_mag",
	"vn_m127"
];

// CBRN KIT
CVO_A_BASE append [
	"U_B_CBRN_Suit_01_Wdl_F", 
	"vn_b_acc_m17_01"
	];


// #####################################################
// ###### DEFINE ROLE KIT HERE - AVAILABLE FOR SPECIFIC ROLES
// #####################################################

// CUSTOM ROLES
// Formatting Template: [  "KEY/ROLENAME",	[  ["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]

// #####################################################
// ## HOW TO DEFINE A UNIT AS A SPECIFIC ROLE:
// ## UNIT INIT FIELD IN THE EDITOR:
// this setVariable ["CVO_A_Roles",["Officer"]];
// ## Further Notes: 
// -- "Medic" and "Engineer" are autoDetected based on ACE Skill Level  
// #####################################################


CVO_A_HASH_RoleKit = createHashMapFromArray [
	["Medic", [[
		"vn_b_pack_m5_01",
		"vn_b_pack_lw_07",
		"vn_b_item_medikit_01",
		"ACE_quikclot", 
		"ACE_elasticBandage", 
		"ACE_adenosine", 
		"ACE_plasmaIV",
		"ACE_plasmaIV_500",
		"ACE_plasmaIV_250",
		"ACE_bloodIV",
		"ACE_bloodIV_500",
		"ACE_bloodIV_250",
		"ACE_surgicalKit",
		"ACE_suture"],
	{}]],
	["Engineer", [[
		// Tools and Detectors
		"ACE_VMM3","ACE_VMH3", 
		"ACE_wirecutter", "vn_b_item_toolkit", 
		"ACE_Fortify", "ACE_DefusalKit",
		
		// Explosives
		"vn_satchelcharge_02_throw_mag",
		"vn_mine_m14_mag",
		"vn_mine_m18_fuze10_mag",
		"vn_mine_m18_range_mag",
		"vn_mine_m18_mag",
		"vn_mine_m18_wp_fuze10_mag",
		"vn_mine_m18_wp_range_mag",
		"vn_mine_m18_wp_mag",
		"vn_mine_tripwire_m49_02_mag",
		"vn_mine_tripwire_m49_04_mag",
		"vn_mine_satchelcharge_02_mag"
], 
		{}]],
	["Officer", [[
		"H_Beret_blk",
		"vn_b_beret_01_05",
		"vn_b_beret_01_08",
		"vn_b_beret_01_06",
		"vn_o_item_radio_m252"],
		{}	
	]],
	["Machine Gunner", [[
	//Machine Guns 
		"vn_dp28",
		"vn_l4",
		"vn_m60",
		"vn_m60_shorty",
		"vn_m60_shorty_camo",
		"vn_m63a",
		"vn_m63a_cdo",
		"vn_m63a_lmg",
		"vn_mg42",
		"vn_pk",
		"vn_rpd",
		"vn_rpd_shorty_01",
		"vn_rpd_shorty",
		"vn_l2a1_01",
		//MG Ammo 
		"vn_dp28_mag",
		"vn_m60_100_mag",
		"vn_m63a_30_mag",
		"vn_m63a_30_t_mag",
		"vn_m63a_cdo",
		"vn_m63a_cdo",
		"vn_m63a_100_mag",
		"vn_m63a_100_t_mag",
		"vn_mg42_50_mag",
		"vn_mg42_50_t_mag",
		"vn_pk_100_mag",
		"vn_rpd_100_mag",
		"vn_rpd_125_mag",
		"vn_m63a_150_mag",
		"vn_m63a_150_t_mag"	],
		{}
	]],
	["Marksman", 
	[[
		//Sniper Rifles
		"vn_k98k",
		"vn_m1891",
		"vn_m1903_gl",
		"vn_m1903",
		"vn_m36",
		"vn_m38",
		"vn_m40a1",
		"vn_m40a1_camo",
		"vn_m9130",
		"vn_svd",
		"vn_vz54",
		//Sniper Rifle Ammo
		"vn_k98k_mag",
		"vn_k98k_t_mag",
		"vn_m38_mag",
		"vn_m38_t_mag",
		"vn_m1903_mag",
		"vn_m1903_t_mag",
		"vn_m36_mag",
		"vn_m36_t_mag",
		"vn_m38_mag",
		"vn_m38_t_mag",
		"vn_m40a1_mag",
		"vn_m40a1_t_mag",
		"vn_svd_mag",
		"vn_svd_t_mag",
		//Accessories 
		"vn_o_anpvs2_m16",
		"vn_o_1_5x_k98k",
		"vn_o_3x_l1a1",
		"vn_o_9x_m16",
		"vn_o_4x_svd",
		"vn_b_camo_vz54",
		"vn_o_3x_vz54",
		"vn_o_3x_m84",
		"vn_o_3x_sks",
		"vn_o_3x_m9130",
		"vn_o_4x_m4956",
		"vn_o_9x_m40a1",
		"vn_o_anpvs2_m40a1",
		"vn_o_8x_m1903",
		"vn_o_9x_m14",
		"vn_o_anpvs2_m14"],
	{}
	]],
	["Grenadier",[[
		//Grenade Launchers 
		"vn_xm16e1_xm148",
		"vn_xm177_m203",
		"vn_xm177_m203_camo",
		"vn_xm177_xm148",
		"vn_xm177_xm148_camo",
		"vn_kbkg_gl",
		"vn_l1a1_01_gl",
		"vn_l1a1_02_gl",
		"vn_l1a1_xm148",
		"vn_l1a1_xm148_camo",
		"vn_m16_m203_camo",
		"vn_m16_m203",
		"vn_m16_xm148",
		"vn_l34a1_xm148",
		"vn_m1carbine_gl",
		"vn_m1_garand_gl",
		"vn_m2carbine_gl",
		"vn_m4956_gl",
		"vn_sks_gl",
		"vn_m79",
		//GL Rounds 
		"vn_40mm_m381_he_mag",
		"vn_40mm_m397_ab_mag",
		"vn_40mm_m406_he_mag",
		"vn_40mm_m433_hedp_mag",
		"vn_40mm_m651_cs_mag",
		"vn_22mm_cs_mag",
		"vn_22mm_lume_mag",
		"vn_22mm_m17_frag_mag",
		"vn_22mm_m19_wp_mag",
		"vn_22mm_m1a2_frag_mag",
		"vn_22mm_m22_smoke_mag",
		"vn_22mm_m9_heat_mag",
		"vn_22mm_m61_frag_mag",
		"vn_22mm_n94_heat_mag",
		"vn_20mm_dgn_wp_mag",
		"vn_20mm_f1n60_frag_mag",
		"vn_20mm_kgn_frag_mag",
		"vn_20mm_pgn60_heat_mag"],
	{}
	]],
["RTO", [[
		"H_Beret_blk",
		"vn_b_beret_01_05",
		"vn_b_beret_01_08",
		"vn_b_beret_01_06",
		"vn_b_pack_trp_04_02",
		"vn_b_pack_03_02",
		"vn_b_pack_03",
		"vn_b_pack_trp_04"],
		{}	
	]],
];

// #####################################################
// ###### DEFINE PLAYER KIT HERE - Based on STEAM64 ID
// #####################################################

// Formatting Template: [  "STEAM64",	["PlayerName", "["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]


CVO_A_HASH_PlayerKit = createHashMapFromArray [
	["_SP_PLAYER_", 		["Editor Debug", 	["ACE_Banana"],		{systemChat "CVO_A_Playerkit test Successful - Banana Given"; 	["ACE_Banana"]}		]	],	
	["76561197970306509", 	["Zorn", 			[	"gm_pl_headgear_beret_blu",	"gm_ge_headgear_beret_un", "G_Spectacles_Tinted", "G_Balaclava_blk", "H_Beret_blk", "gm_flashlightp2_brk_akkhandguard_dino"],	{[]}	]],
	["76561198090236234", 	["Recon", 			[	"gm_flashlightp2_brk_akkhandguard_dino"				 ],	{[]}	]],
	["76561198147307775", 	["Clone", 			[	"gm_pl_headgear_beret_blu",	"gm_ge_headgear_beret_un"],	{[]}	]] 	
];

diag_log ("[CVO] [Arsenal_Define] - completed");
