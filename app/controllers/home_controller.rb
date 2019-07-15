class HomeController < ApplicationController
  def index
    @books = Delivery.where("book_id = '1'").count
  end
end
