Mover mover;
PVector location;
PVector velocity;
PVector acceleration;


void setup() {
	size(630, 350);
	location = new PVector(width / 2, height / 2);
	//initial velocity 0,0 which means at rest
	velocity = new PVector(0, 0);

	acceleration = new PVector(0, 0);
	float topspeed = 10;
	mover = new Mover(location, velocity, acceleration, topspeed);
}

void draw() {
	background(255);
	mover.update();
	mover.checkEdges();
	mover.display();
	println(velocity.x, velocity.y);
}
