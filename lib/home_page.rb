class HomePage
  include PageObject

  page_url('http://puppies.heroku.com')

  
  def view_details
    element(:button, {value: 'View Details', index: 0}).click
  end
end
