module BooksHelper
  def amazon_link(book, opts={})
    link_to "View on Amazon", "https://www.amazon.com/gp/product/#{book.isbn}", opts
  end

  def book_cover_image(book, opts={})
    opts[:width]  ||= 200
    image_tag "https://s3.amazonaws.com/thumbs.bookshare.io/#{book.isbn}/cover.jpg", opts
  end

end
