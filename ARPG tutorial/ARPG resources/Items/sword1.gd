extends "res://ARPG resources/Items/Item_1.gd"

@onready var animations = $AnimationPlayer


func collect(inventory: Inventory):
	animations.play("Spin")
	await animations.animation_finished
	super(inventory)




