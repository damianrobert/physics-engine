class Mover {

	PVector location;
	PVector velocity;
	PVector acceleration;

	float topspeed;
	float mass;

	Mover(PVector _location, PVector _velocity, PVector _acceleration, float _topspeed) {
		location = new PVector(_location.x, _location.y);
		velocity = new PVector(_velocity.x, _velocity.y);
		acceleration = new PVector(_acceleration.x, _acceleration.y);
		topspeed = _topspeed;
		mass = 1;
	}
	
	void update() {

		velocity.add(acceleration);
		velocity.limit(topspeed);
		location.add(velocity);
		acceleration.mult(0);
	}

	void display() {
		stroke(0);
		fill(175);
		ellipse(location.x, location.y, mass * 16, mass * 16);
	}

	void applyForce(PVector force) {
		PVector f = PVector.div(force, mass);
		acceleration.add(f);
	}

	void checkEdges() {
		if(location.x > width) {
			location.x = width;
			velocity.x *= -1;
		} else if (location.x < 0) {
			velocity.x *= -1;
			location.x = 0;
		}

		if(location.y > height) {
			velocity.y *= -1;
			location.y = height;
		} else if (location.y < 0) {
			velocity.y *= -1;
			location.y = 0;
		}
	}
}
