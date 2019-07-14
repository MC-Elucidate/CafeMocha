minSpawnInterval = 5 * room_speed;
maxSpawnInterval = 30 * room_speed;
alarm[0] = minSpawnInterval;

#region Setup spawn points
spawnPositions[0,0] = 0;
spawnPositions[0,1] = 0;
spawnPositions[1,0] = -35;
spawnPositions[1,1] = 0;
spawnPositions[2,0] = 0;
spawnPositions[2,1] = 35;
spawnPositions[3,0] = 35;
spawnPositions[3,1] = 0;
#endregion

timeOpen = const_shop_open_duration * room_speed;
spawnerActive = true;
alarm[1] = timeOpen;