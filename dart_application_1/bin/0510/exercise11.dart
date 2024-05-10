import 'exercise06.dart';

void main(){
  final a = BankAccount();
  //a._balance = 5.0 ;
  print(a.balance);

  a.deposit(86);

  print(a.balance);
}