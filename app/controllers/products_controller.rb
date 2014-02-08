require 'open-uri'
class ProductsController < ApplicationController

   def index
    products_json = open('http://lcboapi.com/products?per_page=100').read
    @products = JSON.parse(products_json)
   end

   def show
  	products_json = open("http://lcboapi.com/products/#{params[:id]}").read
  	@product = JSON.parse(products_json)

   end

   def product_inventory
  	 inventory_json = open("http://lcboapi.com/products/#{params[:id]}/inventories").read
  	 @inventory = JSON.parse(inventory_json)

   end



end
