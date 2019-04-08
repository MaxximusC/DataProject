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
    if (mouseX > xpos - ((parseInt(grads)/500)/2) && mouseX < xpos + ((parseInt(grads)/500)/2) && mouseY > ypos - 200 && mouseY < ypos + 200){
        out.println(name);   
        showInfo();
    }
  }


  void showInfo() { // Shows info of the object that the mouse is hovering over
    textSize(32);
    fill(255);
    rect(0, 75, 1200, 200);
    fill(0, 102, 153);
    text("Major: "+name+" \nNumber of Grads: "+grads+" \nNumber of Grads employed: "+employed+" \nNumber of grads unemployed: "+unemployed, 50, 120);
  }

  void display(int timer) {
    noStroke();
    fill(shade);
    xpos -= timer;
    ellipse(xpos, ypos, parseInt(grads)/500, parseInt(grads)/500);
  }
}
