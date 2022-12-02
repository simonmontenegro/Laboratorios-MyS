//The leader class

class Leader extends Boid {
  PVector velocity;
  
  Leader(float x, float y, color col) {
    super(x, y, col);
    velocity = sinusoidalMove().mult(10);
    //float angle = random(TWO_PI);
    //velocity = new PVector(0, 10);
    maxspeed = 4.0;
  }
  
  PVector sinusoidalMove(){
    float x_move = random(TWO_PI);
    float y_move = 2.8 * sin(0.64*x_move) + 0.14*pow(x_move,2) + 1.13;
    print(x_move, y_move, "\n");
    PVector newVelocity = new PVector(x_move, y_move);
    return newVelocity;
  }
  
  void runLeader() {
    update();
    borders();
    render(pred);
  }
}
