# Bank tech test

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit  || debit  || balance
14/01/2012 ||         || 500.00 || 2500.00
13/01/2012 || 2000.00 ||        || 3000.00
10/01/2012 || 1000.00 ||        || 1000.00
```

### User Stories
```

As a user,
So that I can manage my money,
I want to be able to create a new bank account.

As a user,
So that I can quickly access my account,
I would like to be able to print out my bank statement.

As a user,
So that I can keep track of my bank account,
I would like to be able to see on my bank statement whether each transaction was a deposit or withdrawal.

As a user,
So that I can keep track of my bank account,
I would like to see the date of each transaction on my bank statement.

As a user,
So that I can keep track of my bank account,
I would like to see my current balance immediately after each transaction.

```

### Domain Model

| Objects       | Messages          |
| ------------- | --------------    |
| User          |                   |
| Account       | balance           |
| Transactions  | date              |
|               | deposit/withdrawal|
| Statement     | print_statement   |

### Installation
```

* clone this repo: https://github.com/katiekoschland/bank-tech-test
* cd to bank-tech-test
* Run bundle install

```

### Interaction with irb:
```

$ irb
2.4.0 :001 > require './lib/transaction.rb'
  => true
2.4.0 :002 > require './lib/bank_account.rb'
  => true
2.4.0 :003 > require './lib/transaction_list.rb'
  => true
2.4.0 :004 > require './lib/print_statement.rb'
  => true
2.4.0 :005 > transaction_list = TransactionList.new
  => #<TransactionList:0x007f8df9056a20 @transactions={}, @transaction_class=Transaction>
2.4.0 :006 > bank = BankAccount.new(transaction_list)
  => #<BankAccount:0x007f8df90364a0 @balance=0, @transaction_list=#<TransactionList:0x007f8df9056a20 @transactions={}, @transaction_class=Transaction>>
2.4.0 :007 > bank.deposit(2000)
  => 2000
2.4.0 :008 > bank.withdraw(100)
  => 1900
2.4.0 :009 > bank.current_balance
=> "Your balance is £1900"
```

### Testing

* Run rspec
