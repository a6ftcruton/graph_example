require './customer'

class CustomerRepository

  def initialize(engine)
    @customers    = build_customers
    @sales_engine = engine
  end

  def build_customers
    (1..5).collect do |i|
      Customer.new({:id => i}, self)
    end
  end

  def find_orders_by_customer_id(id)
    sales_engine.find_orders_by_customer_id(id)
  end
end
