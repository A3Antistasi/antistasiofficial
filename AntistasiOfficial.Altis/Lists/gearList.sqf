private ["_aToS"];

vanillaWeapons = [
	"Rangefinder",
	"Laserdesignator",
	"srifle_DMR_01_F",
	"srifle_EBR_F",
	"srifle_GM6_F",
	"srifle_GM6_camo_F",
	"srifle_LRR_F",
	"srifle_LRR_camo_F",
	"LMG_Mk200_F",
	"LMG_Zafir_F",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_Mk20_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20C_F",
	"arifle_Mk20C_plain_F",
	"arifle_Mk20_GL_F",
	"arifle_Mk20_GL_plain_F",
	"arifle_MXC_F",
	"arifle_MX_F",
	"arifle_MX_GL_F",
	"arifle_MX_SW_F",
	"arifle_MXM_F",
	"arifle_MXC_Black_F",
	"arifle_MX_Black_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_SW_Black_F",
	"arifle_MXM_Black_F",
	"arifle_SDAR_F",
	"arifle_TRG21_F",
	"arifle_TRG20_F",
	"arifle_TRG21_GL_F",
	"SMG_01_F",
	"SMG_02_F",
	"srifle_DMR_04_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_02_F",
	"srifle_DMR_03_F",
	"srifle_DMR_06_camo_F",
	"srifle_dmr_04_f",
	"srifle_dmr_05_blk_f",
	"srifle_dmr_02_f",
	"srifle_dmr_03_f",
	"srifle_dmr_06_camo_f",
	"MMG_01_hex_F",
	"MMG_02_camo_F",
	"srifle_DMR_02_camo_F",
	"srifle_DMR_02_sniper_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_03_tan_F",
	"srifle_DMR_03_multicam_F",
	"srifle_DMR_03_woodland_F",
	"srifle_DMR_04_Tan_F",
	"srifle_DMR_05_hex_F",
	"srifle_DMR_05_tan_f",
	"srifle_DMR_06_olive_F",
	"MMG_01_tan_F",
	"MMG_02_black_F",
	"MMG_02_sand_F",
	"arifle_MX_khk_F",
	"arifle_MX_GL_khk_F",
	"arifle_MX_SW_khk_F",
	"arifle_MXC_khk_F",
	"arifle_MXM_khk_F",
	"srifle_LRR_tna_F",
	"srifle_GM6_ghex_F",
	"srifle_DMR_07_blk_F",
	"srifle_DMR_07_hex_F",
	"srifle_DMR_07_ghex_F",
	"LMG_03_F",
	"arifle_AK12_F",
	"arifle_AK12_GL_F",
	"arifle_AKM_F",
	"arifle_AKS_F",
	"arifle_ARX_blk_F",
	"arifle_ARX_ghex_F",
	"arifle_ARX_hex_F",
	"arifle_CTAR_blk_F",
	"arifle_CTAR_hex_F",
	"arifle_CTAR_ghex_F",
	"arifle_CTAR_GL_blk_F",
	"arifle_CTAR_GL_hex_F",
	"arifle_CTAR_GL_ghex_F",
	"arifle_CTARS_blk_F",
	"arifle_CTARS_hex_F",
	"arifle_CTARS_ghex_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_khk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_01_GL_khk_F",
	"arifle_SPAR_01_GL_snd_F",
	"arifle_SPAR_02_blk_F",
	"arifle_SPAR_02_khk_F",
	"arifle_SPAR_02_snd_F",
	"arifle_SPAR_03_blk_F",
	"arifle_SPAR_03_khk_F",
	"arifle_SPAR_03_snd_F",
	"SMG_05_F",
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_Pistol_heavy_02_F",
	"hgun_Rook40_F",
	"hgun_Pistol_Signal_F",
	"hgun_P07_khk_F",
	"hgun_Pistol_01_F",
	"launch_NLAW_F",
	"launch_RPG32_F",
	"launch_B_Titan_F",
	"launch_I_Titan_F",
	"launch_O_Titan_F",
	"launch_B_Titan_short_F",
	"launch_I_Titan_short_F",
	"launch_O_Titan_short_F",
	"launch_RPG32_ghex_F",
	"launch_RPG7_F",
	"launch_B_Titan_tna_F",
	"launch_B_Titan_short_tna_F",
	"launch_O_Titan_ghex_F",
	"launch_O_Titan_short_ghex_F",
	"hgun_PDW2000_F",
	"hgun_ACPC2_F"
];

