import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import java.util.Set;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ArrayList;
import java.util.*;
import static java.lang.System.*;
ArrayList<Visual> vis = new ArrayList(); // List of all of the different circles
boolean start = true; // On-off switch for the scrolling
int time = 0; // Keeps track of frames gone by since run started

void setup() {
  size(1200, 900);
  DataHandling run = new DataHandling();
  ArrayList<String> keys = new ArrayList<String>(); // Keeps track of all keys that are put into the map
  //vis.add(new Visual("X", "x", "x", "s"));
  String [] str=loadStrings("C:/Users/Family PC/Desktop/majors.txt"); // NOT SURE WHAT THIS DID
  String allText=join(str, ","); //NOT SURE WHAT THIS DID
  try {
    Scanner scan = new Scanner(new File("C:/Users/Family PC/Desktop/majors.txt"));
    scan.useDelimiter("/,");
    while (scan.hasNext()) {
      run.putData(scan.nextLine(), keys);
    }
  } 
  catch (Exception e) {
    out.println(e);
    e.printStackTrace();
  } 
  finally {
    //run.printMap();
    //out.println(keys);
  }
  for (String s : keys) {
    vis.add(new Visual(s, run.getFirst(s), run.getSecond(s), run.getThird(s), 255));
    out.println(s + " equals " + run.getFirst(s) + " " + run.getSecond(s) + " " + run.getThird(s));
  }
  /*for (String key : run.dataList.keySet()){
   vis.add(new Visual(key, run.getFirst(key), run.getSecond(key), run.getThird(key)));
   out.println(key + " equals " + run.getFirst(key) + " " + run.getSecond(key) + " " + run.getThird(key));
   }*/
}

void draw() {
  background(0);
  time++;
  if (start == true) {
    for (int i = 0; i < vis.size(); i++) {
      vis.get(i).display(i * 100, 400);
    }
    //vis.get(1).display(1 * 10, 1 * 10);
    out.print(vis.size());
    start = false;
  }
  for (int i = 0; i < vis.size(); i++) {
      vis.get(i).display((i * 100) - time, 400);
      //vis.get(1).display(1 * 100 - time, 1 * 400);
    }
}
