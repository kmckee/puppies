class CheckoutPage
  include PageObject
  include DataMagic

  text_field(:name, {id: 'order_name'})
  text_field(:address, {id: 'order_address'})
  text_field(:email, {id: 'order_email'})
  select(:pay_type, {id: 'order_pay_type'})
  button(:place_order, {value: 'Place Order'})

  def check_out(options = {})
    populate_page_with data_for(:checkout_page, options)
    place_order
  end
end