vanillaMagazines = [
	"Default",
	"FakeMagazine",
	"FakeWeapon",
	"CA_Magazine",
	"VehicleMagazine",
	"CA_LauncherMagazine",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_green",
	"30Rnd_556x45_Stanag_red",
	"30Rnd_556x45_Stanag_Tracer_Red",
	"30Rnd_556x45_Stanag_Tracer_Green",
	"30Rnd_556x45_Stanag_Tracer_Yellow",
	"20Rnd_556x45_UW_mag",
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_mag_Tracer",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"20Rnd_762x51_Mag",
	"7Rnd_408_Mag",
	"5Rnd_127x108_Mag",
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer",
	"30Rnd_9x21_Mag",
	"30Rnd_9x21_Red_Mag",
	"30Rnd_9x21_Yellow_Mag",
	"30Rnd_9x21_Green_Mag",
	"16Rnd_9x21_Mag",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02_Tracer_Red",
	"30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",
	"30Rnd_9x21_Mag_SMG_02_Tracer_Green",
	"16Rnd_9x21_red_Mag",
	"16Rnd_9x21_green_Mag",
	"16Rnd_9x21_yellow_Mag",
	"RPG32_F",
	"RPG32_HE_F",
	"NLAW_F",
	"1Rnd_HE_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"3Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"HandGrenade",
	"MiniGrenade",
	"HandGrenade_Stone",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellYellow",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellOrange",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"Chemlight_blue",
	"60Rnd_CMFlareMagazine",
	"120Rnd_CMFlareMagazine",
	"240Rnd_CMFlareMagazine",
	"60Rnd_CMFlare_Chaff_Magazine",
	"120Rnd_CMFlare_Chaff_Magazine",
	"240Rnd_CMFlare_Chaff_Magazine",
	"192Rnd_CMFlare_Chaff_Magazine",
	"168Rnd_CMFlare_Chaff_Magazine",
	"300Rnd_CMFlare_Chaff_Magazine",
	"SmokeLauncherMag",
	"SmokeLauncherMag_boat",
	"200Rnd_65x39_Belt",
	"200Rnd_65x39_Belt_Tracer_Red",
	"200Rnd_65x39_Belt_Tracer_Green",
	"200Rnd_65x39_Belt_Tracer_Yellow",
	"1000Rnd_65x39_Belt",
	"1000Rnd_65x39_Belt_Tracer_Red",
	"1000Rnd_65x39_Belt_Green",
	"1000Rnd_65x39_Belt_Tracer_Green",
	"1000Rnd_65x39_Belt_Yellow",
	"1000Rnd_65x39_Belt_Tracer_Yellow",
	"2000Rnd_65x39_Belt",
	"2000Rnd_65x39_Belt_Tracer_Red",
	"2000Rnd_65x39_Belt_Green",
	"2000Rnd_65x39_Belt_Tracer_Green",
	"2000Rnd_65x39_Belt_Tracer_Green_Splash",
	"2000Rnd_65x39_Belt_Yellow",
	"2000Rnd_65x39_Belt_Tracer_Yellow",
	"2000Rnd_65x39_Belt_Tracer_Yellow_Splash",
	"5000Rnd_762x51_Belt",
	"5000Rnd_762x51_Yellow_Belt",
	"500Rnd_127x99_mag",
	"500Rnd_127x99_mag_Tracer_Red",
	"500Rnd_127x99_mag_Tracer_Green",
	"500Rnd_127x99_mag_Tracer_Yellow",
	"200Rnd_127x99_mag",
	"200Rnd_127x99_mag_Tracer_Red",
	"200Rnd_127x99_mag_Tracer_Green",
	"200Rnd_127x99_mag_Tracer_Yellow",
	"100Rnd_127x99_mag",
	"100Rnd_127x99_mag_Tracer_Red",
	"100Rnd_127x99_mag_Tracer_Green",
	"100Rnd_127x99_mag_Tracer_Yellow",
	"450Rnd_127x108_Ball",
	"150Rnd_127x108_Ball",
	"50Rnd_127x108_Ball",
	"200Rnd_40mm_G_belt",
	"96Rnd_40mm_G_belt",
	"64Rnd_40mm_G_belt",
	"32Rnd_40mm_G_belt",
	"200Rnd_20mm_G_belt",
	"40Rnd_20mm_G_belt",
	"24Rnd_PG_missiles",
	"12Rnd_PG_missiles",
	"24Rnd_missiles",
	"12Rnd_missiles",
	"32Rnd_155mm_Mo_shells",
	"8Rnd_82mm_Mo_shells",
	"8Rnd_82mm_Mo_Flare_white",
	"8Rnd_82mm_Mo_Smoke_white",
	"8Rnd_82mm_Mo_guided",
	"8Rnd_82mm_Mo_LG",
	"6Rnd_155mm_Mo_smoke",
	"2Rnd_155mm_Mo_guided",
	"2Rnd_155mm_Mo_LG",
	"6Rnd_155mm_Mo_mine",
	"6Rnd_155mm_Mo_AT_mine",
	"2Rnd_155mm_Mo_Cluster",
	"UGL_FlareWhite_F",
	"3Rnd_UGL_FlareWhite_F",
	"UGL_FlareGreen_F",
	"3Rnd_UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"3Rnd_UGL_FlareRed_F",
	"UGL_FlareYellow_F",
	"3Rnd_UGL_FlareYellow_F",
	"UGL_FlareCIR_F",
	"3Rnd_UGL_FlareCIR_F",
	"FlareWhite_F",
	"FlareGreen_F",
	"FlareRed_F",
	"FlareYellow_F",
	"Laserbatteries",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",
	"9Rnd_45ACP_Mag",
	"150Rnd_762x51_Box",
	"150Rnd_762x51_Box_Tracer",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"Titan_AA",
	"Titan_AP",
	"Titan_AT",
	"300Rnd_20mm_shells",
	"1000Rnd_20mm_shells",
	"2000Rnd_20mm_shells",
	"300Rnd_25mm_shells",
	"1000Rnd_25mm_shells",
	"250Rnd_30mm_HE_shells",
	"250Rnd_30mm_HE_shells_Tracer_Red",
	"250Rnd_30mm_HE_shells_Tracer_Green",
	"250Rnd_30mm_APDS_shells",
	"250Rnd_30mm_APDS_shells_Tracer_Red",
	"250Rnd_30mm_APDS_shells_Tracer_Green",
	"250Rnd_30mm_APDS_shells_Tracer_Yellow",
	"140Rnd_30mm_MP_shells",
	"140Rnd_30mm_MP_shells_Tracer_Red",
	"140Rnd_30mm_MP_shells_Tracer_Green",
	"140Rnd_30mm_MP_shells_Tracer_Yellow",
	"60Rnd_30mm_APFSDS_shells",
	"60Rnd_30mm_APFSDS_shells_Tracer_Red",
	"60Rnd_30mm_APFSDS_shells_Tracer_Green",
	"60Rnd_30mm_APFSDS_shells_Tracer_Yellow",
	"60Rnd_40mm_GPR_shells",
	"60Rnd_40mm_GPR_Tracer_Red_shells",
	"60Rnd_40mm_GPR_Tracer_Green_shells",
	"60Rnd_40mm_GPR_Tracer_Yellow_shells",
	"40Rnd_40mm_APFSDS_shells",
	"40Rnd_40mm_APFSDS_Tracer_Red_shells",
	"40Rnd_40mm_APFSDS_Tracer_Green_shells",
	"40Rnd_40mm_APFSDS_Tracer_Yellow_shells",
	"8Rnd_LG_scalpel",
	"6Rnd_LG_scalpel",
	"2Rnd_LG_scalpel",
	"2Rnd_LG_scalpel_hidden",
	"14Rnd_80mm_rockets",
	"38Rnd_80mm_rockets",
	"12Rnd_230mm_rockets",
	"2Rnd_AAA_missiles",
	"2Rnd_AAA_missiles_MI02",
	"4Rnd_AAA_missiles",
	"4Rnd_AAA_missiles_MI02",
	"4Rnd_GAA_missiles",
	"4Rnd_Titan_long_missiles",
	"5Rnd_GAT_missiles",
	"2Rnd_GAT_missiles",
	"30Rnd_120mm_HE_shells",
	"30Rnd_120mm_HE_shells_Tracer_Red",
	"30Rnd_120mm_HE_shells_Tracer_Green",
	"30Rnd_120mm_HE_shells_Tracer_Yellow",
	"16Rnd_120mm_HE_shells",
	"16Rnd_120mm_HE_shells_Tracer_Red",
	"16Rnd_120mm_HE_shells_Tracer_Green",
	"16Rnd_120mm_HE_shells_Tracer_Yellow",
	"30Rnd_120mm_APFSDS_shells",
	"30Rnd_120mm_APFSDS_shells_Tracer_Red",
	"30Rnd_120mm_APFSDS_shells_Tracer_Green",
	"30Rnd_120mm_APFSDS_shells_Tracer_Yellow",
	"32Rnd_120mm_APFSDS_shells",
	"32Rnd_120mm_APFSDS_shells_Tracer_Red",
	"32Rnd_120mm_APFSDS_shells_Tracer_Green",
	"32Rnd_120mm_APFSDS_shells_Tracer_Yellow",
	"680Rnd_35mm_AA_shells",
	"680Rnd_35mm_AA_shells_Tracer_Red",
	"680Rnd_35mm_AA_shells_Tracer_Green",
	"680Rnd_35mm_AA_shells_Tracer_Yellow",
	"6Rnd_AAT_missiles",
	"4Rnd_AAT_missiles",
	"1Rnd_GAA_missiles",
	"1Rnd_GAT_missiles",
	"2Rnd_GBU12_LGB",
	"2Rnd_GBU12_LGB_MI10",
	"2Rnd_Mk82",
	"2Rnd_Mk82_MI08",
	"11Rnd_45ACP_Mag",
	"6Rnd_45ACP_Cylinder",
	"10Rnd_762x51_Mag",
	"10Rnd_762x54_Mag",
	"5Rnd_127x108_APDS_Mag",
	"B_IR_Grenade",
	"O_IR_Grenade",
	"I_IR_Grenade",
	"28Rnd_120mm_APFSDS_shells",
	"24Rnd_125mm_APFSDS",
	"28Rnd_120mm_APFSDS_shells_Tracer_Red",
	"24Rnd_125mm_APFSDS_T_Red",
	"28Rnd_120mm_APFSDS_shells_Tracer_Green",
	"24Rnd_125mm_APFSDS_T_Green",
	"28Rnd_120mm_APFSDS_shells_Tracer_Yellow",
	"24Rnd_125mm_APFSDS_T_Yellow",
	"14Rnd_120mm_HE_shells",
	"12Rnd_125mm_HE",
	"14Rnd_120mm_HE_shells_Tracer_Red",
	"12Rnd_125mm_HE_T_Red",
	"14Rnd_120mm_HE_shells_Tracer_Green",
	"12Rnd_125mm_HE_T_Green",
	"14Rnd_120mm_HE_shells_Tracer_Yellow",
	"12Rnd_125mm_HE_T_Yellow",
	"12Rnd_125mm_HEAT",
	"12Rnd_125mm_HEAT_T_Red",
	"12Rnd_125mm_HEAT_T_Green",
	"12Rnd_125mm_HEAT_T_Yellow",
	"200Rnd_762x51_Belt",
	"200Rnd_762x51_Belt_Red",
	"200Rnd_762x51_Belt_T_Red",
	"200Rnd_762x51_Belt_Green",
	"200Rnd_762x51_Belt_T_Green",
	"200Rnd_762x51_Belt_Yellow",
	"200Rnd_762x51_Belt_T_Yellow",
	"1000Rnd_762x51_Belt",
	"1000Rnd_762x51_Belt_Red",
	"1000Rnd_762x51_Belt_T_Red",
	"1000Rnd_762x51_Belt_Green",
	"1000Rnd_762x51_Belt_T_Green",
	"1000Rnd_762x51_Belt_Yellow",
	"1000Rnd_762x51_Belt_T_Yellow",
	"2000Rnd_762x51_Belt",
	"2000Rnd_762x51_Belt_Red",
	"2000Rnd_762x51_Belt_T_Red",
	"2000Rnd_762x51_Belt_Green",
	"2000Rnd_762x51_Belt_T_Green",
	"2000Rnd_762x51_Belt_Yellow",
	"2000Rnd_762x51_Belt_T_Yellow",
	"1000Rnd_Gatling_30mm_Plane_CAS_01_F",
	"2Rnd_Missile_AA_04_F",
	"6Rnd_Missile_AGM_02_F",
	"7Rnd_Rocket_04_HE_F",
	"7Rnd_Rocket_04_AP_F",
	"4Rnd_Bomb_04_F",
	"500Rnd_Cannon_30mm_Plane_CAS_02_F",
	"2Rnd_Missile_AA_03_F",
	"4Rnd_Missile_AGM_01_F",
	"20Rnd_Rocket_03_HE_F",
	"20Rnd_Rocket_03_AP_F",
	"2Rnd_Bomb_03_F",
	"40Rnd_105mm_APFSDS",
	"40Rnd_105mm_APFSDS_T_Red",
	"40Rnd_105mm_APFSDS_T_Green",
	"40Rnd_105mm_APFSDS_T_Yellow",
	"20Rnd_105mm_HEAT_MP",
	"20Rnd_105mm_HEAT_MP_T_Red",
	"20Rnd_105mm_HEAT_MP_T_Green",
	"20Rnd_105mm_HEAT_MP_T_Yellow",
	"ATMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSTripMine_Wire_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"DemoCharge_Remote_Mag",
	"IEDUrbanBig_Remote_Mag",
	"IEDLandBig_Remote_Mag",
	"IEDUrbanSmall_Remote_Mag",
	"IEDLandSmall_Remote_Mag",
	"6Rnd_GreenSignal_F",
	"6Rnd_RedSignal_F",
	"10Rnd_338_Mag",
	"130Rnd_338_Mag",
	"10Rnd_127x54_Mag",
	"150Rnd_93x64_Mag",
	"10Rnd_93x64_DMR_05_Mag",
	"10Rnd_9x21_Mag",
	"30Rnd_580x42_Mag_F",
	"30Rnd_580x42_Mag_Tracer_F",
	"100Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_Tracer_F",
	"20Rnd_650x39_Cased_Mag_F",
	"10Rnd_50BW_Mag_F",
	"150Rnd_556x45_Drum_Mag_F",
	"150Rnd_556x45_Drum_Mag_Tracer_F",
	"30Rnd_762x39_Mag_F",
	"30Rnd_762x39_Mag_Green_F",
	"30Rnd_762x39_Mag_Tracer_F",
	"30Rnd_762x39_Mag_Tracer_Green_F",
	"30Rnd_545x39_Mag_F",
	"30Rnd_545x39_Mag_Green_F",
	"30Rnd_545x39_Mag_Tracer_F",
	"30Rnd_545x39_Mag_Tracer_Green_F",
	"200Rnd_556x45_Box_F",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_Tracer_F",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"500Rnd_65x39_Belt",
	"500Rnd_65x39_Belt_Tracer_Red_Splash",
	"500Rnd_65x39_Belt_Tracer_Green_Splash",
	"500Rnd_65x39_Belt_Tracer_Yellow_Splash",
	"RPG7_F",
	"4Rnd_LG_Jian",
	"4000Rnd_20mm_Tracer_Red_shells",
	"160Rnd_40mm_APFSDS_Tracer_Red_shells",
	"240Rnd_40mm_GPR_Tracer_Red_shells",
	"100Rnd_105mm_HEAT_MP"
];

