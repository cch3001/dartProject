// 文件: lib/bank_account.dart

// 庫名
library bank_account;

// 公開的 BankAccount 類別
class BankAccount {
  // 私有屬性
  double _balance = 0;

  // 公開方法
  void deposit(double amount) {
    _balance += amount;
  }

  // 公開方法
  bool withdraw(double amount) {
    if (amount > _balance) {
      return false;
    } else {
      _balance -= amount;
      return true;
    }
  }


  // 公開屬性
  double get balance => _balance;
}

void main(){
  final a = BankAccount();
  a._balance = 5.0 ;

  print(a.balance);
}