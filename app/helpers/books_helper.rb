module BooksHelper
  def formatted_author(book)
    rating = book.rating.to_i   # nil=0

    if rating > 4
      "Masterpiece by #{book.author}"
    else
      "by #{book.author}"
    end
  end
end
