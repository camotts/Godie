extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var VR = ARVRServer.find_interface("OpenVR")
	print("test")
	print(VR)
	
	if VR and VR.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false

		OS.vsync_enabled = false

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
