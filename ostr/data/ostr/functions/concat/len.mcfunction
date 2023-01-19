execute store result score $inc ostr.global run data get storage ostr:data temp.copy[0]
scoreboard players operation $out ostr.global += $inc ostr.global
data remove storage ostr:data temp.copy[0]
scoreboard players remove $in ostr.global 1
execute unless score $in ostr.global matches 0 run function ostr:concat/len