# entities
kill 563ec5df-4133-4187-b829-27b34e87911f

# scoreboards
scoreboard objectives remove ostr.global

# data storages
data remove storage ostr:io in
data remove storage ostr:io out
data remove storage ostr:io call
data remove storage ostr:data temp

# blocks
fill 29999984 -64 43392 29999989 -64 43392 barrier
setblock 29999984 -63 43392 barrier

# forceload
execute as 034e8a05-9b58-487c-9584-d93889d51962 at @s align xyz run function ostr:assets/forceload