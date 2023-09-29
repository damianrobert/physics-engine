Mover mover;
PVector location;
PVector velocity;
PVector acceleration;
PVector gravity;
PVector wind;

void setup() {
	size(630, 500);
	float mass = 10;
	location = new PVector(width / 2, height / 2);
	velocity = new PVector(0, 0);
	acceleration = new PVector(0, 0);
	gravity = new PVector(0, 0.1 * mass);
	wind = new PVector(0.1, 0);
	mover = new Mover(location, velocity, acceleration, 5, mass);
}

void draw() {
	background(255);
	mover.applyForce(gravity);
	mover.applyForce(wind);
	mover.update();
	mover.checkEdges();
	mover.display();
}

void keyPressed() {

	PVector force_dir;

	if (keyCode == RIGHT) {
		force_dir = new PVector(1, 0);
		mover.applyForce(force_dir);
	} else if(keyCode == LEFT) {
		force_dir = new PVector(-1, 0);
		mover.applyForce(force_dir);
	} else if (keyCode == UP) {
		force_dir = new PVector(0, -2);
		mover.applyForce(force_dir);
	}
}
