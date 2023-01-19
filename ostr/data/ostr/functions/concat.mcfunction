execute store success score $typ ostr.global run data modify storage ostr:io in append value "a"
execute unless score $typ ostr.global matches 1 run data modify storage ostr:io out set value ""
execute if score $typ ostr.global matches 1 run function ostr:concat/main