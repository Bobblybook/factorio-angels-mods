local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --Silver
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "silver-ore-processing",
    category = "ore-processing",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"silver-ore", 4}
    },
    results =
    {
      {type="item", name="processed-silver", amount=2},
    },
    icon_size = 32,
    order = "b[processed-silver]",
  },
  {
    type = "recipe",
    name = "silver-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-silver",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-silver", 3}
    },
    results =
    {
      {type="item", name="pellet-silver", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-silver]",
  },
  {
    type = "recipe",
    name = "processed-silver-smelting",
    category = "liquifying",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-silver", amount=4},
      {type="fluid", name="liquid-nitric-acid", amount=60},
    },
    results =
    {
      {type="item", name="solid-silver-nitrate", amount=12},
    },
    icon_size = 32,
    order = "d[solid-silver-nitrate]",
  },
  {
    type = "recipe",
    name = "pellet-silver-smelting",
    category = "chemical-smelting",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-silver", amount=8},
      {type="item", name="solid-sodium-cyanide", amount=6},
      {type="fluid", name="water-purified", amount=60},
      {type="fluid", name="gas-oxygen", amount=60},
    },
    results =
    {
      {type="item", name="solid-sodium-silver-cyanide", amount=24},
      {type="item", name="solid-sodium-hydroxide", amount=4},
    },
    main_product= "solid-sodium-silver-cyanide",
    icon_size = 32,
    order = "e[solid-sodium-silver-cyanide]",
  },
  {
    type = "recipe",
    name = "solid-sodium-silver-cyanide-smelting",
    category = "chemical-smelting",
    subgroup = "angels-silver",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-sodium-silver-cyanide", amount=12},
    },
    results =
    {
      {type="item", name="cathode-silver", amount=12},
    },
    icon_size = 32,
    order = "f[cathode-silver]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "silver-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="silver-ore", amount=24},
    },
    results =
    {
      {type="item", name="ingot-silver", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-silver]-a",
  },
  {
    type = "recipe",
    name = "solid-silver-nitrate-smelting",
    category = "blast-smelting",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-silver-nitrate", amount=24},
    },
    results =
    {
      {type="item", name="ingot-silver", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-silver]-b",
  },
  {
    type = "recipe",
    name = "cathode-silver-smelting",
    category = "blast-smelting",
    subgroup = "angels-silver",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cathode-silver", amount=24},
    },
    results =
    {
      {type="item", name="ingot-silver", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "g[ingot-silver]-c",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-silver-smelting",
    category = "induction-smelting",
    subgroup = "angels-silver-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-silver", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-silver", amount=120},
    },
    icon_size = 32,
    order = "h[liquid-molten-silver]",
  },
  -- order i is reserved for silver sheet coil
  {
    type = "recipe",
    name = "angels-wire-coil-silver-casting",
    category = "strand-casting",
    subgroup = "angels-silver-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-silver", amount=40},
        {type="fluid", name="liquid-molten-copper", amount=40},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-silver", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-silver", amount=50 * intermediatemulti},
        {type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-silver", amount=4}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },    
    icon_size = 32,
    order = "j[angels-wire-coil-silver]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-casting-fast",
    category = "strand-casting",
    subgroup = "angels-silver-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
          {type="fluid", name="liquid-molten-silver", amount=70},
          {type="fluid", name="liquid-molten-copper", amount=70},
          {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
          {type="item", name="angels-wire-coil-silver", amount=8},
          {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-silver",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-silver", amount=90 * intermediatemulti},
        {type="fluid", name="liquid-molten-copper", amount=90 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-wire-coil-silver", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-silver",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },    
    icon_size = 32,
    order = "j[angels-wire-coil-silver]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-silver",
    category = "casting",
    subgroup = "angels-silver-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-silver", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-silver", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-silver", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-silver", amount=4}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-silver.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-silver.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "k[angels-plate-silver]-b", -- k[angels-plate-silver]-a reserved for silver ore smelting (see bob overrides)
  },
  {
    type = "recipe",
    name = "angels-wire-coil-silver-converting",
    category = "advanced-crafting",
    subgroup = "angels-silver-casting",
    energy_required = 1,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-wire-coil-silver", amount=4},
    },
    results =
    {
      {type="item", name="angels-wire-silver", amount=16},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-silver.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "l[angels-wire-silver]",
  },
  -- order m reserved for bob
}
)