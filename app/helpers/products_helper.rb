module ProductsHelper
  def product_price_rossko product
    if product.dig(:stocks_list, :stock).try(:last).present?
      product.dig(:stocks_list, :stock).try(:last)[:price]
    else
      '---'
    end
  end

end
