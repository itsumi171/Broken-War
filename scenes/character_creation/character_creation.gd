extends Node

# Character Creation Scene

var character_name = ""
var character_class = ""
var character_race = ""

func _ready():
    print("Welcome to the Character Creation Scene!")
    create_character()

func create_character():
    character_name = prompt_user("Enter your character's name:")
    character_class = prompt_user("Choose your character class (e.g., Warrior, Mage, Archer):")
    character_race = prompt_user("Choose your character race (e.g., Human, Elf, Dwarf):")
    print("Character Created:")
    print("Name: %s, Class: %s, Race: %s" % [character_name, character_class, character_race])

func prompt_user(prompt_text):
    # This is a placeholder for your actual input method
    print(prompt_text)
    return "PlayerInput"  # Replace with actual input from player