mixin Fluttering{
  void flutter(){
    print("fluttering");
  }
}

abstract class Insect{
  void crawl(){
    print("Crawling");
  }
}

abstract class AirborneInsect extends Insect with Fluttering {
  void buzz(){
    print("buzzing annoyingly");
  }
}

class Mosquito extends AirborneInsect {
  void doMosquitoThing(){
    crawl();
    flutter();
    buzz();
    print("Sucking blood");
  }
}

mixin Pecking on Bird{
  void peck(){
    print("pecking");
    chirp();
  }
}
abstract class Bird with Fluttering{
  void chirp(){
    print("chirp chirp");
  }

  void flutter(){
    print("fluttering");
  }
}

class Swallow extends Bird {
  void doSwallowThing(){
    chirp();
    flutter();
    print("eating a mosquito");
  }
}

class BlueJay extends Bird with Pecking{

}
// Mixin is a way of reusing a class's code in multiple class hierarchies