execute store success score @s ca.item.mainhand_holding_item run data get entity @s SelectedItem.Count
execute if score @s ca.item.mainhand_holding_item matches 0 run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if score @s ca.item.mainhand_holding_item matches 0 run item replace entity @s weapon.offhand with air