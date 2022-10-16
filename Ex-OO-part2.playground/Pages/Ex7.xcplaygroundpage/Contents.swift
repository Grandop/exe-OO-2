//: [Previous](@previous)

class Account {
    var numberAccount: String
    var numberAgency: String
    private var balance: Float = 0

    init(numberAccount: String, numberAgency: String) {
        self.numberAccount = numberAccount
        self.numberAgency = numberAgency
    }
    func withdraw (value: Float) {
        if value <= self.balance {
            self.balance -= value
        } else {
            print("Saldo insuficiente")
        }
    }
    
    func deposit (value: Float) {
        self.balance += value
    }
    
    func getBalance () -> Float{
        return self.balance
    }

}
class CreditAccount: Account {
    var limit : Float = 0

    init(numberAccount: String, numberAgency: String, limit: Float = 100) {
        super.init(numberAccount: numberAccount, numberAgency: numberAgency)
        self.limit = limit

    }

    override func withdraw (value: Float) {
        if value > getBalance() {
            
            let difference = value - getBalance()
            if difference <= self.limit {
                super.withdraw(value: getBalance())
                self.limit -= difference
            } else {
                print("Limite ultrapassado")
            }
            
        } else {
            super.withdraw(value: value)
        }
    }

}

var buy = CreditAccount(numberAccount: "00111", numberAgency: "19238")
buy.deposit(value: 50.00)
buy.getBalance()
buy.withdraw(value: 150)
buy.withdraw(value: 0.1)

//: [Next](@next)
