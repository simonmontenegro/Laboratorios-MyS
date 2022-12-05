//The leader class

class Leader extends Boid {
  PVector velocity;
  
  Leader(float x, float y, color col) {
    super(x, y, col);
    //velocity = sinusoidalMove();
    //float angle = random(TWO_PI);
    //velocity = new PVector(0, 10);
    maxspeed = 1.0;
  }
  
  float sinusoidalMove(float x_move){
    float y_move = 2.8 * sin(0.64*x_move) + 0.14*pow(x_move,2) + 1.13;
    PVector newVelocity = new PVector(x_move, y_move);
    acceleration.add(newVelocity);
    x_move = x_move + 0.01;
    return x_move;
  }
  
  float runLeader(float x_move) {
    x_move = sinusoidalMove(x_move);
    update();
    borders();
    render(pred);
    return x_move;
  }
}
