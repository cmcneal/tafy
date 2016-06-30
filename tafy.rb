require 'watir-webdriver'
require 'pry'

class Tafy
  # attr_reader :browser
  def initialize
    @browser = Watir::Browser.new :chrome
  end

  def browser
    @browser
  end

  def which_browser
    @browser.driver.browser
  end

  def navigate_to(url)
    @browser.goto(url)
  end

  def interactive
    binding.pry
    return "control"
  end

  def close_browser
    @browser.close
  end

end
