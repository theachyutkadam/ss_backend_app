class CustomersController < ApplicationController
  def index
    render json: Customer.all
  end

  def create
    customer = Customer.create(customer_params)
    render json: customer
  end

  def update
  end

  def destroy
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :birth_date, :address, :contact, :is_deleted)
  end
end
