int hopDistance;
int x = 200;
int y = 400;
Car car1 = new Car(450,350);
Car car2 = new Car(-49,300);
Car car3 = new Car(450,200);

public void setUp() {
  size(400, 400);
}

public class Car {

  int carX = 450;
  int carY;
  int carSpeed = 4;

public int getX(){
  
  return carX;
}
public int getY(){
  
  return carY;
}


  public Car(int carX, int carY) {
    this.carX = carX;
    this.carY = carY;
  }
  public int carPosition(int carX) {
    carX-=carSpeed;
    if (carX < -50) {
      carX=450;
    }

    return carX;
  }
  public int carPosition2(int carX) {
    carX+=carSpeed;
    if (carX > 451) {
      carX=-49;
    }

    return carX;
  }
}
boolean intersects(Car car) {
      if ((y > car.getY() && Y < car.getY()+50) && (x > car.getX() && x < car.getX()+50))
      {
             return true;
      }
      else 
      {
             return false;
      }
}

  public void draw() {

    background(255, 0, 0);

    fill(0, 255, 0);
    
    ellipse(x, y, 50, 50);
    
  }

  public void display() {
    
    
    rect(car1.getX(),car1.getY(),50,50);
    rect(car2.getX(),car2.getY(),50,50);
    rect(car3.getX(),car3.getY(),50,50);
    
    
  }


  void keyPressed()
  {
    if (key == CODED) {
      if (keyCode == UP)
      {
        y=y-50;
        //Frog Y position goes up
      } else if (keyCode == DOWN)
      {
        y=y+50;
        //Frog Y position goes down
      } else if (keyCode == RIGHT)
      {
        x=x+50;
        //Frog X position goes right
      } else if (keyCode == LEFT)
      {
        x=x-50;
        //Frog X position goes left
      }
    }
  }
  public void bound(int x, int y) {
    if (x<0) {
      x=0;
    }
    if (x>400) {
      x=400;
    }
    if (y<0) {
      y=0;
    }
    if (y>400) {
      y=400;
    }
  }
