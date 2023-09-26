void setup() {
	size(640, 400);
}

void draw() {
	background(255);

	PVector mouse = new PVector(mouseX, mouseY);
	PVector center = new PVector(width / 2, height / 2);
	mouse.sub(center);
	
	//make vector half as small
	//mouse.mult(0.5);

	float m = mouse.mag();
	fill(0);
	rect(0, 0, m, 10);
	
	//keep vector with the same length regardless of the mouse pos
	//mouse.normalize();
	//mouse.mult(50);

	translate(width / 2, height / 2);
	line(0, 0, mouse.x, mouse.y);
}
