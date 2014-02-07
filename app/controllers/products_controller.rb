require 'open-uri'
class ProductsController < ApplicationController

   def index
    products_json = open('http://lcboapi.com/products').read
    @products = JSON.parse(products_json)
   end

  def show
  	products_json = open('http://lcboapi.com/products').read
  	@products = JSON.parse(products_json)
  	@product = @products['result'].select {|p| p['id'].to_i == params[:id].to_i}.first

  end


end
