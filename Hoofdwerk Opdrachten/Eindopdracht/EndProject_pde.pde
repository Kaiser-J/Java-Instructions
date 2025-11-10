
char currentLetter;
int score = 0;
PFont font;
int timeLimit = 3000; // Timer
int lastChangeTime;
boolean gameOver = false;

void setup() {
  size(600, 400);
  font = createFont("Century Gothik", 32, true);
  textFont(font);
  newLetter();
}

void draw() {
  background(20);

  if (gameOver) {
    showGameOver();
    return;
  }

  // Check if time ran out
  if (millis() - lastChangeTime > timeLimit) {
    gameOver = true;
  }

  // Current Letter
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(100);
  text(currentLetter, width/2, height/2 - 30);
  
  // Score
  textSize(32);
  text("Score: " + score, width/2, height - 80);
  
  // Timer
  float timeLeft = 1.0 - float(millis() - lastChangeTime) / timeLimit;
  fill(0, 255, 0);
  rect(width/4, height - 40, (width/2) * timeLeft, 20);
  
  noFill();
  stroke(255);
  rect(width/4, height - 40, width/2, 20);
  noStroke();
}

void keyPressed() {
  if (gameOver) {
    if (key == 'r' || key == 'R') {
      restartGame();
    }
    return;
  }

  if (key == currentLetter) {
    score++;
    newLetter();
  } else {
    // Wrong Key
    gameOver = true;
  }
}

void newLetter() {
  currentLetter = char(int(random(97, 123))); // Random Lowercase Letter a-z
  lastChangeTime = millis();
}

void showGameOver() {
  background(0);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  textSize(60);
  text("GAME OVER", width/2, height/2 - 40);
  
  fill(255);
  textSize(32);
  text("Final Score: " + score, width/2, height/2 + 10);
  textSize(24);
  text("Press 'R' to Retry", width/2, height/2 + 60);
}

void restartGame() {
  score = 0;
  gameOver = false;
  newLetter();
}
