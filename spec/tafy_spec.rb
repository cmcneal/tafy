require './tafy'

# Allow the user to capture a page
## Capture named elements
## Capture id'd elements
## Capture a screenshot
# Allow the user to capture a specific element
# Allow the user to view the page in a local browser

RSpec.configure do |config|
  config.before do
    $tafy = Tafy.new
  end

  config.after do
    tafy = Tafy.new
    tafy.close_browser
  end
end

RSpec.describe Tafy do

  # Create the browser, and launch it
  describe "#setup_browser" do
    it "creates an instance of chrome browser" do
      expect($tafy.which_browser).to eq :chrome
    end
  end

  # Alow the user to navigate to the page they want
  describe "#navigate_to" do
    it "navigates to the url specified" do
      $tafy.navigate_to("https://github.com/cmcneal/tafy")
      expect($tafy.browser.url).to eq "https://github.com/cmcneal/tafy"
    end
  end

  # Launch an interactive shell
  describe "#interactive" do
    it "launches an interactive shell" do
      expect($tafy.interactive).to eq "control"
    end
  end


end
