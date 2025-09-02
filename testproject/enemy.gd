extends CharacterBody2D
class_name Enemy

const MAX_SPEED := 300
const ACC := 150

#detta kommer defineras av förälden
var player = 0

func _physics_process(delta: float) -> void:
	if player:
		var direction_to_player = global_position.direction_to(player.global_position)
		velocity = velocity.move_toward(direction_to_player*MAX_SPEED, ACC*delta)
		move_and_slide()



#shows when there has been an overlapping in the area body
func _on_player_detector_body_entered(body: Node2D) -> void:
	if body is Player:
		body.die
