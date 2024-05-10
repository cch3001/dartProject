void main() {
  //Surface surface = Surface({onTouch:(double x, double y)->{}});

  Surface surface = Surface((double x, double y) {
    print('x:$x,y:$y');
  });

  surface.touch(202.3, 134.0);
}

class Surface {
  void Function(double x, double y) onTouch;

  Surface(this.onTouch);

  void touch(double x, double y) {
    onTouch(x, y);
  }
}
