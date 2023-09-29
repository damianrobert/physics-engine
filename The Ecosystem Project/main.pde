Creature creature;
Creature creature1;
Creature creature2;


void setup() {
	size(630, 500);
	creature = new Creature();
	creature1 = new Creature();
	creature2 = new Creature();
}

void draw() {
	background(255);
	creature.live();
	creature1.live();
	creature2.live();
	println(creature.velocity);
}
