//float x = 100;
//float y = 100;
//float xspeed = 1.75;
//float yspeed = 3.1;

Vector2D location;
Vector2D velocity;


void setup() {
	location = new Vector2D(100, 100);
	velocity = new Vector2D(1.75, 3.1);
	size(630, 420);
	background(255);
}

void draw() {
	location.add(velocity);

	if ((location.x > width) || location.x < 0) {
		velocity.x = velocity.x * -1;
	}
	if ((location.y > height) || location.y < 0) {
		velocity.y = velocity.y * -1;
	}

	stroke(0);
	fill(175);
	ellipse(location.x, location.y, 20, 20);
	println("(" + location.x + ", " + location.y + ")");
}
