class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  ArrayList<Leader> leaders;
  float x = 0;
  
  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    leaders = new ArrayList<Leader>();
  }

  void run() {
    for (Leader l : leaders){
      x = l.runLeader(x);
    }
    for (Boid b : boids) {
      b.run(boids, leaders);  // Passing the entire list of boids to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  
  void addLeader(Leader l){
    leaders.add(l);
  }

}
