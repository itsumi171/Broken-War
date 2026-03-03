# Game Manager Autoload

extends Node

# Placeholder for game state management

var game_state = "idle"

func _ready():
    print("Game Manager is ready")

func set_game_state(state: String):
    game_state = state
    print("Game state changed to: " + game_state)

func get_game_state() -> String:
    return game_state