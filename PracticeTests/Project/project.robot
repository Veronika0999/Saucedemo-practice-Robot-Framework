*** Settings ***
Library     Browser
Resource    Data_and_Config/TestData.robot
Resource    Data_and_Config/Configuration.robot

Test Setup      Before test set
Test Teardown   After test set


*** Test Cases ***
Successful login
    Login    ${USER1_EMAIL}    ${USER1_PASSWORD}
    User is log in

Unsuccessful login
    Login    standard_userr    ${USER1_PASSWORD}
    User is not log in

Purchase product
    Login    ${USER1_EMAIL}    ${USER1_PASSWORD}
    User is log in
    Buy a product

*** Keywords ***
Login
    [Arguments]     ${email}    ${pass}
    Type Text       ${SEL_UserName}         ${email}
    Type Text       ${SEL_LoginFormPwd}     ${pass}
    Click           ${SEL_UserLoginBtn}

User is log in
    Get Text          ${SEL_ItemBackpack}        ==      ${TEXT_AddCart}
    Take Screenshot

User is not log in
    Get Text     ${SEL_UserLoginBtn}            ==        ${TEXT_Login}
    Take Screenshot

Buy a product
    Click                   ${SEL_ItemBackpack}
    Click                   ${SEL_ShopingCart}
    Click                   ${SEL_Checkout}
    Type Text               ${SEL_CheckoutName}             ${TEXT_Name}
    Type Text               ${SEL_CheckoutSurname}          ${TEXT_LastName}
    Type Text               ${SEL_CheckoutZip}              ${TEXT_ZIP}
    Click                   ${SEL_CheckoutContinue}
    Click                   ${SEL_CheckoutFinish}
    Click                   ${SEL_SuccessfulPurchase}

Before test set
       New Browser        headless=False
       New Page           ${URL}

After test set
        Close Browser
