-- drop_config.lua
local drop_table = {
  -- Vanilla biters
  ["small-biter"] = {0, 2},
  ["medium-biter"] = {2, 4},
  ["big-biter"] = {4, 6},
  ["behemoth-biter"] = {6, 10},

  -- Vanilla spitters
  ["small-spitter"] = {0, 3},
  ["medium-spitter"] = {2, 5},
  ["big-spitter"] = {4, 7},
  ["behemoth-spitter"] = {6, 11},


  -- Worms
  ["small-worm-turret"] = {5, 8},
  ["medium-worm-turret"] = {8, 12},
  ["big-worm-turret"] = {12, 18},
  ["behemoth-worm-turret"] = {18, 25},

  -- Hives (vanilla)
  ["biter-spawner"] = {25, 45},
  ["spitter-spawner"] = {25, 45},

  --Gleba Enemies(Space Age)
  ["small-wriggler-pentapod-premature"] = {0, 2},
  ["medium-wriggler-pentapod-premature"] = {2, 4},
  ["big-wriggler-pentapod-premature"] = {4, 6},

  ["small-strafer-pentapod"] = {4, 6},
  ["medium-strafer-pentapod"] = {7, 11},
  ["big-strafer-pentapod"] = {12, 16},

  ["small-stomper-pentapod"] = {16, 20},
  ["medium-stomper-pentapod"] = {20, 28},
  ["big-stomper-pentapod"] = {28, 32},

  --Gleba Hives(Space Age)

  ["gleba-spawner-small"] = {4, 8},
  ["gleba-spawner"] = {8, 16},

  --Gleba Plants(Space Age)

  ["boompuff"] = {0, 4},
  ["stingfrond"] = {0, 4},
  ["funneltrunk"] = {0, 4},
  ["teflilly"] = {0, 4},
  ["sunnycomb"] = {0, 4},
  ["slipstack"] = {0, 4},
  ["lickmaw"] = {0, 4},
  ["hairyclubnub"] = {0, 4},
}

-- Rampant enemies
drop_table["acid-biter"] = {3, 5}
drop_table["fire-biter"] = {3, 5}
drop_table["electric-biter"] = {3, 7}
drop_table["nuclear-biter"] = {4, 9}
drop_table["troll-biter"] = {1, 2}
drop_table["spawner-biter"] = {6, 12}
drop_table["laser-biter"] = {3, 9}
drop_table["wasp-biter"] = {2, 6}

-- Armoured Biters (Snappers)
drop_table["small-armoured-biter"] = {2, 7}
drop_table["medium-armoured-biter"] = {3, 13}
drop_table["big-armoured-biter"] = {5, 16}
drop_table["behemoth-armoured-biter"] = {7, 26}

return drop_table