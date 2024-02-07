extends Node2D

@onready var heartsContainer =$CanvasLayer/heartsContainer
@onready var player = $TileMap/Player


func _ready():
	heartsContainer.setMaxHearts(player.maxHealth)
	heartsContainer.updateHearts(player.currentHealth)
	player.healthChanged.connect(heartsContainer.updateHearts)




func _on_inventory_gui_closed():
	get_tree().paused = false # Replace with function body.


func _on_inventory_gui_opened():
	get_tree().paused = true # Replace with function body.
