class Vector2D {
	float x;
	float y;

	Vector2D(float _x, float _y) {
		x = _x;
		y = _y;
	}

	void add(Vector2D v) {
		x = x + v.x;
		y = y + v.y;
	}

	void sub(Vector2D) {
		x = x - v.x;
		y = y - v.y;
	}

	void mult(float n) {
		x = x * n;
		y = y * n;
}
