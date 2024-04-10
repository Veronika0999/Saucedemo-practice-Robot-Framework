*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${test}        GET    https://www.saucedemo.com/

Quick Get Request With Parametrs Test
    ${response}    GET    https://www.saucedemo.com/    expected_status=200
