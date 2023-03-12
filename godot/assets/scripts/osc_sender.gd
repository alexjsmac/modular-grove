extends Node

var oscsndr
var cube
var cube2
var fire_light

func _ready():
	cube = get_node("../cube")
	cube2 = get_node("../cube2")
	fire_light = get_node("../campfire/OmniLight")
	oscsndr = load("res://addons/gdosc/gdoscsender.gdns").new()
	oscsndr.setup( "127.0.0.1", 12000 )
	oscsndr.start()

func _process(delta):
	cube.rotate_y( delta * 1 )
	cube2.rotate_x( delta * 1 )

func _exit_tree ( ):
	oscsndr.stop()							# disable the sender, highly recommended!

func _on_XRToolsInteractableAreaButton_button_pressed(button):
	print("BUTTON PRESSED")
	oscsndr.msg("/button")
	oscsndr.send()

func _on_InteractableSlider_slider_moved(position):
	fire_light.omni_range = position * 40
	print(fire_light.omni_range)
	oscsndr.msg("/slider")
	oscsndr.add(position)
	oscsndr.send()

func _on_InteractableAreaButton_button_pressed(button):
	print("BUTTON PRESSED")
	oscsndr.msg("/fm")
	oscsndr.send()
