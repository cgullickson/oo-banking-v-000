class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, transfer = nil, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  # your code here
end
