*** Settings ***
Library     Browser

*** Variables ***
${URL}     https://www.saucedemo.com/

*** Test Cases ***
Successful login
    Login    standard_user    secret_sauce      yes

Unsuccessful login
    Login    standard_userr    secret_sauce    no

*** Keywords ***
Login
    [Arguments]     ${email}    ${pass}     ${ShouldBeLogin}
    New Browser     chromium    headless=false
    New Page        ${URL}
    Type Text       data-test=username      ${email}
    Type Text       data-test=password      ${pass}
    Click           data-test=login-button
    
    
    IF    "${ShouldBeLogin}" == "yes"
        Log To Console    Uživatel je přihlášen
        Get Text    data-test=add-to-cart-sauce-labs-backpack            ==      Add to cart
    ELSE
        Log To Console    Uživatel není přihlášen
        Get Text     data-test=login-button            ==      Login
    END
