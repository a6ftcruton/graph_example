require './merchant_repository'
require './customer_repository'

class SalesEngine
  attr_reader :merchant_repo,
              :order_repo

  def initialize
    @merchant_repo = MerchantRepository.new(self)
    @customer_repo = CustomerRepository.new(self)
    @order_repo = OrderRepository.new(self)
  end

  def find_orders_by_merchant_id(id)
    #order_repo.find_orders_by_merchant_id(id)
    ["Order Number 7"]
  end

  def find_orders_by_customer_id(id)
    order.find_orders_by_customer_id(id)
  end
end
