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

    render json: customer
  end

  def update
  end

  def destroy
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :contact, :birth_date, :address, :is_deleted)
  end
end

# curl -v \
#   -H "Accept: application/json" \
#   -H "Content-type: application/json" \
#   -X POST \
#   -d ' {"customer":{"first_name": "firstname", "last_name": "lastname", "contact":"9607180726"}}' \http://localhost:3000/customers