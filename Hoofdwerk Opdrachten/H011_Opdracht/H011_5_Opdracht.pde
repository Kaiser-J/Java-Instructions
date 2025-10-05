String zoekNaam = "Jan";
Boolean gevonden = false;
String[] namen = {"Jan", "Peter", "Jannen", "Hand", "Debbie"};

void setup() {
  for (int i = 0; i < namen.length; i++) {
    if (zoekNaam == namen[i]) {
      gevonden = true;
    }
  }

  if (gevonden) {
    println("Ja de naam " + zoekNaam + " bestaat!");
  } else {
    println("Helaas de naam " + zoekNaam + " ken ik niet!");
  }
}