vanillaAccessories = [
	"muzzle_snds_H",
	"muzzle_snds_L",
	"muzzle_snds_M",
	"muzzle_snds_B",
	"muzzle_snds_H_MG",
	"optic_Arco",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_Aco_smg",
	"optic_ACO_grn_smg",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_SOS",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_MRCO",
	"muzzle_snds_acp",
	"optic_NVS",
	"optic_Nightstalker",
	"optic_tws",
	"optic_tws_mg",
	"optic_DMS",
	"optic_Yorris",
	"optic_MRD",
	"optic_LRPS",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_338_sand",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",
	"optic_KHS_blk",
	"optic_KHS_hex",
	"optic_KHS_old",
	"optic_KHS_tan",
	"muzzle_snds_H_khk_F",
	"muzzle_snds_H_snd_F",
	"muzzle_snds_m_khk_F",
	"muzzle_snds_m_snd_F",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_58_ghex_F",
	"muzzle_snds_58_hex_F",
	"muzzle_snds_B_khk_F",
	"muzzle_snds_B_snd_F",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F",
	"muzzle_snds_65_TI_ghex_F",
	"muzzle_snds_H_MG_blk_F",
	"muzzle_snds_H_MG_khk_F",
	"optic_Arco_blk_F",
	"optic_Arco_ghex_F",
	"optic_DMS_ghex_F",
	"optic_Hamr_khk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_khk_F",
	"optic_ERCO_snd_F",
	"optic_SOS_khk_F",
	"optic_LRPS_tna_F",
	"optic_LRPS_ghex_F",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"optic_Holosight_smg_blk_F"
];

