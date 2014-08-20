class Customer
  def initialize(params, repo)
    @id = params[:id]
    @customer_repo = repo
  end

  def orders
    customer_repo.find_orders_by_customer_id(id)
  end
end
