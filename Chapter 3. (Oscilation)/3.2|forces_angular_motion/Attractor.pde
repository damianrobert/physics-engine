class Attractor {
	float mass;
	PVector position;
	float g;

	Attractor() {
		position = new PVector(width / 2, height / 2);
		mass = 20;
		g = 0.4;
	}

	PVector attract(Mover m) {
		PVector force = PVector.sub(position, m.position);             // Calculate direction of force
		float distance = force.mag();                                   // Distance between objects
		distance = constrain(distance, 5.0, 25.0);                      // Limiting the distance to eliminate "extreme" results for very close or very far objects
		force.normalize();                                            	// Normalize vector (distance doesn't matter here, we just want this vector for direction)
		float strength = (g * mass * m.mass) / (distance * distance); 	// Calculate gravitional force magnitude
		force.mult(strength);                                         	// Get force vector --> magnitude * direction
		return force;
	}

	void display() {
		stroke(0);
		strokeWeight(2);
		fill(127);
		ellipse(position.x, position.y, 48, 48);
	}
}
