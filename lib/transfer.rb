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
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif
      @status == "complete"
    else
      @receiver.deposit(@amount)
      @sender.deposit(@amount * -1)
      @status = "complete"
    end
  end

  def reverse_transfer

  end


  # your code here
end
