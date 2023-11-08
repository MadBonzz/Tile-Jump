extends Node2D

var tile = preload("res://Objects/Tile.tscn")
var dtile = preload("res://Objects/DTile.tscn")
var num

var rng = RandomNumberGenerator.new()
func _ready():
	num = rng.randi_range(0, 5)

func _on_TileSpawn_timeout():
	_ready()
	if num == 1:
		var tile_instance = dtile.instance()
		add_child(tile_instance)
		tile_instance.position = $SpawnLocation.position
		var nodes = get_tree().get_nodes_in_group("spawn")
		var node = nodes[randi() % nodes.size()]
		var position = node.position
		$SpawnLocation.position = position
	else:
		var tile_instance = tile.instance()
		add_child(tile_instance)
		tile_instance.position = $SpawnLocation.position
		var nodes = get_tree().get_nodes_in_group("spawn")
		var node = nodes[randi() % nodes.size()]
		var position = node.position
		$SpawnLocation.position = position
	
	
	
