# forceload
forceload add 29999999 43392

# entities
# forceload & concat:   (034e8a05-9b58-487c-9584-d93889d51962, [I;55478789,-1688713092,-1786455752,-1982523038])
# output parser:        (563ec5df-4133-4187-b829-27b34e87911f, [I;1446954463,1093878151,-1205262413,1317507359])
summon marker 29999984 -64.5 43392 {Tags:["global.forceload", "global.ignore", "global.ignore.kill", "global.ignore.gui", "global.ignore.pos"], UUID:[I;55478789,-1688713092,-1786455752,-1982523038], CustomName:'{"text":""}'}
summon marker 29999984 -64.5 43392 {Tags:["global.ignore", "global.ignore.kill", "global.ignore.gui", "global.ignore.pos"], UUID:[I;1446954463,1093878151,-1205262413,1317507359], CustomName:'{"text":""}'}

# scoreboards
scoreboard objectives add ostr.global dummy
scoreboard players set $typ ostr.global 0
scoreboard players set #10 ostr.global 10
scoreboard players set #100 ostr.global 100

# data storages
data merge storage ostr:io {in:[], out:"", call:'tellraw @a {"nbt":"out", "storage":"ostr:io"}'}
data merge storage ostr:data {temp:{check:["a"], copy:[]}}

# blocks
setblock 29999984 -64 43392 command_block[facing=east]{auto:0b, Command:"enchant 034e8a05-9b58-487c-9584-d93889d51962 minecraft:aqua_affinity"}
setblock 29999985 -64 43392 chain_command_block[facing=east]{auto:1b, Command:"enchant 563ec5df-4133-4187-b829-27b34e87911f minecraft:aqua_affinity"}
setblock 29999986 -64 43392 chain_command_block[facing=east]{auto:1b, Command:""}
setblock 29999987 -64 43392 chain_command_block[facing=east]{auto:1b, Command:""}
setblock 29999988 -64 43392 chain_command_block[facing=east]{auto:1b, Command:""}
setblock 29999989 -64 43392 chain_command_block[facing=east]{auto:1b, Command:"function ostr:concat/reset"}
setblock 29999984 -63 43392 oak_sign