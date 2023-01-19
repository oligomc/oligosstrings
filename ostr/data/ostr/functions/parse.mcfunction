execute store success score $typ ostr.global run data modify storage ostr:data temp.check append from storage ostr:io in
execute unless score $typ ostr.global matches 1 run data modify storage ostr:io out set value []
execute if score $typ ostr.global matches 1 run function ostr:parse/main