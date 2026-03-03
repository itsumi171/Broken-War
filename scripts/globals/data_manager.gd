extends Resource

# Data structure for monsters
var monsters : Dictionary = {
    "goblin": {
        "health": 100,
        "attack": 10,
        "defense": 5
    },
    "troll": {
        "health": 200,
        "attack": 20,
        "defense": 10
    }
}

# Data structure for items
var items : Dictionary = {
    "potion": {
        "healing": 50,
        "price": 10
    },
    "sword": {
        "attack": 15,
        "price": 100
    }
}

# Data structure for quests
var quests : Dictionary = {
    "findGoblins": {
        "description": "Defeat 5 goblins.",
        "reward": {"gold": 100, "item": "potion"},
        "completed": false
    },
    "collectHerbs": {
        "description": "Gather 10 herbs.",
        "reward": {"gold": 50},
        "completed": false
    }
}

# Data structure for maps
var maps : Dictionary = {
    "forest": {
        "monsters": ["goblin", "troll"],
        "items": ["potion", "sword"],
        "quests": ["findGoblins"]
    },
    "cave": {
        "monsters": ["troll"],
        "items": [],
        "quests": ["collectHerbs"]
    }
}
