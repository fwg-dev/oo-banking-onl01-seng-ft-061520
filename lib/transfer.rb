class Transfer
  # your code here

  attr_reader :amount, :sender, :receiver
  attr_accessor :status
  def initialize(sender, receiver, amount)

    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount

    # @reciver = reciver
 end
 def valid?
   sender.valid? && self.valid?
end
end
