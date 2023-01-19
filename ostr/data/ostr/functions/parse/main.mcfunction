data merge storage ostr:data {temp:{check:["a"], arr:[]}}
data modify storage ostr:data temp.copy set from storage ostr:io in
execute store result score $in ostr.global run data get storage ostr:data temp.copy
function ostr:parse/loop
data modify storage ostr:io out set from storage ostr:data temp.arr