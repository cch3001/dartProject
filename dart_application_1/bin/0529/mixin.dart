mixin BankAccount{
  double balance = 0.0 ;
  void deposit(double money){
    if(money > 0 ){
      balance += money ;
      print("Deposit: \$$money");
    }
  }

  void withdrow(double money){
    if(money >0 && balance >= money ){
      balance -= money ;
      print("withdraw \$$money") ;
    }else{
      print("Insufficient balance.") ;
    }
  }

  void checkBalance(){
    print("current Balance: \$$balance");
  }
}

class MyBankAccount with BankAccount{

}

void main(){
  var myAcct = MyBankAccount();

  myAcct.checkBalance();
  myAcct.deposit(2000);
  myAcct.checkBalance();
  myAcct.withdrow(200);
  myAcct.checkBalance();
}