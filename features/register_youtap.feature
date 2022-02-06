@RegisterYoutap
Feature: Register Youtap

@registerYoutap @smoke @negativecase
Scenario:  User want to register to portal youtap
    Given User open portal.youtap.id
        And User click button aktivasi akun
    When User input phone number "0081394130622"
        And User click button Lanjut
    Then User verify alerts

@registerYoutap @smoke @positifcase
Scenario:  User want to register to portal youtap
    Given User open portal.youtap.id
        And User click button aktivasi akun
    When User input phone number "81394130621"
        And User click button Lanjut
    Then User verify after register