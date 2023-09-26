int window_width = 600;
int window_height = 400;

void setup() {
	size(600, 400);
}

void drawLine(int x, int y) {
	stroke(0);
	point(x, y);
}

int x = 0;
float y = 200;
float r1;
float prev;

void draw() {
	if(x < 600) {
		r1 = random(1);
		stroke(0);
		x++;
		if(r1 > prev) {
			y -= 2;
		} else {
			y += 2;
		}
		ellipse(x, y, 20, 20);
		prev = r1;
		
	}
}
