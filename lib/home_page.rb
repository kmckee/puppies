class HomePage
  include PageObject

  page_url('http://puppies.heroku.com')

  divs(:name, {class: 'name'})
  buttons(:view_detail, {value: 'View Details'})
  
  def view_details_for name
    index = name_elements.find_index { |a_div| a_div.text == name }
    view_detail_elements[index].click
  end
end