if (activeAFRF) then {

rhsWeaponsAFRF = [
	"rhs_tr8_periscope",
	"rhs_tr8_periscope_pip",
	"rhs_weap_tr8",
	"rhs_pdu4",

	"rhs_weap_aks74u",
	"rhs_weap_aks74u_folded",
	"rhs_weap_aks74un",
	"rhs_weap_aks74un_folded",

	"rhs_weap_aks74",
	"rhs_weap_aks74_folded",
	"rhs_weap_aks74_gp25",

	"rhs_weap_aks74n",
	"rhs_weap_aks74n_gp25",

	"rhs_weap_ak74m",
	"rhs_weap_ak74m_plummag",
	"rhs_weap_ak74m_camo",
	"rhs_weap_ak74m_desert",
	"rhs_weap_ak74m_gp25",
	"rhs_weap_ak74m_folded",
	"rhs_weap_ak74m_2mag",
	"rhs_weap_ak74m_2mag_camo",
	"rhs_weap_ak74m_npz",
	"rhs_weap_ak74m_plummag_npz",
	"rhs_weap_ak74m_camo_npz",
	"rhs_weap_ak74m_desert_npz",
	"rhs_weap_ak74m_2mag_npz",
	"rhs_weap_ak74m_gp25_npz",
	"rhs_weap_ak74m_fullplum",
	"rhs_weap_ak74m_npz_fullplum",
	"rhs_weap_ak74m_camo_folded",
	"rhs_weap_ak74m_desert_folded",
	"rhs_weap_ak74m_fullplum_gp25",
	"rhs_weap_ak74m_fullplum_gp25_npz",
	"rhs_weap_ak74m_fullplum_npz",
	"rhs_weap_ak74m_plummag_folded",
	"rhs_weap_ak74m_zenitco01",
	"rhs_weap_ak74m_zenitco01_b33",
	"rhs_weap_ak74m_zenitco01_npz",

	"rhs_weap_ak74mr",
	"rhs_weap_ak74mr_gp25",

	"rhs_weap_asval",
	"rhs_weap_asval_grip",
	"rhs_weap_asval_grip_npz",
	"rhs_weap_asval_npz",
	"rhs_weap_vss",
	"rhs_weap_vss_grip",
	"rhs_weap_vss_grip_npz",
	"rhs_weap_vss_npz",

	"rhs_weap_akm",
	"rhs_weap_akms",

	"rhs_weap_akm_gp25",
	"rhs_weap_akms_gp25",

	"rhs_weap_ak103",
	"rhs_weap_ak103_npz",
	"rhs_weap_ak103_1",
	"rhs_weap_ak103_1_npz",
	"rhs_weap_ak103_2",
	"rhs_weap_ak103_gp25",
	"rhs_weap_ak103_gp25_npz",
	"rhs_weap_ak103_2_npz",
	"rhs_weap_ak103_zenitco01",
	"rhs_weap_ak103_zenitco01_b33",
	"rhs_weap_ak103_zenitco01_npz",

	"rhs_weap_ak104",
	"rhs_weap_ak104_npz",
	"rhs_weap_ak104_zenitco01",
	"rhs_weap_ak104_zenitco01_b33",
	"rhs_weap_ak104_zenitco01_npz",

	"rhs_weap_ak105",
	"rhs_weap_ak105_npz",
	"rhs_weap_ak105_zenitco01",
	"rhs_weap_ak105_zenitco01_b33",
	"rhs_weap_ak105_zenitco01_npz",

	"rhs_weap_svdp",
	"rhs_weap_svdp_wd",
	"rhs_weap_svds",
	"rhs_weap_svdp_npz",
	"rhs_weap_svdp_wd_npz",
	"rhs_weap_svds_npz",

	"rhs_weap_pkm",
	"rhs_weap_pkp",

	"rhs_weap_rpg26",
	"rhs_weap_rshg2",
	"rhs_weap_rpg7",
	"rhs_weap_igla",
	"rhs_weap_rsp30_white",
	"rhs_weap_rsp30_green",
	"rhs_weap_rsp30_red",

	"rhs_weap_pya",
	"rhs_weap_makarov_pm",
	"rhs_weap_pp2000",
	"rhs_weap_pp2000_folded",

	"rhs_weap_t5000"
];

rhsWeaponsAFRF_extra = [
	"rhs_weap_ak105_folded",
	"rhs_weap_ak104_folded",
	"rhs_weap_ak103_folded",
	"rhs_weap_ak103_1_npz",
	"rhs_weap_ak103_1_folded",
	"rhs_weap_ak103_2_npz",
	"rhs_weap_ak103_2_folded",
	"rhs_weap_ak74m_camo_folded",
	"rhs_weap_ak74m_desert_folded",
	"rhs_weap_ak74m_plummag_folded",
	"rhs_weap_ak74m_fullplum_npz",
	"rhs_weap_ak74m_Base_F",
	"rhs_weap_ak74m_fullplum_gp25",
	"rhs_weap_ak74m_fullplum_gp25_npz"
];

rhsWeaponsUSAF = [
	"rhs_weap_XM2010",
	"rhs_weap_XM2010_d",
	"rhs_weap_XM2010_wd",
	"rhs_weap_XM2010_sa",
	"rhs_weap_m24sws",
	"rhs_weap_m24sws_blk",
	"rhs_weap_m24sws_ghillie",
	"rhs_weap_m4",
	"rhs_weap_m4_pmag",
	"rhs_weap_m4_mstock",
	"rhs_weap_m4_carryhandle",
	"rhs_weap_m4_carryhandle_pmag",
	"rhs_weap_m4_carryhandle_mstock",
	"rhs_weap_m4_m320",
	"rhs_weap_m4_m203",
	"rhs_weap_m4_m203S",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_d",
	"rhs_weap_m4a1_mstock",
	"rhs_weap_m4a1_d_mstock",
	"rhs_weap_m4a1_pmag",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_mstock",
	"rhs_weap_m4a1_carryhandle_pmag",
	"rhs_weap_m4a1_m203",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1_m203s_d",
	"rhs_weap_m4a1_carryhandle_m203",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_m320",
	"rhs_weap_m4a1_blockII",
	"rhs_weap_m4a1_blockII_bk",
	"rhs_weap_m4a1_blockII_wd",
	"rhs_weap_m4a1_blockII_d",
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m4a1_blockII_KAC_bk",
	"rhs_weap_m4a1_blockII_KAC_wd",
	"rhs_weap_m4a1_blockII_KAC_d",
	"rhs_weap_m4a1_blockII_M203",
	"rhs_weap_m4a1_blockII_M203_bk",
	"rhs_weap_m4a1_blockII_M203_d",
	"rhs_weap_m4a1_blockII_M203_wd",
	"rhs_weap_mk18",
	"rhs_weap_mk18_bk",
	"rhs_weap_mk18_wd",
	"rhs_weap_mk18_d",
	"rhs_weap_mk18_KAC",
	"rhs_weap_mk18_KAC_bk",
	"rhs_weap_mk18_KAC_wd",
	"rhs_weap_mk18_KAC_d",
	"rhs_weap_mk18_m320",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_pmag",
	"rhs_weap_m16a4_carryhandle",
	"rhs_weap_m16a4_carryhandle_pmag",
	"rhs_weap_m16a4_carryhandle_M203",
	"rhs_weap_hk416d10",
	"rhs_weap_hk416d145",
	"rhs_weap_hk416d10_LMT",
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d145_m320",
	"rhs_weap_m27iar",
	"rhs_weap_m27iar_grip",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",
	"rhs_weap_m249_pip_S_vfg",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_L_vfg",
	"rhs_weap_m249",
	"rhs_weap_m249_pip",
	"rhs_weap_m240B",
	"rhs_weap_m240G",
	"rhs_weap_m240B_CAP",
	"rhs_weap_m14ebrri",
	"rhs_weap_m40a5",
	"rhs_weap_m40a5_d",
	"rhs_weap_m40a5_wd",
	"rhs_weap_sr25",
	"rhs_weap_sr25_ec",
	"rhs_weap_sr25_wd",
	"rhs_weap_sr25_ec_wd",
	"rhs_weap_sr25_d",
	"rhs_weap_sr25_ec_d",
	"rhs_weap_M107",
	"rhs_weap_M107_d",
	"rhs_weap_M107_w",
	"rhs_weap_M590_5RD",
	"rhs_weap_M590_8RD",
	"rhs_weap_m32",
	"rhsusf_weap_MP7A1_base_f",
	"rhsusf_weap_MP7A1_winter",
	"rhsusf_weap_MP7A1_desert",
	"rhsusf_weap_MP7A1_aor1",
	"rhsusf_weap_MP7A2",
	"rhsusf_weap_MP7A2_winter",
	"rhsusf_weap_MP7A2_desert",
	"rhsusf_weap_MP7A2_aor1",
	"rhs_weap_M320",
	"rhsusf_weap_m1911a1",
	"rhsusf_weap_glock17g4",
	"rhsusf_weap_m9",
	"rhs_weap_smaw",
	"rhs_weap_smaw_green",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_m72a7",
	"rhs_weap_fim92",
	"rhs_weap_fgm148"
];

rhsMagazines = [
	"rhs_mag_rgd5",
	"rhs_mag_rdg2_white",
	"rhs_mag_rdg2_black",
	"rhs_mag_nspn_yellow",
	"rhs_mag_nspn_red",
	"rhs_mag_nspn_green",
	"rhs_mag_nspd",
	"rhs_mag_fakel",
	"rhs_mag_fakels",
	"rhs_mag_zarya2",
	"rhs_mag_plamyam",
	"rhs_mag_rgn",
	"rhs_mag_rgo",


	//5.45 mags
	"rhs_30Rnd_545x39_AK",
	"rhs_30Rnd_545x39_7N10_AK",
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_30Rnd_545x39_AK_green",
	"rhs_30Rnd_545x39_7U1_AK",

	"rhs_45Rnd_545x39_AK",
	"rhs_45Rnd_545x39_7N10_AK",
	"rhs_45Rnd_545x39_7N22_AK",
	"rhs_45Rnd_545x39_AK_green",
	"rhs_45Rnd_545x39_7U1_AK",

	//GP25 ammo
	"rhs_VOG25",
	"rhs_VOG25p",
	"rhs_vg40tb",
	"rhs_vg40sz",
	"rhs_vg40op_white",
	"rhs_vg40op_green",
	"rhs_vg40op_red",
	"rhs_GRD40_white",
	"rhs_GRD40_green",
	"rhs_GRD40_red",
	"rhs_GDM40",
	"rhs_VG40MD_White",
	"rhs_VG40MD_Green",
	"rhs_VG40MD_Red",

	//7.62 mags
	"rhs_30Rnd_762x39mm",
	"rhs_30Rnd_762x39mm_tracer",
	"rhs_30Rnd_762x39mm_89",
	"rhs_30Rnd_762x39mm_U",

	"rhs_10Rnd_762x54mmR_7N1",
	"rhs_100Rnd_762x54mmR",
	"rhs_100Rnd_762x54mmR_green",
	"rhs_100Rnd_762x54mmR_7n13",
	"rhs_100Rnd_762x54mmR_7n26",
	"rhs_100Rnd_762x54mmR_7bz3",

	//9mm
	"rhs_20rnd_9x39mm_SP5",
	"rhs_20rnd_9x39mm_SP6",
	"rhs_mag_9x19_17",
	"rhs_mag_9x19mm_7n21_20",
	"rhs_mag_9x19mm_7n31_20",
	"rhs_mag_9x19mm_7n21_44",
	"rhs_mag_9x19mm_7n31_44",
	"rhs_mag_9x18_12_57N181S",
	"rhs_mag_9x18_8_57N181S",

	//mines
	"rhs_mine_tm62m_mag",
	"rhs_mine_pmn2_mag",

	//rpgs
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_OG7V_mag",
	"rhs_rpg7_TBG7V_mag",
	"rhs_rpg26_mag",
	"rhs_rshg2_mag",
	"rhs_mag_9k38_rocket"
];

rhsAccessoriesAFRF = [
	"rhs_1PN138",
	"rhs_acc_npz",
	"rhs_acc_1pn93_1",
	"rhs_acc_1pn93_2",
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"rhs_acc_pkas",
	"rhs_acc_pgo7v",
	"rhs_acc_1p29",
	"rhs_acc_1p78",
	"rhs_acc_ekp1",
	"rhs_acc_1p63",
	"rhs_acc_tgpa",
	"rhs_acc_pbs1",
	"rhs_acc_tgpv",
	"rhs_acc_dtk4long",
	"rhs_acc_dtk4short",
	"rhs_acc_dtk4screws",
	"rhs_acc_dtk3",
	"rhs_acc_dtk1",
	"rhs_acc_dtk",
	"rhs_acc_dtk1l",
	"rhs_acc_ak5",
	"rhs_acc_2dpZenit",
	"rhs_acc_2dpZenit_ris",
	"rhs_acc_perst1ik",
	"rhs_acc_perst1ik_ris",
	"rhs_acc_pgs64",
	"rhs_acc_pgs64_74u",
	"rhs_acc_rakurspm"
];

rhsAccessoriesUSAF = [
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG2_USMC",
	"rhsusf_acc_ACOG3",
	"rhsusf_acc_ACOG3_USMC",
	"rhsusf_acc_ACOG_anpvs27",
	"rhsusf_acc_ACOG_d",
	"rhsusf_acc_ACOG_USMC",
	"rhsusf_acc_ACOG_wd",
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15_bk_light",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15_light",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_wmx",
	"rhsusf_acc_anpeq15_wmx_light",
	"rhsusf_acc_anpeq15A",
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpvs27",
	"rhsusf_acc_compm4",
	"rhsusf_acc_ELCAN",
	"rhsusf_acc_ELCAN_ard",
	"rhsusf_acc_EOTECH",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_LEUPOLDMK4",
	"rhsusf_acc_LEUPOLDMK4_2",
	"rhsusf_acc_LEUPOLDMK4_2_d",
	"rhsusf_acc_M2010S",
	"rhsusf_acc_M2A1",
	"rhsusf_acc_M952V",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",
	"rhsusf_acc_premier",
	"rhsusf_acc_premier_anpvs27",
	"rhsusf_acc_premier_low",
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_rotex5_tan",
	"rhsusf_acc_SF3P556",
	"rhsusf_acc_SFMB556",
	"rhsusf_acc_SpecterDR",
	"rhsusf_acc_SpecterDR_A",
	"rhsusf_acc_SpecterDR_D",
	"rhsusf_acc_SpecterDR_OD",
	"rhsusf_acc_SR25S",
	"rhsusf_acc_wmx"
];

_aToS = [
	"rhs_weap_vss",
	"rhs_weap_vss_grip",
	"rhs_weap_vss_npz",
	"rhs_weap_vss_grip_npz",
	"rhs_weap_svdp",
	"rhs_weap_svdp_npz",
	"rhs_weap_svdp_wd",
	"rhs_weap_svdp_wd_npz",
	"rhs_weap_svds",
	"rhs_weap_svds_npz",
	"rhs_weap_sr25",
	"rhs_weap_sr25_ec",
	"rhs_weap_sr25_wd",
	"rhs_weap_sr25_ec_wd",
	"rhs_weap_sr25_d",
	"rhs_weap_sr25_ec_d",
	"rhs_weap_M107",
	"rhs_weap_M107_d",
	"rhs_weap_M107_w",
	"rhs_weap_m24sws",
	"rhs_weap_m24sws_blk",
	"rhs_weap_m24sws_ghillie"];

	gear_assaultRifles = gear_assaultRifles - _aToS;
	gear_sniperRifles = gear_sniperRifles + _aToS;
};

