local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --TIN
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "tin-ore-processing",
    category = "ore-processing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"tin-ore", 4}
    },
    results =
    {
      {type="item", name="processed-tin", amount=2},
    },
    icon_size = 32,
    order = "b[processed-tin]",
  },
  {
    type = "recipe",
    name = "tin-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-tin",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-tin", 3}
    },
    results =
    {
      {type="item", name="pellet-tin", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-tin]",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "tin-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="tin-ore", amount=24},
    },
    results =
    {
      {type="item", name="ingot-tin", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d[ingot-tin]-a",
  },
  {
    type = "recipe",
    name = "processed-tin-smelting",
    category = "blast-smelting",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-tin", amount=8},
      {type="item", name="solid-coke", amount=2},
    },
    results =
    {
      {type="item", name="ingot-tin", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d[ingot-tin]-b",
  },
  {
    type = "recipe",
    name = "pellet-tin-smelting",
    category = "blast-smelting",
    subgroup = "angels-tin",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-tin", amount=8},
      {type="item", name="solid-carbon", amount=2},
    },
    results =
    {
      {type="item", name="ingot-tin", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_3.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "d[ingot-tin]-c",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-tin-smelting",
    category = "induction-smelting",
    subgroup = "angels-tin-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-tin", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-tin", amount=120},
    },
    main_product= "liquid-molten-tin",
    icon_size = 32,
    order = "e[liquid-molten-tin]",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-casting",
    category = "strand-casting",
    subgroup = "angels-tin-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=40},
        {type="fluid", name="liquid-molten-copper", amount=40},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-tin", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=50 * intermediatemulti},
        {type="fluid", name="liquid-molten-copper", amount=50 * intermediatemulti},
        {type="fluid", name="water", amount=40},
      },
      results =
      {
        {type="item", name="angels-wire-coil-tin", amount=4}
      },
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f[angels-wire-coil-tin]-a",
  },
  {
    type = "recipe",
    name = "angels-wire-coil-tin-casting-fast",
    category = "strand-casting",
    subgroup = "angels-tin-casting",
    normal =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=70},
        {type="fluid", name="liquid-molten-copper", amount=70},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-wire-coil-tin", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-tin",
    },
    expensive =
    {
      enabled = "false",
      energy_required = 2,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=90 * intermediatemulti},
        {type="fluid", name="liquid-molten-copper", amount=90 * intermediatemulti},
        {type="fluid", name="liquid-coolant", amount=40, maximum_temperature = 50},
      },
      results =
      {
        {type="item", name="angels-wire-coil-tin", amount=8},
        {type="fluid", name="liquid-coolant-used", amount=40, temperature = 300},
      },
      main_product = "angels-wire-coil-tin",
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }
    },
    icon_size = 32,
    order = "f[angels-wire-coil-tin]-b",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-tin",
    category = "casting",
    subgroup = "angels-tin-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-tin", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-tin", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-tin", amount=4}
      },
    },
    icons = {
      { 
        icon = "__angelssmelting__/graphics/icons/plate-tin.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/molten-tin.png",
        scale = 0.4375,
        shift = { -10, -10},
      },
    },
    icon_size = 32,
    order = "g[angels-plate-tin]-c", -- g[angels-plate-tin]-a reserved for crushed bobmonium smelting (see global overrides)
  },                                 -- g[angels-plate-tin]-b reserved for tin ore smelting (see bob overrides)
  {
    type = "recipe",
    name = "angels-wire-coil-tin-converting",
    category = "advanced-crafting",
    subgroup = "angels-tin-casting",
    energy_required = 1,
    enabled = "false",
    allow_decomposition = false,
    ingredients =
    {
      {type="item", name="angels-wire-coil-tin", amount=4},
    },
    results =
    {
      {type="item", name="angels-wire-tin", amount=16},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/wire-tin.png",
      },
      {
        icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
        scale = 0.4375,
        shift = { -10, -10},
      }
    },
    icon_size = 32,
    order = "h[angels-wire-tin]-b", -- h[angels-wire-tin]-a reserved for bob (see bob override)
  },
}
)