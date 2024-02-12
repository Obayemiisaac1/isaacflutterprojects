//Create a Dart class to model a simple banking system. Include methods for deposit, withdrawal, and checking the account balance.


Class BankAccount {
  String accountNumber;
  String accountHolderName;
  Double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  Void deposit(double amount) {
    Balance += amount;
    Print(“Deposited $amount. New balance: $balance”);
  }

  Void withdraw(double amount) {
    If (balance >= amount) {
      Balance -= amount;
      Print(“Withdrawn $amount. New balance: $balance”);
    } else {
      Print(“Insufficient funds. Withdrawal failed.”);
    }
  }

  Void checkBalance() {
    Print(“Account balance: $balance”);
  }
}

Void main() {
  BankAccount account = BankAccount(“123456789”, “John Doe”, 1000.0);
  Account.checkBalance(); // Initial balance

  Account.deposit(500.0);
  Account.checkBalance(); // Balance after deposit

  Account.withdraw(200.0);
  Account.checkBalance(); // Balance after withdrawal

  Account.withdraw(2000.0); // Attempt to withdraw more than balance
}