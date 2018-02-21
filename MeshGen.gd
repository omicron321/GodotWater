tool
extends MeshInstance

export(Material) 	var mat
export(float) 		var scaleFactor = 0.10

# Due to the "tool" keyword at the top of this file
# this function already executes in the editor
func _ready():
	var surfTool = SurfaceTool.new()
	var mesh = Mesh.new()
	  
	surfTool.begin(Mesh.PRIMITIVE_TRIANGLES)
	
	for z in 100:
		for x in 100:
			surfTool.add_vertex(Vector3(x,0,z) * scaleFactor)
			surfTool.add_vertex(Vector3(x + 1,0,z) * scaleFactor)
			surfTool.add_vertex(Vector3(x + 1, 0,z + 1) * scaleFactor)
			
			surfTool.add_vertex(Vector3(x + 1, 0,z + 1) * scaleFactor)
			surfTool.add_vertex(Vector3(x,0,z + 1) * scaleFactor)
			surfTool.add_vertex(Vector3(x,0,z) * scaleFactor)
	  
	surfTool.generate_normals()
	surfTool.index()
	  
	surfTool.commit(mesh)
	  
	surfTool.set_material(mat)
	
	self.set_mesh(mesh)
	self.set_surface_material(0, mat)