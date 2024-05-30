import "mixin.dart";

mixin InterestCalcute {
  final double interestRate = 0.02;

  double caculateInterest(double balance) {
    return balance * interestRate;
  }
}

mixin TransaxtionHisstory {
  List<String> transactions = [];

  void recordTransaction(String transaction) {
    transactions.add(transaction);
  }
}

class MyBankAccount2 with BankAccount, InterestCalcute, TransaxtionHisstory {}

void main() {
  var myAcct = MyBankAccount2();
  myAcct.recordTransaction("Account created");

  myAcct.deposit(2000);
  myAcct.recordTransaction("deposit \$2000 ");

  myAcct.withdrow(200);
  myAcct.recordTransaction("withdrow \$200 ");

  myAcct.checkBalance();
  myAcct.recordTransaction("checkBalance \$${myAcct.balance}");

  print("Transaction History:");
  for (var transaction in myAcct.transactions) {
    print(transaction);
  }
}
