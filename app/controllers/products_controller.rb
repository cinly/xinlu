class ProductsController < ApplicationController
  def index
    if params[:category].present?
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(category_id: @category_id).recent
    else
      @products = case params[:order]
      when 'by_price'
          Product.all.order("price DESC")
      when 'by_fans'
        Product.all.sort_by {|product| product.fans.count}.reverse
      else
        Product.all.recent
      end
    end
  end

  def show
    @product = Product.find(params[:id])
  end



end
