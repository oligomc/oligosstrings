data remove storage ostr:io in[-1]
execute store result score $in ostr.global run data get storage ostr:io in
execute if score $in ostr.global matches 1 run data modify storage ostr:io out set from storage ostr:io in[0]
execute if score $in ostr.global matches 2.. positioned 29999984 -64 43392 run function ostr:concat/nest