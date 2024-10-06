-- TODO tech orders

x_util.add_unlock("advanced-material-processing-2", "ll-boil-water")

x_util.add_unlock("nuclear-power", "ll-rtg")

-- TODO 2.0
--x_util.remove_prerequisite("rocket-control-unit", "utility-science-pack")
--x_util.remove_research_ingredient("rocket-control-unit", "utility-science-pack")
--x_util.add_prerequisite("rocket-control-unit", "chemical-science-pack")
--x_util.add_unlock("rocket-control-unit", "ll-pack-rocket-control-unit")
--x_util.add_unlock("rocket-control-unit", "ll-unpack-rocket-control-unit")

x_util.add_unlock("low-density-structure", "ll-pack-low-density-structure")
x_util.add_unlock("low-density-structure", "ll-unpack-low-density-structure")

x_util.remove_prerequisite("processing-unit", "chemical-science-pack")
x_util.add_prerequisite("processing-unit", "ll-luna-automation")
x_util.add_prerequisite("processing-unit", "ll-moon-rock-processing")

data.raw.technology["rocket-silo"].unit.count = 500
x_util.remove_prerequisite("rocket-silo", "speed-module-3")
x_util.remove_prerequisite("rocket-silo", "productivity-module-3")
x_util.add_prerequisite("rocket-silo", "low-density-structure")
x_util.add_prerequisite("rocket-silo", "electric-engine")
x_util.remove_research_ingredient("rocket-silo", "utility-science-pack")
x_util.remove_research_ingredient("rocket-silo", "production-science-pack")
x_util.add_unlock("rocket-silo", "satellite")

x_util.add_prerequisite("production-science-pack", "ll-heat-shielding")

x_util.add_prerequisite("power-armor-mk2", "ll-quantum-computing")
x_util.add_research_ingredient("power-armor-mk2", "production-science-pack")
x_util.add_research_ingredient("power-armor-mk2", "ll-space-science-pack")

x_util.add_prerequisite("spidertron", "ll-space-science-pack")
x_util.remove_prerequisite("spidertron", "rocket-control-unit")

x_util.remove_prerequisite("atomic-bomb", "rocket-control-unit")

x_util.remove_prerequisite("space-science-pack", "rocket-silo")
x_util.add_prerequisite("space-science-pack", "ll-interstellar-rocket-silo")
x_util.remove_recipe_effect("space-science-pack", "satellite")
x_util.add_unlock("space-science-pack", "ll-interstellar-satellite")
--data.raw.technology["space-science-pack"].unit.count = 3000  -- TODO 2.0

