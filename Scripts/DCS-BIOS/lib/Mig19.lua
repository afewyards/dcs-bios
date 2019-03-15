BIOS.protocol.beginModule("MiG-19P", 0x1600)
BIOS.protocol.setExportModuleAircrafts({"MiG-19P"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document

local parse_indication = BIOS.util.parse_indication

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineString = BIOS.util.defineString
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch

local function define3PosTumb(msg, device_id, command, arg_number, category, description)
	defineTumb(msg, device_id, command, arg_number, 1, {-1, 1}, nil, false, category, description)
end

-- THROTTLE
defineRotary("ASP_TAAGET_DIS", 11, 3314, 314, "Throttle", "ASP-5 Target Distance Selector")
definePushButton("RSIU_TRANS", 17, 3315, 315, "Throttle", "RSIU-4V Transmit Button - Push to Transmit")
defineToggleSwitch("AIRBRAKE_SW", 4, 3316, 316, "Throttle", "Airbrake Switch")
definePushButton("AFTERBURN_DIS", 2, 3317, 317, "Throttle", "Mil-power Limit/Afterburner Disable")
definePushButton("AFTERBURN_EN", 2, 3318, 318, "Throttle", "Afterburner Enable")

-- MAIN INSTRUMENTS PANEL
define3PosTumb("GEAR_LEVER", 4, 3330, 330, "Landing Gear Panel", "Landing Gear Lever, Down/Neutral/Up")
defineToggleSwitch("GEAR_LOCK", 4, 3331, 331, "Landing Gear Panel", "Landing Gear Lever Lock")
definePushButton("GEAR_LIGHT_TEST", 10, 3333, 333, "Landing Gear Panel", "PPS-2 Landing Gear Lights Test Button - Push to test")
defineToggleSwitch("EMERG_BRAKE", 4, 3301, 301, "Landing Gear Panel", "Emergency Brake")
defineToggleSwitch("NOSE_GEAR_BRAKE", 4, 3302, 302, "Landing Gear Panel", "Nose Gear Brake System On/Off")

defineMultipositionSwitch("NAV_LIGHTS", 5, 3261, 261, 5, 0.2,"Exterior Lights Panel" ,"Navigation Lights")
define3PosTumb("NOSE_LIGHTS", 5, 3262, 262, "Exterior Lights Panel", "Nose Lights Switch, LANDING/OFF/TAXI")

definePushButton("GIK1_ALIGN", 9, 3224, 224, "Flight Instruments Panel", "GIK-1 Needle Alignment")
definePushButton("ARU2V_LAMP_TEST", 4, 3300, 300, "Flight Instruments Panel", "ARU-2V Lamp Test Button")
defineRotary("GIK1_CRS_SEL", 9, 3359, 3359, "Flight Instruments Panel", "GIK-1 Course Selector")
definePotentiometer("AGI1_TRIM", 9, 3360, 360, {-1, 1}, "Flight Instruments Panel", "AGI-1 Artificial Horizon Pitch Trim Knob")
defineToggleSwitch("AGI1_CAGE", 9, 3361, 361, "Landing Gear Panel", "AGI-1 Artificial Horizon Cage Button - Push to cage")
defineRotary("BALT_PRESS_SEL", 9, 3362, 362, "Flight Instruments Panel", "Barometric Altimeter Setting (bars)")
defineRotary("CLOCK_R_KNOB_TURN", 9, 3364, 364, "Flight Instruments Panel", "AChS-1 Chronograph Right Knob (Turn)")
definePushButton("CLOCK_R_KNOB_PRESS", 4, 3508, 508, "Flight Instruments Panel", "AChS-1 Chronograph Right Knob (Press)")
defineRotary("CLOCK_L_KNOB_TURN", 9, 3365, 3645, "Flight Instruments Panel", "AChS-1 Chronograph Left Knob (Turn)")
define3PosTumb("CLOCK_L_KNOB_PRESS", 9, 3366, 366, "Flight Instruments Panel", "AChS-1 Chronograph Left Knob (PRESS)")
definePushButton("GMETER_RESET", 9, 3515, 515, "Flight Instruments Panel", "AM-10 Accelerometer Min/Max G Reset Button")

-- GUNSIGHTS
defineToggleSwitch("ASP5_CAGE", 11, 3355, 355, "Gunsights", "ASP-5 Sight Cage/Uncage")
defineRotary("ASP5_WINGSPAN", 11, 3356, 356, "Gunsights", "ASP-5 Target Wingspan Selector")
defineRotary("ASP5_BOMB_MIL", 11, 3357, 357, "Gunsights", "ASP-5 Bomb Mil Deflection Setting")
definePotentiometer("ASP5_BRIGHT", 11, 3358, 358, {0, 1}, "Gunsights", "ASP-5 Brightness")

-- RP-5 IZUMRUD
defineToggleSwitch("RP5_TELEMETRY", 14, 3263, 263, "Radar", "RP-5 Radar/Telemetry Selector")

-- SPO-2 RWR
defineToggleSwitch("SPO2_PW_SW", 16, 3495, 495, "Sensors", "SPO-2 SIRENA RWR Power Switch")

-- CENTER CONSOLE
defineToggleSwitch("BOMB_ARM_SW", 7, 3264, 264, "Center Console", "Bombs Arm Switch")
defineRotary("GUN_L_ROF", 7, 3368, 368, "Center Console", "Left Gun Ammo Counter Reset")
defineRotary("GUN_R_ROF", 7, 3369, 369, "Center Console", "Right Gun Ammo Counter Reset")

-- LEFT INSTRUMENTS PANEL
defineToggleSwitch("TANK1_FUEL_PUMP", 2, 3242, 242, "Bulkhead Panel 1", "Tank 1 Fuel Pump")
defineToggleSwitch("TANK2_FUEL_PUMP", 2, 3243, 243, "Bulkhead Panel 1", "Tank 2 Fuel Pump")
defineToggleSwitch("TANK3_FUEL_PUMP", 2, 3244, 244, "Bulkhead Panel 1", "Tank 3 Fuel Pump")
defineToggleSwitch("TANK4_FUEL_PUMP", 2, 3245, 245, "Bulkhead Panel 1", "Tank 4 Fuel Pump")
defineToggleSwitch("CPT_HEATING", 8, 3246, 246, "Bulkhead Panel 1", "Cockpit Heating")
defineToggleSwitch("ANTI_SKID", 4, 3247, 247, "Bulkhead Panel 1", "Anti-Skid Brake")

defineToggleSwitch("ENG_START", 2, 3248, 248, "Bulkhead Panel 2", "Engine Start Power Switch")
defineToggleSwitch("FIRE_EX_PW_SW", 2, 3248, 249, "Bulkhead Panel 2", "Fire Extinguisher Power Switch")
defineToggleSwitch("R_ENG_OIL_CUT", 2, 3250, 250, "Bulkhead Panel 2", "Right Engine Oil Cutoff")
defineToggleSwitch("L_ENG_OIL_CUT", 2, 3251, 251, "Bulkhead Panel 2", "Left Engine Oil Cutoff")
defineToggleSwitch("R_ENG_BURNER_CUT", 2, 3252, 252, "Bulkhead Panel 2", "Right Engine Afterburner Cut")
defineToggleSwitch("L_ENG_BURNER_CUT", 2, 3253, 253, "Bulkhead Panel 2", "Left Engine Afterburner Cut")

defineToggleSwitch("ARU2_MODE", 4, 3254, 254, "Bulkhead Panel 3", "ARU-2 Operational Mode (Auto/Manual)")
define3PosTumb("ARU2_MANUAL", 4, 3255, 255, "Bulkhead Panel 3", "ARU-2 Manual Arm Selector")
defineToggleSwitch("TP19_BRAKECUTE_COVER", 4, 3274, 274, "Bulkhead Panel 3", "TP-19 Braking Parachute Jettison Button Cover")
definePushButton("TP19_BRAKECUTE_JETT", 4, 3275, 275, "Bulkhead Panel 3", "TP-19 Braking Parachute Jettison Button - Press to jettison drag chute")
definePushButton("WARN_BTN", 9, 3276, 276, "Bulkhead Panel 3", "Warning Button")

definePushButton("FUEL_TANK_WARN_BTN", 2, 3279, 279, "Bulkhead Panel 4", "Fuel Tanks 2,3,4 Warning Lamps Test Button")
definePushButton("ENG_FIRE_TEST_BTN", 2, 3280, 280, "Bulkhead Panel 4", "Engine Fire Lamp Test Button")
defineToggleSwitch("L_ENG_FUELCUT_COVER", 2, 3281, 281, "Bulkhead Panel 4", "Left Engine Fuel Cutoff Cover")
defineToggleSwitch("R_ENG_FUELCUT_COVER", 2, 3282, 282, "Bulkhead Panel 4", "Right Engine Fuel Cutoff Cover")
definePushButton("L_ENG_FUELCUT", 2, 3285, 285, "Bulkhead Panel 4", "Left Engine Fuel Cutoff")
definePushButton("R_ENG_FUELCUT", 2, 3286, 286, "Bulkhead Panel 4", "Right Engine Fuel Cutoff")
defineToggleSwitch("FIRE_EX_COVER", 2, 3283, 283, "Bulkhead Panel 4", "Fire Extinguisher Cover")
definePushButton("FIRE_EX", 2, 3284, 284, "Bulkhead Panel 4", "Fire Extinguisher")

defineToggleSwitch("L_ENG_START_COVER", 2, 3270, 270, "Bulkhead Panel 5", "Left Engine Start Button Cover")
defineToggleSwitch("R_ENG_START_COVER", 2, 3271, 271, "Bulkhead Panel 5", "Right Engine Start Button Cover")
definePushButton("L_ENG_START", 2, 3272, 272, "Bulkhead Panel 4", "Left Engine Start")
definePushButton("R_ENG_START", 2, 3273, 273, "Bulkhead Panel 4", "Right Engine Start")
defineToggleSwitch("L_ENG_AIR_START_COVER", 2, 3277, 277, "Bulkhead Panel 5", "Left Engine Air Start Button Cover")
defineToggleSwitch("R_ENG_AIR_START_COVER", 2, 3278, 278, "Bulkhead Panel 5", "Right Engine Air Start Button Cover")
definePushButton("L_ENG_AIR_START", 2, 3328, 328, "Bulkhead Panel 5", "Left Air Engine Start")
definePushButton("R_ENG_AIR_START", 2, 3329, 329, "Bulkhead Panel 5", "Right Air Engine Start")

defineMultipositionSwitch("ASP5_AIM_MODE", 7, 3344, 344, 3, 0.1,"Armament Sight Panel" ,"ASP-5 Sight Aiming Mode")
defineToggleSwitch("ASP5_OP_MODE", 11, 3345, 345, "Armament Sight Panel", "ASP-5 Sight Operational Mode (Radar/Optic)")
defineToggleSwitch("BOMB_REL_MODE", 7, 3346, 346, "Armament Sight Panel", "Bomb Release Mode (Single/Auto)")

define3PosTumb("ROCKET_SLAVO_MODE", 7, 3336, 336, "Rocket Pod Panel", "Rockets Salvo Mode Selector")
defineToggleSwitch("ROCKET_COUNTER_MODE", 7, 3337, 337, "Rocket Pod Panel", "Rockets Counter Mode (day/night)")

defineToggleSwitch("RADAR_ECCM", 14, 3338, 338, "Radar Control Panel", "RP-5 Radar ECCM Mode Switch, ON/OFF")
definePushButton("RADAR_BIT_TEST", 14, 3339, 339, "Radar Control Panel", "RP-5 Radar Built-In Test (BIT) Button - Press 2 seconds to start test")
defineToggleSwitch("RADAR_GAUGE_MODE", 14, 3340, 340, "Radar Control Panel", "RP-5 Radar Gauge Display Mode Switch, VOLTAGE/AIR PRESSURE")
defineMultipositionSwitch("RADAR_MODE", 14, 3341, 341, 3, 0.5,"Radar Control Panel" ,"RP-5 Radar Mode Control Switch, ON/STANDBY/OFF")
defineRotary("RADAR_ANT_ELEVATION", 14, 3342, 3342, "Flight Instruments Panel", "RP-5 Radar Electronic Horizon Elevation Adjustment Knob")
defineToggleSwitch("RADAR_SCR_MODE", 14, 3343, 343, "Radar Control Panel", "RP-5 Radar Screen Mode Switch, DAY/NIGHT")
defineToggleSwitch("RADAR_TGT_LOCK", 14, 3434, 434, "Radar Control Panel", "RP-5 Radar Target Lock Switch (AR-18-16 Tracking Antenna), ON/OFF")
definePotentiometer("RADAR_SCR_BRIGHT", 14, 3486, 486, {0, 1}, "Radar Control Panel", "RP-5 Radar Screen Brightness Adjustment Knob")

defineToggleSwitch("ARU2V_OP_MODE", 4, 3254, 254, "Flight Control", "Elevator Control (ARU-2V) Mode (Automatic/Manual)")
define3PosTumb("ARU2V_MAN_SET", 4, 3255, 255, "Flight Control", "Elevator Control Manual Mode Selector (Long/Short)")
defineToggleSwitch("ELEVATOR_ACT_SEL", 4, 3256, 256, "Flight Control", "Elevator Actuator Switch, HYDRAULIC(BU-14M BOOSTER)/ELECTRIC(MUS-2 SYSTEM)")
define3PosTumb("AILERON_TRIM", 4, 3257, 257, "Flight Control", "Aileron Trimmer Switch, LEFT/RIGHT")
defineToggleSwitch("AILERON_HYDRO", 4, 3258, 258, "Flight Control", "BU-13M Aileron Hydraulic Booster Switch, ON/OFF")
defineTumb("FLAPS_LAND", 4, 3306, 306, 1, {0.0, 1.0}, nil, false, "Flight Control", "Flaps Landing")
defineTumb("FLAPS_TAKEOFF", 4, 3307, 307, 1, {0.0, 1.0}, nil, false, "Flight Control", "Flaps Take Off")
defineTumb("FLAPS_OFF", 4, 3308, 308, 1, {0.0, 1.0}, nil, false, "Flight Control", "Flaps Off")
definePushButton("FLAPS_BTN_RESET", 4, 3309, 309, "Flight Control", "Flaps buttons reset")

defineMultipositionSwitch("RADAR_ALT_SEL", 9, 3334, 334, 10, 0.1,"Flight Instruments" ,"RV-5 Radio Altimeter Minimum Altitude Selector")
defineToggleSwitch("PITOT_SEL", 9, 3269, 269, "Flight Instruments", "Pitot Tube Selector, MAIN(PVD-4)/EMERGENCY(TP-156)")

defineRotary("OXY_FLOW", 8, 3303, 303, "Environment", "Oxygen shut-off valve")
define3PosTumb("OXY_MODE", 8, 3304, 304, "Environment", "Suit Oxygen Supply Lever, AUTOMATIC TURN-OFF/N(EUTRAL)/SUIT TURN-ON")
defineToggleSwitch("OXY_CONTROL", 8, 3305, 305, "Environment", "Oxygen-Air Diluter Lever, MIXTURE/100% O2")

defineToggleSwitch("ANTI_FREZZE", 8, 3291, 291, "Unknown", "Canopy Front Anti Freeze")

defineToggleSwitch("FLARE_DISP", 7, 3259, 259, "Signal Flares Panel", "EKSR-46 Signal Flare Dispenser Switch, OFF/ARMED")
definePushButton("FLARE_YELLOW", 7, 3287, 287, "Signal Flares Panel", "EKSR-46 Yellow Signal Flare Release Button")
definePushButton("FLARE_GREEN", 7, 3288, 288, "Signal Flares Panel", "EKSR-46 Green Signal Flare Release Button")
definePushButton("FLARE_RED", 7, 3289, 289, "Signal Flares Panel", "EKSR-46 Red Signal Flare Release Button")
definePushButton("FLARE_WHITE", 7, 3290, 290, "Signal Flares Panel", "EKSR-46 White Signal Flare Release Button")

defineTumb("BEACON_SEL", 20, 3260, 260, 1, {0.0, 1.0}, nil, false, "Jettison Panel", "Near/Far Beacon")
defineToggleSwitch("BRAKE_PARA_BTN_COVER", 4, 3292, 292, "Jettison Panel", "TP-19 Braking Parachute Deploy Button Cover")
definePushButton("BRAKE_PARA_BTN", 4, 3293, 293, "Jettison Panel", "TP-19 Braking Parachute Deploy Button - Press to deploy drag chute")
defineToggleSwitch("FUEL_BOMBS_JETT_COVER", 7, 3294, 294, "Jettison Panel", "Fuel Tanks/Bombs Jettison Button Cover")
definePushButton("FUEL_BOMBS_JETT", 7, 3295, 295, "Jettison Panel", "Fuel Tanks/Bombs Jettison")
definePushButton("L_GUN_ARM", 7, 3296, 296, "Jettison Panel", "Left Gun Arm")
definePushButton("R_GUN_ARM", 7, 3297, 297, "Jettison Panel", "Right Gun Arm")
defineToggleSwitch("ROCKET_JETT_COVER", 7, 3298, 298, "Jettison Panel", "Rocket pods Jettison Button Cover")
definePushButton("ROCKET_JETT", 7, 3299, 299, "Jettison Panel", "Rocket pods Jettison")

defineTumb("RADIO_PRE1", 17, 3319, 319, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 1")
defineTumb("RADIO_PRE2", 17, 3320, 320, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 2")
defineTumb("RADIO_PRE3", 17, 3321, 321, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 3")
defineTumb("RADIO_PRE4", 17, 3322, 322, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 4")
defineTumb("RADIO_PRE5", 17, 3323, 323, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 5")
defineTumb("RADIO_PRE6", 17, 3324, 324, 1, {0.0, 1.0}, nil, false, "Radio RSIU4V", "RSIU-4V Preset Radio Channel 6")
defineToggleSwitch("RADIO_OPT_MODE", 17, 3325, 325, "Radio RSIU4V", "RSIU-4V Audio Output: ADF/Radio")
defineToggleSwitch("RADIO_ON_OFF", 17, 3326, 326, "Radio RSIU4V", "RSIU-4V Interference Suppression Switch, ON/OFF")
definePotentiometer("RADIO_VOL", 17, 3327, 327, {0, 1}, "Radio RSIU4V", "RSIU-4V Volume Control Knob")

-- RIGHT INSTRUMENTS PANEL
defineToggleSwitch("RADIO_EMERG_PW_SW", 3, 3200, 200, "Bulkhead Panel 1", "Radios Emergency Power")
defineToggleSwitch("AGI1_EMERG_PW_SW", 3, 3201, 201, "Bulkhead Panel 1", "AGI-1 Emergency Power")
defineToggleSwitch("RADIO_ELECTR_PW_SW", 3, 3202, 202, "Bulkhead Panel 1", "Radios Electric Power")
defineToggleSwitch("BEACON_ELECTR_PW_SW", 3, 3203, 203, "Bulkhead Panel 1", "Beacon and Radio Altimeter Electric Power")
defineToggleSwitch("ELEVATOR_PW_SW", 3, 3206, 206, "Bulkhead Panel 1", "Elevator Control Electric Power")
defineToggleSwitch("TRIM_PW_SW", 3, 3207, 207, "Bulkhead Panel 1", "Trim System Electric Power")
defineToggleSwitch("RADIO_NAV_PW_SW", 3, 3208, 208, "Bulkhead Panel 1", "Radio Navigation Electric Power")
defineToggleSwitch("PITOT_PW_SW", 3, 3209, 209, "Bulkhead Panel 1", "Pitot Heater Electric Power")
defineToggleSwitch("PITOT_EMERG_PW_SW", 3, 3210, 210, "Bulkhead Panel 1", "Emergency Pitot Heater Electric Power")
defineToggleSwitch("BATTERY_PW_SW", 3, 3211, 211, "Bulkhead Panel 1", "Battery Connect/Disconnect")
defineToggleSwitch("L_GEN_PW_SW", 3, 3212, 212, "Bulkhead Panel 1", "Left Generator Connect/Disconnect")
defineToggleSwitch("R_GEN_PW_SW", 3, 3213, 213, "Bulkhead Panel 1", "Right Generator Connect/Disconnect")
defineToggleSwitch("ASP5_WARM_PW_SW", 3, 3214, 214, "Bulkhead Panel 1", "ASP-5 Sight Heater")
defineToggleSwitch("ASP5_SIGHT_PW_SW", 3, 3215, 215, "Bulkhead Panel 1", "ASP-5 Sight On/Off")
defineToggleSwitch("RP5_PW_SW", 3, 3216, 216, "Bulkhead Panel 1", "RP-5 Radar Electric Power")
defineToggleSwitch("ORO57K_PW_SW", 3, 3217, 217, "Bulkhead Panel 1", "ORO-57K Rocket Pods Electric Power")
defineToggleSwitch("L_GUN_PW_SW", 3, 3218, 218, "Bulkhead Panel 1", "Left Gun Electric Power")
defineToggleSwitch("R_GUN_PW_SW", 3, 3219, 219, "Bulkhead Panel 1", "Right Gun Electric Power")
defineToggleSwitch("GUN_CAM_CPT_PW_SW", 3, 3220, 220, "Bulkhead Panel 1", "Cockpit Gun Camera Power")
defineToggleSwitch("GUN_CAM_NOSE_PW_SW", 3, 3221, 221, "Bulkhead Panel 1", "Nose Gun Camera Power")

definePotentiometer("ARUFOSH_LAMP_L", 6, 3226, 226, {0, 1}, "Bulkhead Panel 2", "RUFO-45 Left Side ARUFOSH UV Lamp Intensity Control Knob")
definePotentiometer("ARUFOSH_LAMP_R", 6, 3227, 227, {0, 1}, "Bulkhead Panel 2", "RUFO-45 Right Side ARUFOSH UV Lamp Intensity Control Knob")
defineToggleSwitch("IFF_SELFDESTRUCT_COVER", 16, 3265, 265, "Bulkhead Panel 2", "SRO-2 IFF Self-destruct Button Cover")
defineToggleSwitch("IFF_SELFDESTRUCT", 16, 3266, 266, "Bulkhead Panel 2", "SRO-2 IFF Self-destruct Button - Press to activate self-destruction")
defineToggleSwitch("IFF_PW_COVER", 16, 3267, 267, "Bulkhead Panel 2", "SRO-2 IFF Power Switch Cover")
defineToggleSwitch("IFF_PW", 16, 3268, 268, "Bulkhead Panel 2", "SRO-2 IFF Power Switch, ON/OFF")

defineMultipositionSwitch("ARK5_CHAN_SEL", 20, 3335, 335, 2, 0.5,"ARK5 Panel" ,"ARK-5 NEAR Frequency Band Selector Switch")
defineToggleSwitch("ARK5_RECV_MODE", 20, 3347, 347, "ARK5 Panel", "ARK-5 Receiver Mode Switch, TLG(Telegraph)/TLF(Telephony)")
defineMultipositionSwitch("ARK5_FREQ_SEL", 20, 3348, 348, 2, 0.5,"ARK5 Panel" ,"ARK-5 FAR/NDB Frequency Band Selector Switch")
defineMultipositionSwitch("ARK5_MODE", 20, 3349, 349, 3, 0.1,"ARK5 Panel" ,"ARK-5 Function Selector Switch, OFF/COMP/ANT./LOOP")
defineToggleSwitch("ARK5_ANT_MOV", 20, 3350, 350, "ARK5 Panel", "ARK-5 Loop Antenna Rotation Switch, L(EFT)/R(IGHT)")
definePotentiometer("ARK5_INST_LIGHT", 20, 3351, 351, {0, 1}, "ARK5 Panel", "ARK-5 Frequency Scale Backlight Knob")
definePotentiometer("ARK5_VOL", 20, 3352, 352, {0, 1}, "ARK5 Panel", "ARK-5 Audio Volume Knob")
defineRotary("ARK5_FREQ_ZUNE", 20, 3353, 3353, "ARK5 Panel", "ARK-5 Frequency Fine Tuning Handle")

defineToggleSwitch("EMERG_GEAR", 4, 3222, 222, "Right Console", "Landing Gear Emergency Deployment")
defineToggleSwitch("EMERG_FLAPS", 4, 3223, 223, "Right Console", "Flaps Emergency Deployment")
definePotentiometer("CPT_PRESS_LEVER", 8, 3228, 228, {0, 1}, "Right Console", "Cockpit Pressurization Lever")
define3PosTumb("CPT_TEMP", 8, 3241, 241, "Right Console", "Cockpit Temperature Select")
defineToggleSwitch("CPT_VENT_SW", 8, 3225, 225, "Right Console", "Cockpit Ventilation Switch, OPEN/CLOSE")

defineToggleSwitch("CB_LOCK", 3, 3230, 230, "Circuit Breakers", "Circuit Breakers Panel Lock")
defineToggleSwitch("CB_LIGHTS", 3, 3231, 231, "Circuit Breakers", "Aircraft External Lights Circuit Breaker")
defineToggleSwitch("CB_ARU2V", 3, 3232, 232, "Circuit Breakers", "ARU-2V Flight Control System Circuit Breaker")
defineToggleSwitch("CB_BOMB_FUSE", 3, 3233, 233, "Circuit Breakers", "Bomb Fuzing System Circuit Breaker")
defineToggleSwitch("CB_BOMB_RELEASE", 3, 3234, 234, "Circuit Breakers", "Bomb Release System Circuit Breaker")
defineToggleSwitch("CB_BOMB_JETT", 3, 3235, 235, "Circuit Breakers", "Bomb, Drop Tank and Rocket Emergency Jettison System Circuit Breaker")
defineToggleSwitch("CB_ARK5", 3, 3236, 236, "Circuit Breakers", "ARK-5 Radio Navigation System Circuit Breaker")
defineToggleSwitch("CB_GFAB_LIGHTS", 3, 3237, 237, "Circuit Breakers", "Landing Gear, Airbrake and Flaps Annunciator Lights Circuit Breaker")
defineToggleSwitch("CB_GFAB", 3, 3238, 238, "Circuit Breakers", "Landing Gear, Airbrake and Flaps Systems Circuit Breaker")
defineToggleSwitch("CB_AILERON_ACT", 3, 3239, 239, "Circuit Breakers", "BU-13M Aileron and BU-14M Stabilizer Hydraulic Booster Circuit Breaker")
defineToggleSwitch("CB_ROCKET_PODS", 3, 3240, 240, "Circuit Breakers", "Rocket Pods Circuit Breaker")

-- CANOPY
defineToggleSwitch("CANOPY_LOCK_L", 4, 3429, 429, "Canopy", "Canopy Lock Lever L")
defineToggleSwitch("CANOPY_LOCK_R", 4, 3430, 430, "Canopy", "Canopy Lock Lever R")
defineToggleSwitch("CANOPY_PRESS", 4, 3431, 431, "Canopy", "Canopy Pressurization Switch")
defineToggleSwitch("EMERG_CANOPY", 4, 3229, 229, "Canopy", "Canopy Pressurization Switch")

-- Warning, Caution and IndicatorLights
defineIndicatorLight("IFF_SELFDESTRUCT_LAMP", 205, "Warning, Caution and IndicatorLights","SRO-2 Self-destruction Lamp (red)")
defineIndicatorLight("L_GEAR_DOWN", 489, "Warning, Caution and IndicatorLights","Left Gear UP Lamp (red)")
defineIndicatorLight("N_GEAR_DOWN", 490, "Warning, Caution and IndicatorLights","Nose Gear UP Lamp (red)")
defineIndicatorLight("R_GEAR_DOWN", 491, "Warning, Caution and IndicatorLights","Right Gear UP Lamp (red)")
defineIndicatorLight("L_GEAR_DOWN", 492, "Warning, Caution and IndicatorLights","Left Gear DOWN Lamp (green)")
defineIndicatorLight("N_GEAR_DOWN", 493, "Warning, Caution and IndicatorLights","Nose Gear DOWN Lamp (green)")
defineIndicatorLight("R_GEAR_DOWN", 494, "Warning, Caution and IndicatorLights","Right Gear DOWN Lamp (green)")

-- Gauges 
defineFloat("ARK5_FREQ_SCALE", 354, {-1, 1}, "Gauges", "ARK5 Frequency Scale")
defineFloat("VOLT_MANOMETER_GAUGE", 370, {0.0, 0.3}, "Gauges", "Voltmeter/Manometer Gauge")
defineFloat("OXY_PRESS_GAUGE", 371, {0, 1}, "Gauges", "IK-18 Oxygen Pressure")
defineFloat("BARO_ALT_1000", 372, {0, 1}, "Gauges", "VD-20 Barometric Altimeter 1000m")
defineFloat("BARO_ALT_100", 373, {0, 1}, "Gauges", "VD-20 Barometric Altimeter 100m")
defineFloat("GIK_HDG", 374, {0, 1}, "Gauges", "GIK-1 Compass Heading")
defineFloat("GIK_CRS", 375, {0, 1}, "Gauges", "GIK-1 Compass Course")
defineFloat("GIK_NDB", 376, {0, 1}, "Gauges", "GIK-1 Compass NDB Station")
defineFloat("AIRSPEED_IAS", 377, {0, 1}, "Gauges", "KUS-2000 Airspeed IAS")
defineFloat("AIRSPEED_TAS", 395, {0, 1}, "Gauges", "KUS-2000 Airspeed TAS")
defineFloat("EUP53_TURN", 378, {-1, 1}, "Gauges", "EUP-53 Turn Indicator")
defineFloat("SLIP_INDICATORS", 379, {-1, 1}, "Gauges", "Slip Indicator")
defineFloat("RADAR_ALT", 380, {0, 1}, "Gauges", "UV-57 Radar Altimeter")
defineFloat("CLOCK_FLIGHT_H", 381, {0, 1}, "Gauges", "Clock Flight Time Hours")
defineFloat("CLOCK_FLIGHT_M", 382, {0, 1}, "Gauges", "Clock Flight Time Minutes")
defineFloat("CLOCK_H", 383, {0, 1}, "Gauges", "Clock Hours")
defineFloat("CLOCK_M", 384, {0, 1}, "Gauges", "Clock Minutes")
defineFloat("AGI1_ART_HORIZON_PITCH", 385, {-1, 1}, "Gauges", "AGI-1 Artificial Horizon Pitch")
defineFloat("AGI1_ART_HORIZON_BANK", 385, {-1, 1}, "Gauges", "AGI-1 Artificial Horizon Bank")
defineFloat("ARU2V_STABI_IND", 388, {0, 1}, "Gauges", "ARU-2V Stabilizer Positin Indicator")
defineFloat("EGT_GAUGE_L", 389, {0, 1}, "Gauges", "Dual Engine EGT Left Gauge")
defineFloat("EGT_GAUGE_R", 390, {0, 1}, "Gauges", "Dual Engine EGT Right Gauge")
defineFloat("VARIOMETER", 391, {-1, 1}, "Gauges", "VAR-150 Variometer")
defineFloat("L_RPM", 392, {0, 1}, "Gauges", "Left RPM Gauge")
defineFloat("R_RPM", 393, {0, 1}, "Gauges", "Right RPM Gauge")
defineFloat("MACH_IND", 394, {0, 1}, "Gauges", "Machmeter")
defineFloat("FUEL_IND", 396, {0, 1}, "Gauges", "Fuel Gauge")
defineFloat("VOLTMETER", 397, {0, 0.3}, "Gauges", "V-1 Voltmeter")
defineFloat("CPT_ALTIMETER", 398, {0, 0.3}, "Gauges", "Cabin Altitude")
defineFloat("CPT_DIFF_PRESS", 399, {0, 0.3}, "Gauges", "Cabin Differential Pressure")
defineFloat("OXY_SYS_ALT", 400, {0, 1}, "Gauges", "Oxygen System Altitude")
defineFloat("BRAKE_PRESS_L", 401, {0, 0.3}, "Gauges", "Dual Pointer Brake Pressure Indicator Left")
defineFloat("BRAKE_PRESS_R", 402, {0, 0.3}, "Gauges", "Dual Pointer Brake Pressure Indicator Right")
defineFloat("HYD_BOOST_PRESS", 403, {0, 1}, "Gauges", "Booster Hydraulic System Pressure")
defineFloat("G_METER", 404, {-1, 1}, "Gauges", "G-Meter")
defineFloat("TARGET_DIS", 405, {0, 1}, "Gauges", "Target Distance Gauge")
defineFloat("EMERG_GEAR_PRESS_GAUGE", 406, {0, 1}, "Gauges", "MA-80 Pneumatic Air Pressure Emergency Landing Gear")
defineFloat("HYD_SYS_GAUGE", 407, {0, 1}, "Gauges", "MA-250 Hydraulic System Pressure")
defineFloat("EMERG_FLAPS_PRESS_GAUGE", 408, {0, 1}, "Gauges", "MA-250 Pneumatic Air Pressure Emergency Flaps")
defineFloat("PNEU_SYS_GAUGE", 409, {0, 1}, "Gauges", "MA-250 Pneumatic System Air")
defineFloat("ARK5P_SIG_STRENGTH", 410, {0, 0.3}, "Gauges", "ARK-5P Signal Strength Meter")

BIOS.protocol.endModule()
