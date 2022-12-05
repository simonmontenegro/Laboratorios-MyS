/**
 * Flocking 
 * by Maria Jesus Cañoles 20300159-2 y Simon Montenegro 19794721-7  
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 * Click the mouse to add a new boid.
 */

Flock flock;
color white = color(255);
color red = color(255,0,0);
color blue = color(0,0,255);

void setup() {
  size(1024, 720);
  flock = new Flock();
  int cantidad_pajaros = 10;
  // Add an initial set of boids into the system
  for (int i = 0; i < cantidad_pajaros; i++) {
    flock.addBoid(new Boid(width/2,height/2, blue));
  }
  //Aqui debería setear al lider de manera distinta a la bandada.
  flock.addLeader(new Leader(width/2 + 20,height/2 + 20, red));
}

void draw() {
  //SE DECLARA EL COLOR DE FONDO EN RGB
  background(0,0,0);
  flock.run();
}

// Add a new boid into the System

void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY, blue));
}
/*
void keyPressed() {
  flock.addBoid(new Boid(mouseX,mouseY, red));
}
*/
