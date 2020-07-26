require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test 'full title' do 
    assert_equal full_title, "#{@base_title}"
    assert_equal full_title('Contact'), "Contact | #{@base_title}"
    assert_equal full_title('About'), "About | #{@base_title}"
    assert_equal full_title('Help'), "Help | #{@base_title}"
    assert_equal full_title('Home'), "Home | #{@base_title}"
    
  end
end
