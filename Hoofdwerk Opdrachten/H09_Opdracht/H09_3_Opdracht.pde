int mijnGetal;

// Activeert een Methode
void setup() {
  // rect(x,y,w,h)
  println(mijnFunctie(10, 20));
  mijnGetal = mijnFunctie(15, 45);
  println(mijnGetal);
}

void draw() {
  // Body
}

int mijnFunctie(int getal1, int getal2){
  int antwoord;
  antwoord = (getal1 + getal2) / 2;
  return antwoord;
}



// Loop/noLoop zorgt ervoor dat iets niet weer herhaalt.
/* Mijn Commentaar */
