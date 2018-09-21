int hopDistance;
int x = 200;
int y = 375;
int carSpeed = 6;
Car car1 = new Car(450, 350);

public void setup() {
  size(400, 400);
}

public class Car {

  int carX;
  int carY;


  public int getX() {
System.out.println("x " + carX);
    return carX;
  }
  public int getY() {
System.out.println("y " + carY);
    return carY;
  }
  public void setX(int carX) {
    this.carX=carX;
  }
  public void setY(int carY) {
    this.carY=carY;
  }


  public Car(int carX, int carY) {
    this.carX = carX;
    this.carY = carY;
  }
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

boolean intersects(Car car) {
  if ((y >= car.getY() && y <= car.getY()+27) && (x >= car.getX() && x <= car.getX()+27))
  {
    System.out.println("You lose.");
    System.exit(0);
    return true;
    
  } else 
  {
    return false;
  }
}

public void draw() {
  if (x<0) {
    x=0;
  } 
  if (x>400) {
    x=400;
  }
  if (y==-50) {
    System.out.println("You win");
    System.exit(0);
  }
  if (y>375) {
    y=375;
  }
  background(255, 0, 0);

  fill(0, 255, 0);

  rect(x, y, 10, 10);
  System.out.println("frog"+x);
  
  
   fill(255,255,255);
  car1.setX(carPosition(car1.getX()));

 
  display();
 
  intersects(car1); 
 
  
}

public void display() {


  rect(car1.getX(), 299, 45, 45);

}


void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      y=y-25;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      y=y+25;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      x=x+25;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      x=x-25;
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
