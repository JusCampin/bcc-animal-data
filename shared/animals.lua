AnimalData = AnimalData or {}

local function add(model, label, category, cargoUnits, options)
    local data = {}
    for key, value in pairs(options or {}) do data[key] = value end
    data.model = model
    data.modelHash = joaat(model)
    data.label = label
    data.category = category
    data.cargoUnits = cargoUnits
    data.butcherable = data.butcherable ~= false
    data.skinnable = data.skinnable ~= false
    data.wagonStorable = data.wagonStorable ~= false
    data.carcassType = data.carcassType or 'animal'
    data.legendary = data.legendary == true
    AnimalData[data.modelHash] = data
end

-- Large game and livestock
add('a_c_alligator_01', 'American Alligator 01', 'large', 3)
add('a_c_alligator_02', 'American Alligator 02', 'large', 3)
add('a_c_alligator_03', 'American Alligator 03', 'large', 3)
add('a_c_bear_01', 'Grizzly Bear', 'massive', 3)
add('a_c_bearblack_01', 'American Black Bear', 'massive', 3)
add('a_c_bighornram_01', 'Bighorn Ram', 'large', 2)
add('a_c_boar_01', 'Wild Boar', 'large', 2)
add('a_c_buck_01', 'Whitetail Buck', 'large', 2)
add('a_c_buffalo_01', 'American Bison', 'massive', 3)
add('a_c_bull_01', 'Bull', 'massive', 3)
add('a_c_cougar_01', 'Cougar', 'large', 2)
add('a_c_cow', 'Cow', 'massive', 3)
add('a_c_coyote_01', 'Coyote', 'large', 2)
add('a_c_deer_01', 'Whitetail Deer', 'large', 2)
add('a_c_elk_01', 'Rocky Mountain Elk', 'massive', 3)
add('a_c_goat_01', 'Alpine Goat', 'large', 2)
add('a_c_javelina_01', 'Collared Peccary', 'large', 2)
add('a_c_moose_01', 'Western Moose', 'massive', 3)
add('a_c_ox_01', 'Ox', 'massive', 3)
add('a_c_panther_01', 'Panther', 'large', 2)
add('a_c_pig_01', 'Pig', 'large', 2)
add('a_c_pronghorn_01', 'American Pronghorn', 'large', 2)
add('a_c_sheep_01', 'Sheep', 'large', 2)
add('a_c_wolf', 'Gray Wolf (Standard)', 'large', 2)
add('a_c_wolf_medium', 'Gray Wolf (Medium)', 'large', 2)
add('a_c_wolf_small', 'Gray Wolf (Small)', 'large', 2)

-- Unique legendary and special ped models. Other legendary animals can reuse a
-- normal species model and should be identified by their outfit/meta state.
add('a_c_boarlegendary_01', 'Legendary Wild Boar (Story)', 'massive', 3, { legendary = true })
add('a_c_buffalo_tatanka_01', 'Tatanka Bison', 'massive', 3, { legendary = true })
add('a_c_lionmangy_01', 'Mangy Lion', 'large', 2, {
    legendary = true,
    butcherable = false,
    skinnable = false,
    wagonStorable = false,
    carcassType = 'special',
})
add('mp_a_c_alligator_01', 'Legendary Alligator', 'large', 3, { legendary = true })
add('mp_a_c_bear_01', 'Legendary Bear', 'massive', 3, { legendary = true })
add('mp_a_c_beaver_01', 'Legendary Beaver', 'medium', 1, { legendary = true })
add('mp_a_c_bighornram_01', 'Legendary Bighorn Ram', 'large', 2, { legendary = true })
add('mp_a_c_boar_01', 'Legendary Wild Boar (Online)', 'large', 2, { legendary = true })
add('mp_a_c_buck_01', 'Legendary Whitetail Buck', 'large', 2, { legendary = true })
add('mp_a_c_buffalo_01', 'Legendary Bison', 'massive', 3, { legendary = true })
add('mp_a_c_cougar_01', 'Legendary Cougar', 'large', 2, { legendary = true })
add('mp_a_c_coyote_01', 'Legendary Coyote', 'large', 2, { legendary = true })
add('mp_a_c_elk_01', 'Legendary Elk', 'massive', 3, { legendary = true })
add('mp_a_c_fox_01', 'Legendary Fox', 'medium', 1, { legendary = true })
add('mp_a_c_moose_01', 'Legendary Moose', 'massive', 3, { legendary = true })
add('mp_a_c_panther_01', 'Legendary Panther', 'large', 2, { legendary = true })
add('mp_a_c_wolf_01', 'Legendary Wolf', 'large', 2, { legendary = true })

