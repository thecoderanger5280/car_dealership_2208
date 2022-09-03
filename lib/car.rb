class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :color
  def initialize(name, monthly_payment, loan_length)
    @make = name.split(' ')[0]
    @model = name.split(' ')[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end