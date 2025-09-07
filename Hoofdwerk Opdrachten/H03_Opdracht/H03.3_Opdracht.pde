size(600, 600);
background(255); 


// Text
fill(0, 0 ,0);
textSize(20);

text("Stoplicht", 10, 20);

// Stoplicht
fill(50);
rect(250, 100, 100, 300, 20); // x,y,width,height,rounded corners

// Rood
fill(255, 0, 0);
ellipse(300, 160, 60, 60);

// Geel
fill(255, 255, 0);
ellipse(300, 250, 60, 60);

// Groen
fill(0, 200, 0);
ellipse(300, 340, 60, 60);

// Paal
fill(50);
stroke(50);
rect(275, 400, 50, 200);
