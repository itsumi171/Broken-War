extends Node2D

# Combat System for Turn-Based Combat

# Player and Enemy Classes
class Player:
    var name: String
    var health: int
    var mana: int
    var defense: int

    func _init(name: String, health: int, mana: int, defense: int):
        self.name = name
        self.health = health
        self.mana = mana
        self.defense = defense

    func cast_spell(cost: int):
        if mana >= cost:
            mana -= cost
            return true
        return false

    func defend():
        defense += 5  # Simple defense mechanic

class Enemy:
    var name: String
    var health: int
    var attack_power: int

    func _init(name: String, health: int, attack_power: int):
        self.name = name
        self.health = health
        self.attack_power = attack_power

    func attack(target: Player):
        var damage = attack_power - target.defense
        if damage > 0:
            target.health -= damage

# Combat Logic
var player: Player
var enemy: Enemy

func _ready():
    # Initializing Player and Enemy
    player = Player.new("Hero", 100, 50, 10)
    enemy = Enemy.new("Goblin", 80, 15)

    # Example Combat Sequence
    while player.health > 0 and enemy.health > 0:
        player_turn()
        if enemy.health <= 0:
            print(enemy.name + " defeated!")
            break
        enemy_turn()
        if player.health <= 0:
            print(player.name + " defeated!")
            break

func player_turn():
    # Player logic will be implemented here (e.g., spell casting, defending)
    print("Player's turn")
    # Example of player casting a spell
    if player.cast_spell(10):
        print("Player casts Fireball!")
        enemy.health -= 20
    # Player chooses to defend
    player.defend()

func enemy_turn():
    # Enemy attacking the player
    print("Enemy's turn")
    enemy.attack(player)
    print(player.name + " has " + str(player.health) + " health remaining");