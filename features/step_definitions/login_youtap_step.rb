require_relative '../support/screen_action.rb'
include Test::Unit::Assertions

And("User click button login portal") do
    click_button_login_portal()
    sleep(10)
end