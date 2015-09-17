class StorefrontController < ApplicationController
  
  def all_items
    @products = Product.all
    @line_items = LineItem.all
  end

  def items_by_category
    @category = Category.find(params[:cat_id])
    @products = Product.all
    @products_by_cat = []
    
    @products.each do |product|
      if product.category_id == params[:cat_id].to_i
        @products_by_cat.push(product)
      end
    end
    @line_items = LineItem.all
    
  end
    
    def items_by_brand
      @line_items = LineItem.all
      @brand_name = params[:brand]
      @products = Product.all
      @products_by_brand = []
      
      @products.each do |product|
        if product.brand == params[:brand]
          @products_by_brand.push(product)
        end
      end
    
    end    


end
