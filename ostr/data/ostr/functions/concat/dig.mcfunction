scoreboard players operation $temp ostr.global /= #10 ostr.global
scoreboard players add $dig ostr.global 1
execute unless score $temp ostr.global matches 0 run function ostr:concat/dig