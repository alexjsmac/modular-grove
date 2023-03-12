extends Node

var oscsndr
var cube
var cube2

func _ready():

	cube = get_node("../cube")
	cube2 = get_node("../cube2")
	oscsndr = load("res://addons/gdosc/gdoscsender.gdns").new()
	oscsndr.setup( "127.0.0.1", 12000 )
	oscsndr.start()

func _process(delta):
	cube.rotate_y( delta * 1 )
	cube2.rotate_x( delta * 1 )
#	oscsndr.msg("/gdosc")					# creation of new message internally
#	oscsndr.add( cube )						# adding an object, will send its name
#	oscsndr.add( cube.rotation )			# adding a vector3, will be transform into 3 floats
#	oscsndr.add( cube.translation )
#	oscsndr.send()	


func _exit_tree ( ):
	oscsndr.stop()							# disable the sender, highly recommended!

func _on_XRToolsInteractableAreaButton_button_pressed(button):
	print("BUTTON PRESSED")
	oscsndr.msg("/button")
	oscsndr.send()

func _on_InteractableSlider_slider_moved(position):
	print(position)
	oscsndr.msg("/slider")
	oscsndr.add(position)
	oscsndr.send()
