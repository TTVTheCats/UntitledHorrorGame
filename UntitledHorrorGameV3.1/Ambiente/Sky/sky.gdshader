extends Spatial

var sky_material : SpatialMaterial
var sky_texture : CubemapTexture

func _ready():

    sky_material = SpatialMaterial.new()

    sky_texture = preload("res://path/to/your/sky_texture.cubemap")
    
    sky_material.environment_texture = sky_texture
    sky_material.diffuse_mode = SpatialMaterial.DIFFUSE_MODE_BG_TEXTURE

    var environment = WorldEnvironment.new()
    environment.background_mode = WorldEnvironment.BG_MODE_SKY
    environment.sky = sky_material

    Environment.current = environment
