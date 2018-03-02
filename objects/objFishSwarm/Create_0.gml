var noInFishSwarm = lives;
var fishInst;

// Create the swarm
for (var k=0; k<noInFishSwarm; k++)
{
    fishInst = instance_create_depth(600+irandom(100),550+irandom(100), 10, objFish);
    raFishSwarm[k] = fishInst.id;    // OR: raFishSwarm[i] = my_inst;
}

