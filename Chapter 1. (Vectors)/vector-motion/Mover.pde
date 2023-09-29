class Mover {

	PVector location;
	PVector velocity;
	PVector acceleration;

	float topspeed;

	Mover(PVector _location, PVector _velocity, PVector _acceleration, float _topspeed) {
		location = new PVector(_location.x, _location.y);
		velocity = new PVector(_velocity.x, _velocity.y);
		acceleration = new PVector(_acceleration.x, _acceleration.y);
		topspeed = _topspeed;
	}
	
	void update() {
		PVector mouse = new PVector(mouseX, mouseY);
		PVector dir = PVector.sub(mouse, location);

		dir.normalize();
		dir.mult(0.5);
		acceleration = dir;

		velocity.add(acceleration);
		velocity.limit(topspeed);
		location.add(velocity);
	}

	void display() {
		stroke(0);
		fill(random(255), random(255), random(255));
		ellipse(location.x, location.y, 16, 16);
	}

	void checkEdges() {
		if(location.x > width) location.x = 0;

		if (location.x < 0) location.x = width;
	
		if(location.y > height) location.y = 0;

		if (location.y < 0) location.y = height;
		
	}
}
