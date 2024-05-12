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

Successful logout
    Login    ${USER1_EMAIL}    ${USER1_PASSWORD}
    User is log in
    Log out


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

Log out
    Click       ${SEL_BurgerMenu}
    Click       ${SEL_LogoutBtn}
    Get Text    ${SEL_LoginCredentials}
    Take Screenshot

Before test set
       New Browser        headless=False
       New Page           ${URL}

After test set
        Close Browser
