extends KinematicBody2D

# Player stats
var health = 100
var mana = 50
var strength = 10
var agility = 10
var intelligence = 10

# Inventory management
var inventory = {}

# Character controller functionality
var speed = 200
var velocity = Vector2()

func _ready():
    pass # Prepare the player character when the scene is ready

func _process(delta):
    handle_input(delta)
    move_player(delta)

func handle_input(delta):
    velocity = Vector2() # Reset velocity
    if Input.is_action_pressed('ui_right'): # Move right
        velocity.x += 1
    if Input.is_action_pressed('ui_left'): # Move left
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'): # Move down
        velocity.y += 1
    if Input.is_action_pressed('ui_up'): # Move up
        velocity.y -= 1
    
    velocity = velocity.normalized() * speed # Normalize the velocity to avoid faster diagonal movement

func move_player(delta):
    move_and_slide(velocity) # Move the player according to the physics engine

func add_to_inventory(item, quantity):
    if item in inventory:
        inventory[item] += quantity
    else:
        inventory[item] = quantity

func remove_from_inventory(item, quantity):
    if item in inventory and inventory[item] >= quantity:
        inventory[item] -= quantity
        if inventory[item] == 0:
            inventory.erase(item)