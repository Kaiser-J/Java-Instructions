int[] mijnArray = new int[10];

void setup() {
  // for-loop voor mijnArray gebruiken.
  for (int i = 0; i < mijnArray.length; i++) {
    mijnArray[i] = i * 12 + 12;
    // Eerste getal wordt 6, daarna komt plus 6 erbij
  }
  println(mijnArray);
}