aceWeapons = [];
aceAccessories = [];
aceItems = [];
aceAdvMedItems = [];

if (activeACE) then {

	aceWeapons = [
		"srifle_DMR_03_spotter_F",
		"ACE_VMM3"
	];

	aceAccessories = [
		"ACE_muzzle_mzls_H",
		"ACE_muzzle_mzls_B",
		"ACE_muzzle_mzls_L",
		"ACE_muzzle_mzls_smg_01",
		"ACE_muzzle_mzls_smg_02",
		"ACE_muzzle_mzls_338",
		"ACE_muzzle_mzls_93mmg",
		"ACE_acc_pointer_green",
		"ACE_optic_Hamr_2D",
		"ACE_optic_Hamr_PIP",
		"ACE_optic_Arco_2D",
		"ACE_optic_Arco_PIP",
		"ACE_optic_MRCO_2D",
		"ACE_optic_SOS_2D",
		"ACE_optic_SOS_PIP",
		"ACE_optic_LRPS_2D",
		"ACE_optic_LRPS_PIP"
	];

	aceItems = [
		"ACE_EarPlugs",
		"ACE_RangeCard",
		"ACE_Clacker",
		"ACE_M26_Clacker",
		"ACE_DeadManSwitch",
		"ACE_DefusalKit",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		"ACE_Sandbag_empty",
		"ACE_wirecutter",
		"ACE_RangeTable_82mm",
		"ACE_SpareBarrel",
		"ACE_EntrenchingTool",
		"ACE_Cellphone",
		"ACE_ConcertinaWireCoil",
		"ACE_CableTie",
		"ACE_SpottingScope",
		"ACE_Tripod",
		"ACE_Chemlight_HiWhite",
		"ACE_Chemlight_HiRed",
		"ACE_fieldDressing",
		"ACE_bloodIV_500",
		"ACE_bloodIV",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_bodyBag"
	];

	aceAdvMedItems = [
		"ACE_fieldDressing",
		"ACE_bloodIV_500",
		"ACE_bloodIV",
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_bodyBag",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_bloodIV_250",
		"ACE_packingBandage",
		"ACE_personalAidKit",
		"ACE_plasmaIV",
		"ACE_plasmaIV_500",
		"ACE_plasmaIV_250",
		"ACE_salineIV",
		"ACE_salineIV_500",
		"ACE_salineIV_250",
		"ACE_surgicalKit",
		"ACE_tourniquet",
		"ACE_adenosine"
	];

};

