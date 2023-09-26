class Mover {

	PVector location;
	PVector velocity;

	Mover(PVector _location, PVector _velocity) {
		location = new PVector(_location.x, _location.y);
		velocity = new PVector(_velocity.x, _velocity.y);
	}
	
	void update() {
		location.add(velocity);
	}

	void display() {
		stroke(0);
		fill(175);
		ellipse(location.x, location.y, 16, 16);
	}

	void checkEdges() {
		if(location.x > width) {
			location.x = 0;
		} else if (location.x < 0) {
			location.x = width;
		}

		if(location.y > height) {
			location.y = 0;
		} else if (location.y < 0) {
			location.y = height;
		}
	}
}
