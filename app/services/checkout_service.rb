class CheckoutService
  def initialize(book_id, customer_email, rented_on, returned_on)
    @book_id = book_id
    @customer_email = customer_email
    @rented_on = rented_on
    @returned_on = returned_on
  end

  def call
    book = Book.find(@book_id)
    customer = Customer.find_or_create_by(email: @customer_email) do |c|
      c.name = @customer_email.split('@').first.titleize
    end

    rental = Rental.new(
      book: book,
      customer: customer,
      rented_on: @rented_on,
      returned_on: @returned_on
    )

    rental.save
  end
end
