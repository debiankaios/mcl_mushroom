-- Warped fungus
-- Crimson fungus
--Functions and Biomes

-- WARNING: The most comments are in german. Please Translate with an translater if you don't speak good german

minetest.register_node("mcl_mushroom:warped_fungus", {
  description = "Warped Fungus Mushroom",
	drawtype = "plantlike",
	tiles = { "farming_warped_fungus.png" },
	inventory_image = "farming_warped_fungus.png",
	wield_image = "farming_warped_fungus.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = {dig_immediate=3,mushroom=1,attached_node=1,dig_by_water=1,destroy_by_lava_flow=1,dig_by_piston=1,enderman_takable=1,deco_block=1},

	light_source = 1,
	selection_box = {
		type = "fixed",
		fixed = { -3/16, -0.5, -3/16, 3/16, -2/16, 3/16 },
	},
	node_placement_prediction = "",
	on_rightclick = function(pos, node, pointed_thing, player)
    if pointed_thing:get_wielded_item():get_name() == "mcl_dye:white" then
      local nodepos = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
      if nodepos.name == "mcl_mushroom:warped_nylium" or nodepos.name == "mcl_nether:netherrack" then
        local random = math.random(1, 5)
        if random == 1 then
          generate_warped_tree(pos)
        end
      end
    end
  end,
	_mcl_blast_resistance = 0,

  stack_max = 64,
})

minetest.register_node("mcl_mushroom:warped_wart_block", {
  description = "Warped Wart Block",
  tiles = {"warped_wart_block.png"},
  groups = {handy=1,hoe=7,swordy=1, leafdecay=leafdecay_distance, flammable=2, leaves=1, deco_block=1, dig_by_piston=1, fire_encouragement=30, fire_flammability=60},
  stack_max = 64,
  _mcl_hardness = 2,
})

minetest.register_node("mcl_mushroom:shroomlight", {
  description = "Shroomlight",
  tiles = {"shroomlight.png"},
  groups = {handy=1,hoe=7,swordy=1, leafdecay=leafdecay_distance, flammable=2, leaves=1, deco_block=1, dig_by_piston=1, fire_encouragement=30, fire_flammability=60},
  stack_max = 64,
  _mcl_hardness = 2,
  light_source = 15
})

minetest.register_node("mcl_mushroom:warped_hyphae", {
  description = "Warped Hyphae",
  tiles = {"warped_hyphae.png",
           "warped_hyphae.png",
           "warped_hyphae_side.png",
           "warped_hyphae_side.png",
           "warped_hyphae_side.png",
           "warped_hyphae_side.png",
         },
  groups = {handy=5,axey=1, bark=1, flammable=2, building_block=1, material_wood=1, fire_encouragement=5, fire_flammability=5},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 2,
})

minetest.register_node("mcl_mushroom:warped_nylium", {
  description = "Warped Nylium",
  tiles = {"warped_wart_block.png",
           "mcl_nether_netherrack.png",
           "mcl_nether_netherrack.png^warped_nylium_side.png",
           "mcl_nether_netherrack.png^warped_nylium_side.png",
           "mcl_nether_netherrack.png^warped_nylium_side.png",
           "mcl_nether_netherrack.png^warped_nylium_side.png",
         },
  groups = {pickaxey=1, building_block=1, material_stone=1},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 0.4,
  _mcl_blast_resistance = 0.4,
})

minetest.register_node("mcl_mushroom:warped_hyphae_wood", {
  description = "Warped Hyphae",
  tiles = {"warped_hyphae_wood.png"},
  groups = {handy=5,axey=1, flammable=3,wood=1,building_block=1, material_wood=1, fire_encouragement=5, fire_flammability=20},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 2,
})

minetest.register_craft({
  output = "mcl_mushroom:warped_hyphae_wood 4",
  recipe = {
    {"mcl_mushroom:warped_hyphae"},
  }
})

minetest.register_craft({
  output = "mcl_mushroom:warped_nyliumd 2",
  recipe = {
    {"mcl_mushroom:warped_wart_block"},
    {"mcl_nether:netherrack"},
  }
})

