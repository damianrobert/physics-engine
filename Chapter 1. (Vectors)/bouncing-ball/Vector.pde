class Vector2D {
	float x;
	float y;

	Vector2D(float _x, float _y) {
		x = _x;
		y = _y;
	}

	void addVector(Vector2D v) {
		x = x + v.x;
		y = y + v.y;
	}
}
