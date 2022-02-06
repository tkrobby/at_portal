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
    sleep(5)
end

When("User input phone number {string}") do |keyword|
    input_field_phone_number(keyword)
    sleep(2)
    screenshot("register_page")
end

And("User click button Lanjut") do
    click_button_lanjut()
    sleep(5)
end

Then("User verify alerts") do 
    sleep(5)
    String text_error = get_alert_register()
    assert(text_error == 'Nomer HP yang anda masukkan tidak terdaftar')
    screenshot("alert_register")
end

Then("User verify after register") do 
    sleep(5)
    String text_after_register = get_alert_after_register()
    assert(text_after_register == 'Kami telah kirimkan link ke no HP kamu untuk membuat password Portal Usaha Youtap.')
    sleep(5)
    screenshot("after_register")
end