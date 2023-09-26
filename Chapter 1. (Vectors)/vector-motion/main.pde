Mover mover;
PVector location;
PVector velocity;

void setup() {
	size(630, 350);
	location = new PVector(100, 100);
	velocity = new PVector(3, 2);
	mover = new Mover(location, velocity);
}

void draw() {
	background(255);
	mover.update();
	mover.checkEdges();
	mover.display();
	mover.velocity.x += 0.01;
}