-- Small and medium game
add('a_c_armadillo_01', 'Nine-banded Armadillo', 'small', 1)
add('a_c_badger_01', 'American Badger', 'small', 1)
add('a_c_beaver_01', 'North American Beaver', 'medium', 1)
add('a_c_fox_01', 'Fox', 'medium', 1)
add('a_c_gilamonster_01', 'Gila Monster', 'small', 1)
add('a_c_iguanadesert_01', 'Desert Iguana', 'small', 1)
add('a_c_iguana_01', 'Green Iguana', 'small', 1)
add('a_c_muskrat_01', 'American Muskrat', 'small', 1)
add('a_c_possum_01', 'Virginia Opossum', 'small', 1)
add('a_c_rabbit_01', 'Rabbit', 'small', 1)
add('a_c_raccoon_01', 'North American Raccoon', 'small', 1)
add('a_c_skunk_01', 'Striped Skunk', 'small', 1)
add('a_c_snakeblacktailrattle_01', 'Black-tailed Rattlesnake', 'small', 1)
add('a_c_snakeferdelance_01', 'Fer-de-Lance Snake', 'small', 1)
add('a_c_snakeredboa_01', 'Red Boa Snake', 'small', 1)
add('a_c_snakewater_01', 'Water Snake', 'small', 1)
add('a_c_snake_01', 'Snake', 'small', 1)
add('a_c_squirrel_01', 'Squirrel', 'small', 1)
add('a_c_turtlesnapping_01', 'Snapping Turtle', 'medium', 1)
add('a_c_snakeredboa10ft_01', 'Large Red Boa', 'small', 1)

-- Birds
add('a_c_californiacondor_01', 'California Condor', 'bird', 1)
add('a_c_chicken_01', 'Chicken', 'bird', 1)
add('a_c_cormorant_01', 'Cormorant', 'bird', 1)
add('a_c_cranewhooping_01', 'Whooping Crane', 'bird', 1)
add('a_c_duck_01', 'Duck', 'bird', 1)
add('a_c_eagle_01', 'Eagle', 'bird', 1)
add('a_c_egret_01', 'Egret', 'bird', 1)
add('a_c_goosecanada_01', 'Canada Goose', 'bird', 1)
add('a_c_hawk_01', 'Hawk', 'bird', 1)
add('a_c_heron_01', 'Heron', 'bird', 1)
add('a_c_loon_01', 'Loon', 'bird', 1)
add('a_c_owl_01', 'Owl', 'bird', 1)
add('a_c_pelican_01', 'Pelican', 'bird', 1)
add('a_c_pheasant_01', 'Pheasant', 'bird', 1)
add('a_c_prairiechicken_01', 'Prairie Chicken', 'bird', 1)
add('a_c_raven_01', 'Raven', 'bird', 1)
add('a_c_rooster_01', 'Rooster', 'bird', 1)
add('a_c_roseatespoonbill_01', 'Roseate Spoonbill', 'bird', 1)
add('a_c_seagull_01', 'Seagull', 'bird', 1)
add('a_c_turkey_01', 'Turkey 01', 'bird', 1)
add('a_c_turkey_02', 'Turkey 02', 'bird', 1)
add('a_c_turkeywild_01', 'Wild Turkey', 'bird', 1)
add('a_c_vulture_01', 'Vulture', 'bird', 1)
add('a_c_carolinaparakeet_01', 'Carolina Parakeet', 'bird', 1)
add('a_c_cedarwaxwing_01', 'Cedar Waxwing', 'bird', 1)
add('a_c_parrot_01', 'Parrot', 'bird', 1)
add('a_c_redfootedbooby_01', 'Red-footed Booby', 'bird', 1)

-- Tiny animals are catalogued for butcher/collection consumers, although
-- normal hunting-wagon carry rules may prevent players from carrying them.
add('a_c_bat_01', 'Bat', 'tiny', 1)
add('a_c_bluejay_01', 'Blue Jay', 'tiny', 1)
add('a_c_cardinal_01', 'Northern Cardinal', 'tiny', 1)
add('a_c_chipmunk_01', 'Chipmunk', 'tiny', 1)
add('a_c_crab_01', 'Crab', 'tiny', 1)
add('a_c_crawfish_01', 'Crawfish', 'tiny', 1)
add('a_c_crow_01', 'Crow', 'tiny', 1)
add('a_c_frogbull_01', 'American Bullfrog', 'tiny', 1)
add('a_c_oriole_01', 'Oriole', 'tiny', 1)
add('a_c_pigeon', 'Pigeon', 'tiny', 1)
add('a_c_quail_01', 'Quail', 'tiny', 1)
add('a_c_rat_01', 'Rat', 'tiny', 1)
add('a_c_robin_01', 'Robin', 'tiny', 1)
add('a_c_songbird_01', 'Songbird', 'tiny', 1)
add('a_c_sparrow_01', 'Sparrow', 'tiny', 1)
add('a_c_toad_01', 'Toad', 'tiny', 1)
add('a_c_woodpecker_01', 'Woodpecker 01', 'tiny', 1)
add('a_c_woodpecker_02', 'Woodpecker 02', 'tiny', 1)

