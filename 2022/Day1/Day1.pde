import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

int[][] map = new int[200][200];

float iterations=1;
float max_iterations=1000;

void setup() {
  size(600,600);
  background(0);
  stroke(255);
  frameRate(120);
  
  noStroke();
}



void draw() {  
  int i=0;
  int x=0,y=0;
  int s;
  
  for (i=0;i<(10000/max_iterations);i++)
  {
    s=(int)random(255-((255/max_iterations)*iterations));
    fill(s,0,0,255-((255/max_iterations)*iterations));
    
    //stroke(s);
    circle(random(600),600-(random((600/max_iterations)*iterations)),random(10));
  }
  
  if (iterations>max_iterations)
  {
    noLoop();
  }
  iterations++;
}
