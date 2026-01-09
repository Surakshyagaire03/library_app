class RentalsController < ApplicationController
  #Show checkout form
  def new_checkout
    @books = Book.all
  end

  #Handle form submission
  def create_checkout
    service = CheckoutService.new(params[:book_id], params[:customer_email], params[:rented_on], params[:returned_on])
    
    if service.call
      redirect_to rentals_history_path, notice: "Book rented successfully!"
    else
      redirect_to new_checkout_path, alert: "Error renting book."
    end
  end

  #Customer History
  def history
    @customers = Customer.all.order(:name)

    if params[:customer_id].present?
      @selected_customer = Customer.find(params[:customer_id])
      @rentals = @selected_customer.rentals.includes(:book).order(rented_on: :desc)
    else
      @rentals = []
      @selected_customer = nil
    end
  end
end
