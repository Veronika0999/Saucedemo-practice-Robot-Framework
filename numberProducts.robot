*** Settings ***
Library     Browser

*** Variables ***
${URL}         https://www.saucedemo.com/

*** Test Cases ***
Number of products
    New Browser             chromium        headless=false
    Open website            ${URL}
    Log in                  standard_user   secret_sauce
    Available products      ${URL}

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

Available products
    [Arguments]             ${pURL}
    ${numberOfProducts}     Get Element Count    css=.inventory_item_name
    
    FOR    ${counter}    IN RANGE   ${numberOfProducts}
        Log    ${counter}
         ${courseName}     Get Text    css=.inventory_item_name >> nth=${counter}
         Log To Console    ${courseName}
    END


