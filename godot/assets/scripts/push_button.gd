extends Spatial

var oscsndr

func _ready():
	
	oscsndr = load("res://addons/gdosc/gdoscsender.gdns").new()
	oscsndr.setup( "127.0.0.1", 12000 )		# will send messages to ip:port
	oscsndr.start()							# enabling emission

#func _process(delta):
#	cube.rotate_y( delta * 1 )
#	oscsndr.msg("/gdosc")					# creation of new message internally
#	oscsndr.add( cube )						# adding an object, will send its name
#	oscsndr.add( cube.rotation )			# adding a vector3, will be transform into 3 floats
#	oscsndr.add( cube.translation )
#	oscsndr.send()							# sending the message
#	pass

func _exit_tree ( ):
	oscsndr.stop()							# disable the sender, highly recommended!

func _on_XRToolsInteractableAreaButton_button_pressed(button):
	var fire = get_node( "../campfire")
	if fire.scale < Vector3(2,2,2):
		fire.scale *= 1.4
	oscsndr.msg("/gdosc")					# creation of new message internally
	oscsndr.add( self )						# adding an object, will send its name
	oscsndr.send()	
