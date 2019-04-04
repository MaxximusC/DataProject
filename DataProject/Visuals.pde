class Visual {
  String name;
  String grads;
  String employed;
  String unemployed;
  int shade;
  int xpos;
  int ypos;

  public Visual(String nam, String grad, String emp, String unemp, int col, int posx, int posy) {
    name = nam;
    grads = grad;
    employed = emp;
    unemployed = unemp;
    shade = col;
    xpos = posx;
    ypos = posy;
  }

  void checkMouse() { // Checks to see if the mouse is hovering over this object
    //if (mouseX > parseInt(grads)/500 && mouseX <
  }


  void showInfo() { // Shows info of the object that the mouse is hovering over
    textSize(32);
    fill(255);
    rect(0, 75, 1200, 200);
    fill(0, 102, 153);
    text("Program: "+name+" Number of Grads: "+grads+" Number of Grads employed: "+employed+" Number of grads unemployed: "+unemployed, 50, 120);
  }

  void display(int posx, int posy) {
    noStroke();
    fill(shade);
    ellipse(posx, posy, parseInt(grads)/500, parseInt(grads)/500);
  }
}