blockedWeapons = ["rhs_weap_svd","rhs_weap_rpg18","rhs_weap_strela","rhs_weap_svd_pso1","rhs_weap_pkp_pkas","rhs_weap_pkp_1p63","rhs_weap_pkp_1p29"];

gear_allMagazines = [];
{
	gear_allMagazines pushBackUnique configName _x;
} forEach ("(getText ( _x >> ""simulation"" ) isEqualTo ""ProxyMagazines"")" configClasses ( configFile >> "CfgMagazines" ));

_aToS = ["srifle_EBR_F","srifle_GM6_F","srifle_GM6_camo_F","srifle_LRR_F","srifle_LRR_camo_F","srifle_LRR_tna_F","srifle_GM6_ghex_F"];

gear_assaultRifles = gear_assaultRifles - _aToS;
gear_sniperRifles = gear_sniperRifles + _aToS;

AS_specialWeapons = [
	"hgun_PDW2000_F",
	"rhs_weap_pp2000",
	"rhs_weap_kar98k",
	"rhs_weap_m38",
	"rhs_weap_M590_5RD",
	"rhsusf_weap_MP7A2",
	"rhs_weap_savz61",
	"rhs_weap_savz61_folded",
	"SMG_05_F",
	"SMG_02_F",
	"SMG_01_F"
];

