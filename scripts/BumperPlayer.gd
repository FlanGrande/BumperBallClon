extends RigidBody2D

export var spawn = Vector2()

const FORWARD_SPEED = 300;
const ROTATION_SPEED = 100;

var velocity = Vector2();

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_pressed("ui_up")):
		#if(velocity == Vector2()):
		#	velocity = Vector2(FORWARD_SPEED, 0)
		#	add_central_force(velocity)
		linear_velocity = Vector2(FORWARD_SPEED, 0).rotated(rotation)
	
	if(Input.is_action_pressed("ui_left")):
		add_torque(-ROTATION_SPEED)
	
	if(Input.is_action_pressed("ui_right")):
		add_torque(ROTATION_SPEED)
	
	pass
