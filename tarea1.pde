matrices matrizUno;
matrices matrizDos;

void setup()
{
  size(600,600);
  matrizUno = new matrices(80,200,300,150,0,0);
  matrizDos = new matrices(370,200,300,150,0,0);
}

void draw()
{
  background(200,170,200);
  matrizUno.mouse();
  matrizUno.display();
  
  matrizDos.mouse();
  matrizDos.display();
}

class matrices
{
  int x;
  int y;
  int t;
  int u;
  int i;
  int j;
  
  matrices(int x_, int y_, int t_, int u_, int i_, int j_)
  {
    x = x_;
    y = y_;
    t = t_;
    u = u_;
    i = i_;
    j = j_;
  }
  
  void mouse()
  {
    if((mouseX>= x & mouseX<=x+x) & (mouseY>= y & mouseY<= y+x))
    {
      t = 10;
    }
    else
    {
      t = 5;
    }
    
    if((mouseX>= x & mouseX<= x+x) & (mouseY>= y & mouseY<=y+x))
    {
      t = 10;
    }
    else
    {
      t = 5;
    }
  }
  
  void display()
  {
    noStroke();
    for(i=0; i<u; i+=t)
    {
      for(j=0; j<u; j+=t)
      {
        fill(random(200));
        rect(x+i, y+j, t, t);
      }
    }
  }
}