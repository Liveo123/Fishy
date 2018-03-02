/// @description Create a swarm of randomly positioned plankton
var noInPlanktonSwarm = 500;
var planktonInst;

// Create the swarms
for (var swarmNo = 0; swarmNo < level; swarmNo++)
{
	centerX = irandom(levelX-100);
	centerY = irandom(levelY-500);
	
	for (var i=0; i<noInPlanktonSwarm; i++)
	{
	    planktonInst = instance_create_depth(centerX+irandom(100),centerY+irandom(100), 10, objRedPlankton);
	    raPlanktonSwarm[i] = planktonInst.id;    // OR: array_id[i] = my_inst;
	}
}

