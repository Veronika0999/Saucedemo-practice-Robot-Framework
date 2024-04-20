*** Settings ***
Library     Browser

*** Variables ***
${URL}         https://www.saucedemo.com/

*** Test Cases ***
Purchase product
    New Browser             chromium        headless=false
    Open website            ${URL}
    Log in                  standard_user   secret_sauce
    Buy a product           ${URL}

*** Keywords ***
Open website
    [Arguments]             ${pURL}
    New Page                ${pURL}
    Get Title   ==          Swag Labs

Log in
    [Arguments]             ${email}                ${password}
    Type Text               data-test=username      ${email}
    Type Text               data-test=password      ${password}
    Click                   data-test=login-button

Buy a product
    [Arguments]             ${pURL}
    Click                   data-test=add-to-cart-sauce-labs-backpack
    Click                   id=shopping_cart_container
    Click                   data-test=checkout
    Type Text               data-test=firstName     John
    Type Text               data-test=lastName      Doe
    Type Text               data-test=postalCode    11000
    Click                   data-test=continue
    Click                   data-test=finish
    Click                   data-test=back-to-products