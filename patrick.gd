extends CharacterBody3D

@onready var animation_player = $AnimationPlayer
@onready var area = $Area3D
@onready var sound_player = $"I love you"

func _ready():
	# Play the walk animation after a delay
	await get_tree().create_timer(1).timeout
	animation_player.play("patrick_jjk_patrick_skeleton|Walk")

	# Connect the area entered signal
	area.body_entered.connect(_on_area_body_entered)

func _on_area_body_entered(body):
	print("entered")
	sound_player.play() 
