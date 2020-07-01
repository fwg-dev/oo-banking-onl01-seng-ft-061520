class Transfer
  # your code here

  attr_reader :amount, :sender, :receiver
  attr_accessor :status
  def initialize(sender, receiver, amount)

    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount

 end
 def valid?
   sender.valid? && self.valid?
end
def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"
    sender.balance -= amount 
    reciever.balance = += amount 
    self.status = "complete"
  else 
    reject_transfer
  end 
end 
 def reverse_transfer
     if valid? && sender.balance > amount && self.status == "complete" 
       reciever.balance = -= amount 
       sender.balance += amount
       self.status = "reversed"
     else 
       reject_transfer
     end
end 
def reject_transfer
  self.status = "rejected"
  "Transaction rejected. Please checl your account balance."
end 