minetest.register_abm({
	label = "mcl_mushroom:warped_fungus",
	nodenames = {"mcl_mushroom:warped_fungus"},
	interval = 1,
	chance = 82,
	action = function(pos)
    local nodepos = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
    if nodepos.name == "mcl_mushroom:warped_nylium" or nodepos.name == "mcl_nether:netherrack" then
      if pos.y < -28400 then
        generate_warped_tree(pos)
      end
    end
  end
})



minetest.register_node("mcl_mushroom:crimson_fungus", {
  description = "Crimson Fungus Mushroom",
	drawtype = "plantlike",
	tiles = { "farming_crimson_fungus.png" },
	inventory_image = "farming_crimson_fungus.png",
	wield_image = "farming_crimson_fungus.png",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	groups = {dig_immediate=3,mushroom=1,attached_node=1,dig_by_water=1,destroy_by_lava_flow=1,dig_by_piston=1,enderman_takable=1,deco_block=1},

	light_source = 1,
	selection_box = {
		type = "fixed",
		fixed = { -3/16, -0.5, -3/16, 3/16, -2/16, 3/16 },
	},
	node_placement_prediction = "",
	on_rightclick = function(pos, node, pointed_thing, player)
    if pointed_thing:get_wielded_item():get_name() == "mcl_dye:white" then
      local nodepos = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
      if nodepos.name == "mcl_mushroom:crimson_nylium" or nodepos.name == "mcl_nether:netherrack" then
        local random = math.random(1, 5)
        if random == 1 then
          generate_crimson_tree(pos)
        end
      end
    end
  end,
	_mcl_blast_resistance = 0,

  stack_max = 64,
})

minetest.register_node("mcl_mushroom:crimson_hyphae", {
  description = "Crimson Hyphae",
  tiles = {"crimson_hyphae.png",
           "crimson_hyphae.png",
           "crimson_hyphae_side.png",
           "crimson_hyphae_side.png",
           "crimson_hyphae_side.png",
           "crimson_hyphae_side.png",
         },
  groups = {handy=5,axey=1, bark=1, flammable=2, building_block=1, material_wood=1, fire_encouragement=5, fire_flammability=5},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 2,
})

minetest.register_node("mcl_mushroom:crimson_hyphae_wood", {
  description = "Crimson Hyphae Wood",
  tiles = {"crimson_hyphae_wood.png"},
  groups = {handy=5,axey=1, flammable=3,wood=1,building_block=1, material_wood=1, fire_encouragement=5, fire_flammability=20},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 2,
})

minetest.register_node("mcl_mushroom:crimson_nylium", {
  description = "Warped Nylium",
  tiles = {"nether_wart_block.png",
           "mcl_nether_netherrack.png",
           "mcl_nether_netherrack.png^crimson_nylium_side.png",
           "mcl_nether_netherrack.png^crimson_nylium_side.png",
           "mcl_nether_netherrack.png^crimson_nylium_side.png",
           "mcl_nether_netherrack.png^crimson_nylium_side.png",
         },
  groups = {pickaxey=1, building_block=1, material_stone=1},
  paramtype2 = "facedir",
  stack_max = 64,
  _mcl_hardness = 0.4,
  _mcl_blast_resistance = 0.4,
})


minetest.register_abm({
	label = "mcl_mushroom:crimson_fungus",
	nodenames = {"mcl_mushroom:crimson_fungus"},
	interval = 1,
	chance = 82,
	action = function(pos)
    local nodepos = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
    if nodepos.name == "mcl_mushroom:crimson_nylium" or nodepos.name == "mcl_nether:netherrack" then
      if pos.y < -28400 then
        generate_warped_tree(pos)
      end
    end
  end
})

