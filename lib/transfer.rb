class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, transfer = nil, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    if @sender.valid? && @receiver.valid? || @sender.valid? || @receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.balance < amount
  end
      

  # your code here
end
