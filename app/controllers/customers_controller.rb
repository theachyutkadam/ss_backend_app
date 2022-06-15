class CustomersController < ApplicationController
  def index
    render json: Customer.all
  end

  def create
    customer = Customer.new(customer_params)

    if customer.save
      render json: customer, status: :created, location: customer
    else
      render json: customer.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :contact, :birth_date, :address, :is_deleted)
  end
end