function generate_warped_tree(pos)
  -- Baumgenerator
  -- Warzen
  -- erste Etage
  -- 2+
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  --1+
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  --0
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  --2-
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })


  -- zweite etage
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z + 2}, { name = "mcl_mushroom:warped_wart_block" })
  --1+
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  --0
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  --2-
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z - 2}, { name = "mcl_mushroom:warped_wart_block" })


  -- dritte etage
  --1+
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  --0
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })

  -- vierte Etage
  --1+
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z + 1}, { name = "mcl_mushroom:warped_wart_block" })
  --0
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z - 1}, { name = "mcl_mushroom:warped_wart_block" })
  -- fünfte Etage
  minetest.set_node({x = pos.x, y = pos.y + 7, z = pos.z}, { name = "mcl_mushroom:warped_wart_block" })

  -- Pilzlich
  local randomgenerate = math.random(1, 2)
  if randomgenerate == 1 then
    local randomx = math.random(-2, 2)
    local randomz = math.random(-2, 2)
    minetest.set_node({x = pos.x + randomx, y = pos.y + 3, z = pos.z + randomz}, { name = "mcl_mushroom:shroomlight" })
  end
  local randomgenerate = math.random(1, 8)
  if randomgenerate == 4 then
    local randomx = math.random(-2, 2)
    local randomz = math.random(-2, 2)
    minetest.set_node({x = pos.x + randomx, y = pos.y + 3, z = pos.z + randomz}, { name = "mcl_mushroom:shroomlight" })
  end
  -- Holz
  minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, { name = "mcl_mushroom:warped_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, { name = "mcl_mushroom:warped_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 2, z = pos.z}, { name = "mcl_mushroom:warped_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:warped_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:warped_hyphae" })
end




function generate_crimson_tree(pos)
  -- Baumgenerator
  -- Warzen
  -- erste Etage
  -- 2+
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  --1+
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  --0
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  --2-
  minetest.set_node({x = pos.x + 2, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 3, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 3, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })


  -- zweite etage
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z + 2}, { name = "mcl_nether:nether_wart_block" })
  --1+
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  --0
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  --2-
  minetest.set_node({x = pos.x + 2, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x + 1, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 4, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 2 , y = pos.y + 4, z = pos.z - 2}, { name = "mcl_nether:nether_wart_block" })


  -- dritte etage
  --1+
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  --0
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 1, y = pos.y + 5, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 5, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 5, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })

  -- vierte Etage
  --1+
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z + 1}, { name = "mcl_nether:nether_wart_block" })
  --0
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z}, { name = "mcl_nether:nether_wart_block" })
  --1-
  minetest.set_node({x = pos.x + 1, y = pos.y + 6, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x, y = pos.y + 6, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  minetest.set_node({x = pos.x - 1 , y = pos.y + 6, z = pos.z - 1}, { name = "mcl_nether:nether_wart_block" })
  -- fünfte Etage
  minetest.set_node({x = pos.x, y = pos.y + 7, z = pos.z}, { name = "mcl_nether:nether_wart_block" })

  -- Pilzlich


  local randomx = math.random(-2, 2)
  local randomz = math.random(-2, 2)
  minetest.set_node({x = pos.x + randomx, y = pos.y + 3, z = pos.z + randomz}, { name = "mcl_mushroom:shroomlight" })

  local randomgenerate = math.random(1, 2)
  if randomgenerate == 2 then
    local randomx = math.random(-2, 2)
    local randomz = math.random(-2, 2)
    minetest.set_node({x = pos.x + randomx, y = pos.y + 3, z = pos.z + randomz}, { name = "mcl_mushroom:shroomlight" })
  end
  -- Holz
  minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, { name = "mcl_mushroom:crimson_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, { name = "mcl_mushroom:crimson_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 2, z = pos.z}, { name = "mcl_mushroom:crimson_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 3, z = pos.z}, { name = "mcl_mushroom:crimson_hyphae" })
  minetest.set_node({x = pos.x, y = pos.y + 4, z = pos.z}, { name = "mcl_mushroom:crimson_hyphae" })
end


--[[
FIXME: Biomes are to rare
FIXME: Decoration don't do generate
-- biomes in test!
minetest.register_biome({
  name = "WarpedForest",
  node_filler = "mcl_nether:netherrack",
  node_stone = "mcl_nether:netherrack",
  node_top = "mcl_mushroom:warped_nylium",
  node_water = "air",
  node_river_water = "air",
  y_min = -29065,
  y_max = -28940,
  heat_point = 100,
  humidity_point = 0,
  _mcl_biome_type = "hot",
  _mcl_palette_index = 19,
})
minetest.register_decoration({
  deco_type = "simple",
  place_on = {"mcl_mushroom:warped_nylium"},
  sidelen = 16,
  noise_params = {
    offset = 0.01,
    scale = 0.0022,
    spread = {x = 250, y = 250, z = 250},
    seed = 2,
    octaves = 3,
    persist = 0.66
  },
  biomes = {"WarpedForest"},
  y_min = -29065,
  y_max = -28940 + 80,
  decoration = "mcl_mushroom:warped_fungus",
})
]]
