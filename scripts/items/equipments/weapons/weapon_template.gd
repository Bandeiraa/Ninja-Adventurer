extends Area2D

onready var timer: Timer = get_node("Timer")
onready var animation: AnimationPlayer = get_node("Animation")

export(float) var lifetime
export(float) var weapon_aspd
export(float) var damage
export(float) var velocity
export(Vector2) var direction

func _ready() -> void:
	animation.play("Rotate")
	timer.set_wait_time(lifetime)
	timer.start()
	
	
func _physics_process(_delta: float) -> void:
	translate(direction * velocity)
	
	
func on_timer_timeout() -> void:
	set_physics_process(false)
	animation.play("Fade_Out")


func on_body_entered(_body) -> void:
	kill()
	
	
func kill() -> void:
	queue_free()
