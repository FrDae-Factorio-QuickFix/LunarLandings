data.raw.item["satellite"].rocket_launch_product = nil

-- Interstellar satellite
data:extend{
  {
    type = "item",
    name = "ll-interstellar-satellite",
    icon = "__LunarLandings__/graphics/item/interstellar-satellite.png",
    icon_size = 64,
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__LunarLandings__/graphics/item/interstellar-satellite.png",
          scale = 0.25,
          mipmap_count = 4,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__LunarLandings__/graphics/item/interstellar-satellite-light.png",
          scale = 0.25,
          mipmap_count = 4,
        },
      },
    },
    subgroup = "space-related",
    order = "y[interstellar-satellite]",
    stack_size = 1,
    rocket_launch_product = {type="item", name="space-science-pack", amount=1000}
  },
  {
    type = "recipe",
    name = "ll-interstellar-satellite",
    energy_required = 20,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {type="item", name="satellite", amount=1},
      {type="item", name="low-density-structure", amount=50},
      {type="item", name="rocket-control-unit", amount=50},
      {type="item", name="nuclear-fuel", amount=10},
      {type="item", name="ll-quantum-processor", amount=100},
    },
    results = {{type="item", name="ll-interstellar-satellite", amount=1}},
    requester_paste_multiplier = 1
  },

}

