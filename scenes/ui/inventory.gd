extends Control

# Inventory Management UI Script

# Define the inventory size
var inventory_size : int = 20
var inventory : Array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    # Initialize the inventory with empty items
    for i in range(inventory_size):
        inventory.append(null)

# Adds an item to the inventory
func add_item(item: Object) -> void:
    for i in range(inventory_size):
        if inventory[i] == null:
            inventory[i] = item
            print("Item added to inventory at slot: %d" % i)
            return
    print("Inventory is full!")

# Removes an item from the inventory
func remove_item(slot: int) -> void:
    if slot >= 0 and slot < inventory_size:
        inventory[slot] = null
        print("Item removed from inventory at slot: %d" % slot)
    else:
        print("Invalid slot!")

# Displays current inventory items
func display_inventory() -> void:
    for i in range(inventory_size):
        if inventory[i] != null:
            print("Slot %d: %s" % [i, inventory[i].name])
        else:
            print("Slot %d: Empty" % i)