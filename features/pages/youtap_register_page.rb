$button_aktivasi_akun = "Aktivasi Akun Portal"
$button_login_portal = 'Login Ke Portal'
$field_phone_number = "mid"
$button_lanjut = "//button[contains(@class,'btn btn-primary btn-block font-helve')]"
$text_alert = '//*[@id="page-basic"]/div/div/div/div[2]/div/div/div[2]/div'

def click_button_aktivasi()
    $browser.find_element(:link_text,$button_aktivasi_akun).click
end

def click_button_login_portal()
    $browser.find_element(:link_text,$button_login_portal).click
end

def input_field_phone_number(keyword)
    $browser.find_element(:id,$field_phone_number).send_keys(keyword)
end

def clear_field_phone_number()
    $browser.find_element(:id,$field_phone_number).clear
end

def click_button_lanjut()
    $browser.find_element(:xpath,$button_lanjut).click
end

def get_alert_register()
    $browser.find_element(:xpath,$text_alert).text
end