-- Fish use a different carry lifecycle and are not currently safe to persist
-- in a hunting wagon, but remain available to butcher/inventory consumers.
local fishOptions = {
    butcherable = false,
    skinnable = false,
    wagonStorable = false,
    inventoryItem = true,
    carcassType = 'fish',
}
add('a_c_fishbluegil_01_ms', 'Bluegill (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishbluegil_01_sm', 'Bluegill (Small)', 'fish', 1, fishOptions)
add('a_c_fishbullheadcat_01_ms', 'Bullhead Catfish (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishbullheadcat_01_sm', 'Bullhead Catfish (Small)', 'fish', 1, fishOptions)
add('a_c_fishchainpickerel_01_ms', 'Chain Pickerel (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishchainpickerel_01_sm', 'Chain Pickerel (Small)', 'fish', 1, fishOptions)
add('a_c_fishchannelcatfish_01_lg', 'Channel Catfish (Large)', 'fish', 1, fishOptions)
add('a_c_fishchannelcatfish_01_xl', 'Channel Catfish (Extra Large)', 'fish', 1, fishOptions)
add('a_c_fishlakesturgeon_01_lg', 'Lake Sturgeon', 'fish', 1, fishOptions)
add('a_c_fishlargemouthbass_01_lg', 'Largemouth Bass (Large)', 'fish', 1, fishOptions)
add('a_c_fishlargemouthbass_01_ms', 'Largemouth Bass (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishlongnosegar_01_lg', 'Longnose Gar', 'fish', 1, fishOptions)
add('a_c_fishmuskie_01_lg', 'Muskie', 'fish', 1, fishOptions)
add('a_c_fishnorthernpike_01_lg', 'Northern Pike', 'fish', 1, fishOptions)
add('a_c_fishperch_01_ms', 'Perch (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishperch_01_sm', 'Perch (Small)', 'fish', 1, fishOptions)
add('a_c_fishrainbowtrout_01_lg', 'Steelhead Trout (Large)', 'fish', 1, fishOptions)
add('a_c_fishrainbowtrout_01_ms', 'Steelhead Trout (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishredfinpickerel_01_ms', 'Redfin Pickerel (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishredfinpickerel_01_sm', 'Redfin Pickerel (Small)', 'fish', 1, fishOptions)
add('a_c_fishrockbass_01_ms', 'Rock Bass (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishrockbass_01_sm', 'Rock Bass (Small)', 'fish', 1, fishOptions)
add('a_c_fishsalmonsockeye_01_lg', 'Sockeye Salmon (Large)', 'fish', 1, fishOptions)
add('a_c_fishsalmonsockeye_01_ml', 'Sockeye Salmon (Medium-Large)', 'fish', 1, fishOptions)
add('a_c_fishsalmonsockeye_01_ms', 'Sockeye Salmon (Medium-Small)', 'fish', 1, fishOptions)
add('a_c_fishsmallmouthbass_01_lg', 'Smallmouth Bass (Large)', 'fish', 1, fishOptions)
add('a_c_fishsmallmouthbass_01_ms', 'Smallmouth Bass (Medium-Small)', 'fish', 1, fishOptions)

-- Identification-only models that do not behave as ordinary carcass peds.
local peltOptions = { butcherable = false, skinnable = false, wagonStorable = false, carcassType = 'pelt' }
add('a_c_snake_pelt_01', 'Snake Pelt', 'pelt', 1, peltOptions)
add('a_c_snakeblacktailrattle_pelt_01', 'Black-tailed Rattlesnake Pelt', 'pelt', 1, peltOptions)
add('a_c_snakeferdelance_pelt_01', 'Fer-de-Lance Snake Pelt', 'pelt', 1, peltOptions)
add('a_c_snakeredboa_pelt_01', 'Red Boa Snake Pelt', 'pelt', 1, peltOptions)
add('a_c_snakewater_pelt_01', 'Water Snake Pelt', 'pelt', 1, peltOptions)

local aquaticOptions = { butcherable = false, skinnable = false, wagonStorable = false, carcassType = 'aquatic' }
add('a_c_sharkhammerhead_01', 'Hammerhead Shark', 'aquatic', 3, aquaticOptions)
add('a_c_sharktiger', 'Tiger Shark', 'aquatic', 3, aquaticOptions)
add('a_c_turtlesea_01', 'Sea Turtle', 'aquatic', 2, aquaticOptions)
