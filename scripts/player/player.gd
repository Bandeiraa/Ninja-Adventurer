extends KinematicBody2D
class_name Player

var initial_weapon: Resource
var can_attack: bool = true

onready var sprite: Sprite = get_node("Sprite")
onready var animation_tree: AnimationTree = get_node("AnimationTree")
onready var animation = animation_tree.get("parameters/playback")
onready var timer: Timer = get_node("Timer")

export(int) var speed

func _ready() -> void:
	Data.loadData()
	initial_weapon = load(Data.stored_data.weapon)
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
	if Input.is_action_just_pressed("Attack") and can_attack:
		var attack_direction = (get_global_mouse_position() - position).normalized()
		animation_tree.set("parameters/Attack/blend_position", attack_direction)
		animation.travel("Attack")
		instance_weapon(attack_direction)
		set_physics_process(false)
		can_attack = false
		
		
func instance_weapon(direction: Vector2) -> void:
	var instanced_object = initial_weapon.instance()
	instanced_object.direction = direction
	instanced_object.lifetime = 1.0
	timer.set_wait_time(instanced_object.weapon_aspd)
	instanced_object.global_position = position
	get_tree().root.call_deferred("add_child", instanced_object)
	timer.start()


func on_timer_timeout() -> void:
	can_attack = true
