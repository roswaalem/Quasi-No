extends Node3D

@export var cash_amount : int = 10
@export var bet_amount : int = 1

var total_gambles = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Initial amount : ", cash_amount)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("action_gamble"):
		gamble()

func gamble() -> void:
	total_gambles += 1
	
	print("=== Gambling ", total_gambles ,"... ===")
	
	var rand : int = randi_range(-1 * bet_amount, 1 * bet_amount)
	cash_amount += rand
	
	print("Gambled ", rand)
	print("New amount: ", cash_amount)
