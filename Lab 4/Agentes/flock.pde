class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  ArrayList<Leader> leaders;
  
  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    leaders = new ArrayList<Leader>();
  }

  void run() {
    for (Leader l : leaders){
      l.runLeader();
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
