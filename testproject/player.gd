extends CharacterBody2D
class_name Player

const MAX_SPEED := 400
const ACC := 200

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#är fördefinerat i godot, och är kopplad till characterbody
	velocity = velocity.move_toward(direction*MAX_SPEED, ACC*delta)
	#moves enligt velocity, and hanterar kollisions
	move_and_slide()

func die():
	hide()
