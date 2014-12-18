class CheckoutPage
  include PageObject

  text_field(:address, {id: 'order_address'})
  text_field(:email, {id: 'order_email'})
  select(:pay_type, {id: 'order_pay_type'})
  button(:place_order, {value: 'Place Order'})
end
