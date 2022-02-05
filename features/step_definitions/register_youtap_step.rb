require_relative '../support/screen_action.rb'
include Test::Unit::Assertions

Given("User open portal.youtap.id") do
    maximize_browser()
    open_url("https://portal.youtap.id")
    sleep(10)
    screenshot("homepage")
end

And("User click button aktivasi akun") do
    click_button_aktivasi()
    sleep(10)
end

When("User input phone number {string}") do |keyword|
    input_field_phone_number(keyword)
    sleep(5)
end

And("User click button Lanjut") do
    click_button_lanjut()
    sleep(5)
end

Then("User verify alerts") do 
    sleep(5)
    String a = get_alert_register()
    assert(a == 'Nomer HP yang anda masukkan tidak terdaftar')
end