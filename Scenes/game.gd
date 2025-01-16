extends Node2D

var cash:int = 0
var autoEnabled:bool = false
var increment = 1

@onready var auto_timer: Timer = $AutoTimer
@onready var character_inv: RichTextLabel = $"Character Inv"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_auto_timer_timeout() -> void:
	auto_timer.start(1)
	cash = cash + increment
	character_inv.text = "-- Inventory --\nCash: $" + str(cash) + "\nBag:"
	pass # Replace with function body.
