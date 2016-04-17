#################
#### EXAMPLE ####
#################

# ---= INIT =--- #
scoreboard objectives add CPXCCraft dummy

# ---= CLOCK =--- #
scoreboard players set @e[type=Item] CPXCCraft 1 {Item:{id:"minecraft:iron_ingot",Count:4b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 2 {Item:{id:"minecraft:chest",Count:1b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 3 {Item:{id:"minecraft:dye",Damage:1s,Count:4b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 4 {Item:{id:"minecraft:diamond",Count:1b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 5 {Item:{id:"minecraft:diamond",Count:4b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 6 {Item:{id:"minecraft:apple",Count:1b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 7 {Item:{id:"minecraft:skull",Damage:1s,Count:1b},OnGround:1b}

scoreboard players set @e[type=Item] CPXCCraft 8 {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{empty_canister:1b}},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 9 {Item:{id:"minecraft:dye",Damage:1s,Count:1b,tag:{red_heart:1b}},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 10 {Item:{id:"minecraft:apple",Count:1b,tag:{jewel_apple:1b}},OnGround:1b}

scoreboard players set @e[type=Item] CPXCCraft 11 {Item:{id:"minecraft:golden_apple",Count:1b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 12 {Item:{id:"minecraft:dye",Damage:1s,Count:1b,tag:{red_heart_canister:1b}},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 13 {Item:{id:"minecraft:dye",Damage:11s,Count:4b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 14 {Item:{id:"minecraft:nether_star",Count:1b},OnGround:1b}
scoreboard players set @e[type=Item] CPXCCraft 15 {Item:{id:"minecraft:dye",Damage:11s,Count:1b,tag:{yellow_heart:1b}},OnGround:1b}

execute @e[type=Item,score_CPXCCraft_min=1,score_CPXCCraft=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=2,score_CPXCCraft=2,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"Empty Canister",Lore:["Used to make heart canisters"]},ench:[],HideFlages:63b,empty_canister:1b}}}

execute @e[type=Item,score_CPXCCraft_min=1,score_CPXCCraft=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=2,score_CPXCCraft=2,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=1,score_CPXCCraft=2,r=2]

execute @e[type=Item,score_CPXCCraft_min=3,score_CPXCCraft=3] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=4,score_CPXCCraft=4,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:dye",Damage:1s,Count:1b,tag:{display:{Name:"Red Heart",Lore:["Used to make heart canisters"]},ench:[],HideFlages:63b,red_heart:1b}}}

execute @e[type=Item,score_CPXCCraft_min=3,score_CPXCCraft=3] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=4,score_CPXCCraft=4,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=3,score_CPXCCraft=4,r=2]

execute @e[type=Item,score_CPXCCraft_min=5,score_CPXCCraft=5] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=6,score_CPXCCraft=6,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:apple",Count:1b,tag:{display:{Name:"Jeweled Apple",Lore:["Used to make heart canisters"]},ench:[],HideFlages:63b,jewel_apple:1b}}}

execute @e[type=Item,score_CPXCCraft_min=5,score_CPXCCraft=5] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=6,score_CPXCCraft=6,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=5,score_CPXCCraft=6,r=2]

execute @e[type=Item,score_CPXCCraft_min=7,score_CPXCCraft=7] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=8,score_CPXCCraft=8,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=9,score_CPXCCraft=9,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=10,score_CPXCCraft=10,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:dye",Damage:1s,Count:1b,tag:{display:{Name:"Red Heart Canister",Lore:["Put in your inventory", "for extra hearts"]},ench:[],HideFlages:63b,red_heart_canister:1b}}}

execute @e[type=Item,score_CPXCCraft_min=7,score_CPXCCraft=7] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=8,score_CPXCCraft=8,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=9,score_CPXCCraft=9,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=10,score_CPXCCraft=10,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=7,score_CPXCCraft=10,r=2]

execute @e[type=Item,score_CPXCCraft_min=13,score_CPXCCraft=13] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=14,score_CPXCCraft=14,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:dye",Damage:11s,Count:1b,tag:{display:{Name:"Yellow Heart",Lore:["Used to make heart canisters"]},ench:[],HideFlages:63b,yellow_heart:1b}}}

execute @e[type=Item,score_CPXCCraft_min=13,score_CPXCCraft=13] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=14,score_CPXCCraft=14,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=13,score_CPXCCraft=14,r=2]

execute @e[type=Item,score_CPXCCraft_min=11,score_CPXCCraft=11] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=12,score_CPXCCraft=12,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=15,score_CPXCCraft=15,r=1] ~ ~ ~ summon Item ~ ~3 ~ {Item:{id:"minecraft:dye",Damage:11s,Count:1b,tag:{display:{Name:"Yellow Heart Canister",Lore:["Put in your inventory", "for extra hearts"]},ench:[],HideFlages:63b,yellow_heart_canister:1b}}}

execute @e[type=Item,score_CPXCCraft_min=11,score_CPXCCraft=11] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=12,score_CPXCCraft=12,r=1] ~ ~ ~ execute @e[type=Item,score_CPXCCraft_min=15,score_CPXCCraft=15,r=1] ~ ~ ~ kill @e[score_CPXCCraft_min=11,score_CPXCCraft=15,r=2]

scoreboard players tag @a add CPXCRedCanisterOne {Inventory:[{id:"minecraft:dye",Damage:1s,Count:1b,tag:{red_heart_canister:1b}}]}
scoreboard players tag @a add CPXCRedCanisterTwo {Inventory:[{id:"minecraft:dye",Damage:1s,Count:2b,tag:{red_heart_canister:1b}}]}
scoreboard players tag @a add CPXCRedCanisterThree {Inventory:[{id:"minecraft:dye",Damage:1s,Count:3b,tag:{red_heart_canister:1b}}]}
scoreboard players tag @a add CPXCRedCanisterFour {Inventory:[{id:"minecraft:dye",Damage:1s,Count:4b,tag:{red_heart_canister:1b}}]}
scoreboard players tag @a add CPXCRedCanisterFive {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}}]}

scoreboard players tag @a add CPXCYellowCanisterOne {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}},{id:"minecraft:dye",Damage:11s,Count:1b,tag:{yellow_heart_canister:1b}}]}
scoreboard players tag @a add CPXCYellowCanisterTwo {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}},{id:"minecraft:dye",Damage:11s,Count:2b,tag:{yellow_heart_canister:1b}}]}
scoreboard players tag @a add CPXCYellowCanisterThree {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}},{id:"minecraft:dye",Damage:11s,Count:3b,tag:{yellow_heart_canister:1b}}]}
scoreboard players tag @a add CPXCYellowCanisterFour {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}},{id:"minecraft:dye",Damage:11s,Count:4b,tag:{yellow_heart_canister:1b}}]}
scoreboard players tag @a add CPXCYellowCanisterFive {Inventory:[{id:"minecraft:dye",Damage:1s,Count:5b,tag:{red_heart_canister:1b}},{id:"minecraft:dye",Damage:11s,Count:5b,tag:{yellow_heart_canister:1b}}]}

