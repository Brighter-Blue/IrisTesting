// Atmos types used for planetary airs
/datum/atmosphere/lavaland
	id = LAVALAND_DEFAULT_ATMOS

	base_gases = list(
		/datum/gas/oxygen=5,
		/datum/gas/nitrogen=10,
	)
	normal_gases = list(
		/datum/gas/oxygen=10,
		/datum/gas/nitrogen=10,
		/datum/gas/carbon_dioxide=10,
	)
	restricted_gases = list(
		/datum/gas/plasma=0.1,
		/datum/gas/bz=1.2,
		/datum/gas/miasma=1.2,
		/datum/gas/water_vapor=0.1,
	)
	restricted_chance = 0	// NOVA EDIT: Disables restricted gases from rolling - Original value (30)

	minimum_pressure = HAZARD_LOW_PRESSURE + 10
	maximum_pressure = LAVALAND_EQUIPMENT_EFFECT_PRESSURE - 1

	minimum_temp = BODYTEMP_COLD_DAMAGE_LIMIT + 1
	maximum_temp = LAVALAND_MAX_TEMPERATURE

/datum/atmosphere/icemoon
	id = ICEMOON_DEFAULT_ATMOS

	base_gases = list(
		/datum/gas/oxygen=30, //IRIS EDIT so ppl won't suffocate, was 5
		/datum/gas/nitrogen=10,
	)
	normal_gases = list(
		/datum/gas/oxygen=10,
		/datum/gas/nitrogen=10,
		/datum/gas/carbon_dioxide=0, //IRIS EDIT was 10
	)
	restricted_gases = list(
		/datum/gas/plasma=0.1,
		/datum/gas/water_vapor=0.1,
		/datum/gas/miasma=1.2,
		/datum/gas/plasma=0,
		/datum/gas/water_vapor=0, //they all still somehow appear despite nova turning them off lol
		/datum/gas/miasma=0,
	)
	restricted_chance = 0	// NOVA EDIT: Disables restricted gases from rolling - Original value (20)

	minimum_pressure = HAZARD_LOW_PRESSURE + 10
	minimum_pressure = HAZARD_LOW_PRESSURE + 20 //was 10
	maximum_pressure = LAVALAND_EQUIPMENT_EFFECT_PRESSURE - 1

	minimum_temp = ICEBOX_MIN_TEMPERATURE
	maximum_temp = ICEBOX_MIN_TEMPERATURE

