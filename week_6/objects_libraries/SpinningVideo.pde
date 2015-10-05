class SpinningVideo {
  float x, y, w, h, r;
  Movie mov;

  // Some Objects will require the "this" keyword. Handle it by supplying a PApplet argument variable
  SpinningVideo(PApplet _parent, float _x, float _y, float _w, float _h, String _name) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;

    // Reference to "this" is passed to this Object instance
    mov = new Movie(_parent, _name);
    mov.loop();
  }

  void update() {
    r++;
  }

  void display() {
    imageMode(CENTER);
    pushMatrix();
    translate(x, y);
    rotate(radians(r));
    image(mov, 0, 0, w, h);
    popMatrix();
    // Reset imageMode to not create problems outside of this Object
    imageMode(CORNER);
    
    update();
  }
}