effect @a[tag=CPXCRedCanisterOne] minecraft:absorption 1 0 true
effect @a[tag=CPXCRedCanisterTwo] minecraft:absorption 1 1 true
effect @a[tag=CPXCRedCanisterThree] minecraft:absorption 1 2 true
effect @a[tag=CPXCRedCanisterFour] minecraft:absorption 1 3 true
effect @a[tag=CPXCRedCanisterFive] minecraft:absorption 1 4 true

effect @a[tag=CPXCYellowCanisterOne] minecraft:absorption 1 5 true
effect @a[tag=CPXCYellowCanisterTwo] minecraft:absorption 1 6 true
effect @a[tag=CPXCYellowCanisterThree] minecraft:absorption 1 7 true
effect @a[tag=CPXCYellowCanisterFour] minecraft:absorption 1 8 true
effect @a[tag=CPXCYellowCanisterFive] minecraft:absorption 1 9 true

scoreboard players tag @a remove CPXCRedCanisterOne
scoreboard players tag @a remove CPXCRedCanisterTwo
scoreboard players tag @a remove CPXCRedCanisterThree
scoreboard players tag @a remove CPXCRedCanisterFour
scoreboard players tag @a remove CPXCRedCanisterFive

scoreboard players tag @a remove CPXCYellowCanisterOne
scoreboard players tag @a remove CPXCYellowCanisterTwo
scoreboard players tag @a remove CPXCYellowCanisterThree
scoreboard players tag @a remove CPXCYellowCanisterFour
scoreboard players tag @a remove CPXCYellowCanisterFive
