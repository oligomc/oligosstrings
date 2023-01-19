# calculate length of out
data modify storage ostr:data temp.copy set from storage ostr:io in
scoreboard players set $out ostr.global 89
function ostr:concat/len

# calculate number of digits in len 
scoreboard players set $dig ostr.global 2
scoreboard players operation $temp ostr.global = $out ostr.global
scoreboard players operation $temp ostr.global /= #100 ostr.global
execute if score $temp ostr.global matches 1.. run function ostr:concat/dig
function ostr:concat/bin/l0n0

# get entity names
data modify block ~ ~1 ~ Text1 set value '{"nbt":"in", "storage":"ostr:io", "interpret":true}'
data modify entity 034e8a05-9b58-487c-9584-d93889d51962 CustomName set from block ~ ~1 ~ Text1
data modify block ~ ~1 ~ Text2 set value '[{"text":"data modify storage ostr:io out set string block ~-3 ~ ~ LastOutput 89 "}, {"score":{"name":"$out", "objective":"ostr.global"}}]'
data modify entity 563ec5df-4133-4187-b829-27b34e87911f CustomName set from block ~ ~1 ~ Text2

# merge call
data modify block ~4 ~ ~ Command set from storage ostr:io call

# concat
data modify block 29999984 -64 43392 auto set value 1b