/execute @e ~ ~ ~ say hello
/scoreboard players set @a CPXScore 1 {Inventory:[Count:1b]}
/kick @a[score_CPXScore_min=1]
# This is a comment
