void main(){

  Hero hero = Hero();
  hero.superPower();
  hero.fly();

  //final fly = Flying();//Mixins can't be instantiated.


}
mixin Flying{
  void fly(){

  }
} 

mixin SuperPower{
  void superPower(){
    print("I have a super power") ;
  }
}

class Hero with Flying,SuperPower{
  @override
  void fly(){
    print("fly low") ;
  }

  @override
  void superPower(){
    print("I don't super power") ;
  }

    void superPower1(){
    print("I don't super power") ;
  }
    void superPower1(int a){
    print("I don't super power") ;
  }

}