if (activeJNA) then {
	// JNA item category indexes
	jna_index_primary = 0;
	jna_index_secondary = 1;
	jna_index_handgun = 2;
	jna_index_uniform = 3;
	jna_index_vest = 4;
	jna_index_backpack = 5;
	jna_index_helmet = 6;
	jna_index_goggle = 7;
	jna_index_nvg = 8;
	jna_index_binos = 9;
	jna_index_map = 10;
	jna_index_gps = 11;
	jna_index_radio = 12;
	jna_index_compass = 13;
	jna_index_watch = 14;

	jna_index_optic = 18;
	jna_index_muzzle = 19;
	jna_index_accessory = 20;
	jna_index_bipod = 21;
	jna_index_grenade = 22;
	jna_index_mine = 23;
	jna_index_misc = 24;

	jna_index_ammo = 26;

	// JNA item category "unlock" requirements
	jna_count_primary = 10;
	jna_count_secondary = 5;
	jna_count_handgun = 5;
	jna_count_uniform = 5;
	jna_count_vest = 10;
	jna_count_backpack = 5;
	jna_count_helmet = 5;
	jna_count_goggle = 5;
	jna_count_nvg = 5;
	jna_count_binos = 5;
	jna_count_map = 1;
	jna_count_gps = 1;
	jna_count_radio = 1;
	jna_count_compass = 1;
	jna_count_watch = 1;

	jna_count_optic = 5;
	jna_count_muzzle = 5;
	jna_count_accessory = 5;
	jna_count_bipod = 5;
	jna_count_grenade = 10;
	jna_count_mine = 5;
	jna_count_misc = 1;

	jna_count_ammo = 10;

	// JNA category names
	jna_categories = ["primary","secondary","handgun","uniform","vest","backpack","helmet","goggle","nvg","binos","map","gps","radio","compass","watch","","","","optic","muzzle","accessory","bipod","grenade","mine","misc","","ammo"];
};