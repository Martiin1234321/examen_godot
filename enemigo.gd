extends CharacterBody2D

const SPEED = 25.0
var velocidad_actual = -SPEED

func _physics_process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta

	if $RayCastIzquierda2D.is_colliding():
		velocidad_actual = SPEED * 0.5

	velocity.x = velocidad_actual
	move_and_slide()
func _on_area_muerte_body_entered(body):
	if body.name == "OldMan":
		get_tree().reload_current_scene()
	
