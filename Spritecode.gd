extends Sprite

var angularSpeed = PI
var positionalSpeed = 400

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	
	rotation += angularSpeed * direction * delta
	
	var velocity = Vector2.ZERO
	var momentum = 0
	if Input.is_action_pressed("ui_up"):
		momentum = 1
	if Input.is_action_pressed("ui_down"):
		momentum = -1
	
	velocity =  Vector2.UP.rotated(rotation) * positionalSpeed * momentum 
	position += velocity * delta
