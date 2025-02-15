# Overwrite Enchantments from Chestplate
data modify entity @s Item.tag.Enchantments set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_chestplate"}},distance=..1,limit=1] Item.tag.Enchantments

# Remove Ingredients
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_chestplate"}},distance=..1,limit=1]

# Modify Elytra
data merge entity @s {Motion:[0.0d,0.3d,0.0d],Item:{tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:6,Operation:0,UUIDMost:49405,UUIDLeast:187789}],display:{Lore:["{\"text\":\"Iron Plated\",\"color\":\"gray\",\"italic\":false}"]}}}}

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~