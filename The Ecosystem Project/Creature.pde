class Creature {
	PVector location;
	PVector velocity;
	PVector acceleration;

	Creature() {
		location = new PVector(width / 2, height / 2);
		velocity = new PVector(0, 0);
		acceleration = new PVector(0, 0);
	}

	void update() {
		velocity.add(acceleration);
		velocity.limit(5);
		location.add(velocity);
	}

	void move() {
		float stepx = random(-1, 1);
		float stepy = random(-1, 1);
		velocity.x += stepx;
		velocity.y += stepy;
		update();
	}

	void display() {
		stroke(0);
		fill(175);
		ellipse(location.x, location.y, 20, 20);
	}

	void checkEdges() {
		if (location.x > width) {
			location.x = 0;
		} else if (location.x < 0) {
			location.x = width;
		}

		if (location.y > height) {
			location.y = 0;
		} else if (location.y < 0) {
			location.y = height;
		}
	}

	void live() {
		move();
		checkEdges();
		display();
	}
}
