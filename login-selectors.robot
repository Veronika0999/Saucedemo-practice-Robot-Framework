*** Settings ***
Library     Browser

*** Test Cases ***
Login with data-test selector
    New Browser     chromium         headless=false
    New Page        https://www.saucedemo.com/
    Get Title       ==               Swag Labs
    Type Text       data-test=username        standard_user
    Type Text       data-test=user-name       secret_sauce

Login with id selector
    New Browser     chromium         headless=false
    New Page        https://www.saucedemo.com/
    Get Title       ==               Swag Labs
    Type Text       id=user-name            locked_out_user
    Type Text       id=password             secret_sauce

Login with css selector
    New Browser     chromium        headless=false
    New Page        https://www.saucedemo.com/
    Get Title       ==              Swag Labs

    Set Strict Mode    off
    Type Text       css=.form_input            problem_user

Login with xpath
    New Browser     chromium        headless=false
    New Page        https://www.saucedemo.com/
    Get Title       ==              Swag Labs
    Type Text       xpath=//*[@id="user-name"]        performance_glitch_user
    Type Text       //*[@id="password"]               secret_sauce
