extends KinematicBody2D
class_name Player

onready var sprite: Sprite = get_node("Sprite")
onready var animation_tree: AnimationTree = get_node("AnimationTree")
onready var animation = animation_tree.get("parameters/playback")

export(int) var speed

func _ready() -> void:
	Data.loadData()
	sprite.texture = load(Data.stored_data.class)
	
	
func _physics_process(_delta: float) -> void:
	move()
	attack()
	
	
func move() -> void:
	var velocity: Vector2 = Vector2.ZERO
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = velocity.normalized()
	
	if velocity != Vector2.ZERO:
		animation_tree.set("parameters/Idle/blend_position", velocity)
		animation_tree.set("parameters/Move/blend_position", velocity)
		animation.travel("Move")
		
	else:
		animation.travel("Idle")
	
	velocity = move_and_slide(velocity * speed)


func attack() -> void:
	if Input.is_action_just_pressed("Attack"):
		var attack_direction = (get_global_mouse_position() - position).normalized()
		animation_tree.set("parameters/Attack/blend_position", attack_direction)
		animation.travel("Attack")
		set_physics_process(false)
