extends Node2D

@onready var enemy: Enemy = $Enemy
@onready var player: Player = $Player

func _ready() -> void:
	enemy.player = player
	