data:extend{
  {
    type = "technology",
    name = "ll-used-rocket-part-recycling",
    icon = "__base__/graphics/icons/rocket-part.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-used-rocket-part-recycling"
      },
    },
    prerequisites = {"ll-luna-exploration"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-luna-exploration",
    icon = "__LunarLandings__/graphics/technology/luna.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-landing-pad"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-part-down"
      }
    },
    --prerequisites = {"rocket-silo"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-moon-rock-processing",
    icon = "__LunarLandings__/graphics/technology/silicon-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-moon-rock-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-moon-rock-processing-with-oxygen"
      },
      --[[{
        type = "unlock-recipe",
        recipe = "ll-moon-rock-processing-with-helium"
      },]]
      --[[{
        type = "unlock-recipe",
        recipe = "ll-moon-rock-processing-with-oxygen-helium"
      },]]
      {
        type = "unlock-recipe",
        recipe = "ll-silicon"
      },
    },
    prerequisites = {"ll-luna-exploration", "advanced-material-processing-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-heat-shielding",
    icon = "__space-exploration-graphics__/graphics/technology/heat-shielding.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-heat-shielding"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-pack-heat-shielding"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-unpack-heat-shielding"
      },
    },
    prerequisites = {"ll-moon-rock-processing"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-luna-automation",
    icon = "__LunarLandings__/graphics/technology/low-gravity-assembling-machine.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-low-grav-assembling-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-oxygen-diffuser"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-lunar-foundation"
      }
    },
    --prerequisites = {"ll-luna-exploration"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-ice-extraction",
    icon = "__LunarLandings__/graphics/technology/core-extractor.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-core-extractor"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-melt-ice"
      },
    },
    prerequisites = {"advanced-material-processing-2", "ll-luna-exploration"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-arc-furnace",
    icon = "__LunarLandings__/graphics/technology/arc-furnace.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-arc-furnace"
      },
    },
    prerequisites = {"production-science-pack", "nuclear-power"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-heat-furnace",
    icon_size = 256,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-heat-furnace"
      }
    },
    prerequisites = {"ll-arc-furnace"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-c-a"
  },
  {
    type = "technology",
    name = "ll-steam-condenser",
    icon = "__LunarLandings__/graphics/technology/steam-condenser.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-steam-condenser"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-condense-steam"
      },
    },
    prerequisites = {"production-science-pack", "nuclear-power"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-rich-moon-rock-processing",
    icon = "__LunarLandings__/graphics/icons/aluminium-plate.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-rich-moon-rock-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-aluminium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-red-mud-recovery"
      },
    },
    prerequisites = {"ll-arc-furnace"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },

  {
    type = "technology",
    name = "ll-space-data-collection",
    icon = "__space-exploration-graphics__/graphics/technology/telescope.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-telescope"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-blank-data-card"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-data-card"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-data-card-reformatting"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-broken-data-card-recycling"
      },

    },
    --prerequisites = {"utility-science-pack", "production-science-pack"},
    prerequisites = {"advanced-circuit"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        --{"production-science-pack", 1},
        --{"utility-science-pack", 1},
      },
      time = 30
    },
    order = "c-o-a"
  },
  {
    type = "technology",
    name = "ll-space-science-pack",
    icon = "__LunarLandings__/graphics/technology/space-science-pack.png",
    icon_size = 256,
    prerequisites = {"ll-space-data-collection", "ll-rich-moon-rock-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-space-science-pack"
      }
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-low-density-structure-aluminium",
    icon_size = 256,
    icon = "__base__/graphics/technology/low-density-structure.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-low-density-structure-aluminium"
      }
    },
    prerequisites = {"ll-space-science-pack"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"ll-space-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ll-mass-driver",
    icon = "__LunarLandings__/graphics/technology/mass-driver.png",
    icon_size = 286,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-mass-driver"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-mass-driver-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-mass-driver-capsule"
      },
    },
    prerequisites = {"ll-space-science-pack", "artillery", "logistic-system"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"ll-space-science-pack", 1},
      },
      time = 60
    },
    order = "d-e-f"
  },
  {
    type = "technology",
    name = "ll-quantum-resource-processing",
    icon = "__LunarLandings__/graphics/technology/neodym-refining.png",
    icon_size = 128,
    prerequisites = {"ll-space-science-pack", "ll-ice-extraction"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-astrocrystal-processing"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        --{"utility-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-quantum-computing",
    icon = "__LunarLandings__/graphics/icons/quantum-processor.png",
    icon_size = 64,
    prerequisites = {"ll-quantum-resource-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-quantum-processor"
      },
    },
    unit =
    {
      count = 600,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        --{"utility-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-quantum-resonation",
    --icon = "__LunarLandings__/graphics/technology/computer-core.png",
    --icon_size = 256,
    icon = "__LunarLandings__/graphics/technology/polariton.png",
    icon_size = 256,
    prerequisites = {"ll-quantum-computing", "utility-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-quantum-resonator"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-superposition-up-down"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-superposition-right-left"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-polarisation-up"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-polarisation-right"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-polarisation-left"
      },
      {
        type = "unlock-recipe",
        recipe = "ll-polarisation-down"
      },

    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-quantum-data-collection",
    icon = "__space-exploration-graphics__/graphics/technology/telescope.png",
    icon_size = 128,
    prerequisites = {"ll-quantum-resonation"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-quantum-data-card"
      },
    },
    unit =
    {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-quantum-science-pack",
    icon = "__LunarLandings__/graphics/technology/quantum-science-pack.png",
    icon_size = 256,
    prerequisites = {"ll-quantum-data-collection"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-quantum-science-pack"
      },
    },
    unit =
    {
      count = 1500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 45
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-quantum-module",
    icon = "__LunarLandings__/graphics/technology/quantum-module.png",
    icon_size = 256,
    prerequisites = {"ll-quantum-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-quantum-module"
      },
    },
    unit =
    {
      count = 1500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 45
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-interstellar-rocket-silo",
    icon = "__space-exploration-graphics__/graphics/technology/probe-rocket.png",
    icon_size = 128,
    prerequisites = {"ll-quantum-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ll-rocket-silo-interstellar"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-part-interstellar"
      },
    },
    unit =
    {
      count = 3000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"ll-space-science-pack", 1}
      },
      time = 60
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-research-productivity-1",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    icon_size = 256,
    prerequisites = {"ll-space-science-pack"},
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.05
      }
    },
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"ll-space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-a"
  },
  {
    type = "technology",
    name = "ll-research-productivity-2",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    icon_size = 256,
    prerequisites = {"ll-research-productivity-1"},
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.05
      }
    },
    unit =
    {
      count = 2000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"ll-space-science-pack", 1},
        {"ll-quantum-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-a"
  },

}
