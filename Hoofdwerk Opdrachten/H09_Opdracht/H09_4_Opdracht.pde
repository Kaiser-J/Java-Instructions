

void setup(){
  size(500,500);
}

void draw(){
  background(0, 0, 0);
  stroke(255, 255, 255);
  vierkant(100, 100, 100, 100);
}

void vierkant(int xWaarde, int yWaarde, int Width, int Height){
  // Top Line
  line(xWaarde, yWaarde, xWaarde + Width, yWaarde);
  // Bottom Line
  line(xWaarde, yWaarde + Height, xWaarde + Width, yWaarde + Height);
  // Right Line
  line(xWaarde, yWaarde, xWaarde, yWaarde + Height);
  // Left Line
  line(xWaarde + Width, yWaarde, xWaarde + Width, yWaarde + Height);
}
