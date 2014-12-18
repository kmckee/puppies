class CheckoutPage
  include PageObject

  text_field(:name, {id: 'order_name'})
  text_field(:address, {id: 'order_address'})
  text_field(:email, {id: 'order_email'})
  select(:pay_type, {id: 'order_pay_type'})
  button(:place_order, {value: 'Place Order'})

  DEFAULT_DATA = {
    'name' => 'Kyle McKee',
    'address' => '123 Main St.',
    'email' => 'KyleMcKee@nowhere.com',
    'pay_type' => 'Credit card',
  }

  def check_out(options = {})
    populate_page_with DEFAULT_DATA.merge(options)
    place_order
  end
end
