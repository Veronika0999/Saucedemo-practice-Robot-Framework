*** Settings ***
Library         Browser

Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify website accessibility
#Get title
   Get Title  ==      ${TEXT_Title}

Test responsiveness across different screen sizes
#Open Website - large
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 1920, 'height': 1080}
    New Page        ${URL}
    Close Browser

#Open Website - medium
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 845, 'height': 933}
    New Page        ${URL}
    Close Browser

#Open Website - small
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 450, 'height': 931}
    New Page        ${URL}
    Close Browser

Verify usability aspects such as error messages
    Login
    Click                   ${SEL_ItemBackpack}
    Click                   ${SEL_ShopingCart}
    Click                   ${SEL_Checkout}
    Click                   ${SEL_CheckoutContinue}
    Get Text                data-test=error-button

*** Keywords ***
Before test set
    New Browser         headless=false
    New Page            ${URL}
    Set Strict Mode     off

After test set
    Close Browser

Login
    Type Text               ${SEL_UserName}                 ${USER1_EMAIL}
    Type Text               ${SEL_LoginFormPwd}             ${USER1_PASSWORD}
    Click                   ${SEL_UserLoginBtn}
