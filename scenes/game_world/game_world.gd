extends Node

# Game World Scene - Main gameplay area

var current_map = "village"
var player_position = Vector2(640, 360)
var monsters_in_area = []

func _ready():
	print("Game World loaded - Current map: ", current_map)
	load_map(current_map)

func load_map(map_name: String):
	current_map = map_name
	print("Loading map: ", map_name)
	spawn_monsters()

func spawn_monsters():
	print("Spawning monsters for map: ", current_map)
	monsters_in_area.clear()
	# TODO: Spawn monsters based on current map

func _process(delta):
	# Handle player input and movement
	handle_input()

func handle_input():
	if Input.is_action_pressed("ui_right"):
		player_position.x += 5
	if Input.is_action_pressed("ui_left"):
		player_position.x -= 5
	if Input.is_action_pressed("ui_down"):
		player_position.y += 5
	if Input.is_action_pressed("ui_up"):
		player_position.y -= 5

func enter_combat(monster):
	print("Entering combat with: ", monster)
	# TODO: Transition to combat scene

func enter_dialogue(npc):
	print("Starting dialogue with: ", npc)
	# TODO: Show dialogue system
