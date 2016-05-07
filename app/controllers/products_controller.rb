class ProductsController < ApplicationController
  def index
    @products = Product.all

  end

  def search
    client = Savon.client(wsdl: 'http://tmn.rossko.ru/service/v1/GetSearch?wsdl', convert_request_keys_to: :camelcase)

    response = client.call(:get_search, :message => {KEY1: '2017cc34dd25e82d6e68bd5294607c02', KEY2: 'de700ad3de1be6b5e2063e298dc58561', TEXT: params[:search] || 'масло'})

    unless response.body[:get_search_response][:search_results][:search_result][:success]
      @products = nil
    else
      @products = response.body[:get_search_response][:search_results][:search_result][:parts_list][:part]
    end

    @response = response.body

  end

  def new_order
    Order.create(phone: params[:phone], product_title: params[:product_title], product_code: params[:product_code])
  end

end
