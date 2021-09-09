require 'capybara/dsl'

class CapybaraTestCase < Test::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

end


class GuestBookTest < CapybaraTestCase
  
  def setup
  end
  
  def test_world
    visit('/posts')
    click_link "Dodaj własny wpis już teraz."
    fill_in "Autor", with: "Testowy Autor"
    fill_in "Treść", with: "Testowa treść"
    click_button "Dodaj wpis"

    assert page.has_content?("Dziękujemy za wpis"), "expected a flash message"
    assert page.has_content?("Testowy Autor")
    assert page.has_content?("Testowa treść")
  end

end
