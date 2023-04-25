extends Node

var EnemyScene = preload("res://enemy.tscn")
var nextEnemySpawnTime = 5

func _ready():
	print("Script ready")
	print(EnemyScene)
	$EnemySpawner.timeout.connect(_on_EnemySpawner_timeout)

func _on_EnemySpawner_timeout():
	print("Spawning enemy")  # Added print statement
	var enemy = EnemyScene.instantiate()

	if enemy:
		print("Enemy instanced")
		# random int between 0 and 2
		randomize()
		enemy.position = Vector2(194*8, randi() % 3 * 194)

		add_child(enemy)
	else:
		print("Error: Could not instance enemy")

	$EnemySpawner.start(nextEnemySpawnTime)
	nextEnemySpawnTime -= 0.1
