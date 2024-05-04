*** Settings ***
Library     Browser
Resource    Data_and_Config/TestData.robot
Resource    Data_and_Config/Configuration.robot

Test Setup      Before test set
Test Teardown   After test set

*** Variables ***
${expected_A}              Sauce Labs Backpack
${expected_Z}              Test.allTheThings() T-Shirt (Red)
${expected_low}            $7.99
${expected_high}           $49.99

*** Test Cases ***
Sort products by name (A to Z)
    Set Strict Mode                off
    Login
    Click                          ${SEL_SortContainer}
    Select Options By              ${SEL_SortContainer}         index       0
    ${text}            Get Text    ${SEL_SortName}
    Should Be Equal    ${text}     ${expected_A}

Sort products by name (Z to A)
    Set Strict Mode                off
    Login
    Click                          ${SEL_SortContainer}
    Select Options By              ${SEL_SortContainer}        index       1
    ${text}            Get Text    ${SEL_SortName}
    Should Be Equal    ${text}     ${expected_Z}


Sort products by price (low to high)
    Set Strict Mode                off
    Login
    Click                          ${SEL_SortContainer}
    Select Options By              ${SEL_SortContainer}         index       2
    ${text}            Get Text    ${SEL_SortPrice}
    Should Be Equal    ${text}     ${expected_low}

Sort products by price (high to low)
    Set Strict Mode                off
    Login
    Click                          ${SEL_SortContainer}
    Select Options By              ${SEL_SortContainer}         index       3
    ${text}            Get Text    ${SEL_SortPrice}
    Should Be Equal    ${text}     ${expected_high}


*** Keywords ***
Before test set
       New Browser          headless=False
       New Page             ${URL}

After test set
        Close Browser

Login
    Type Text               ${SEL_UserName}                 ${USER1_EMAIL}
    Type Text               ${SEL_LoginFormPwd}             ${USER1_PASSWORD}
    Click                   ${SEL_UserLoginBtn}
