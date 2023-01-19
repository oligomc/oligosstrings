data modify storage ostr:data temp.arr append string storage ostr:data temp.copy 0 1
data modify storage ostr:data temp.copy set string storage ostr:data temp.copy 1
scoreboard players remove $in ostr.global 1
execute unless score $in ostr.global matches 0 run function ostr:parse/loop