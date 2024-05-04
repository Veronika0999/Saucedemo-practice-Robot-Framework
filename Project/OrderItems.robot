*** Settings ***
Library     Browser
Resource    Data_and_Config/TestData.robot
Resource    Data_and_Config/Configuration.robot

Test Setup      Before test set
Test Teardown   After test set


*** Test Cases ***
Order Sauce Labs Backpack
    Login
    Click                   ${SEL_ItemBackpack}
    Click                   ${SEL_ShopingCart}
    Checkout

Order Sauce Labs Bolt T-Shirt
    Login
    Click                   ${SEL_ItemTShirt}
    Click                   ${SEL_ShopingCart}
    Checkout

Order Sauce Labs Onesie
    Login
    Click                   ${SEL_ItemOnesie}
    Click                   ${SEL_ShopingCart}
    Checkout

Order Sauce Labs Bike Light
    Login
    Click                   ${SEL_ItemBikeLight}
    Click                   ${SEL_ShopingCart}
    Checkout

Order Sauce Labs Fleece Jacket
    Login
    Click                   ${SEL_ItemFleeceJacket}
    Click                   ${SEL_ShopingCart}
    Checkout

Order Sauce Test.allTheThings() T-Shirt (Red)
    Login
    Click                   ${SEL_ItemAll}
    Click                   ${SEL_ShopingCart}
    Checkout

*** Keywords ***
Login
    Type Text               ${SEL_UserName}                 ${USER1_EMAIL}
    Type Text               ${SEL_LoginFormPwd}             ${USER1_PASSWORD}
    Click                   ${SEL_UserLoginBtn}

Checkout
    Click                   ${SEL_Checkout}
    Type Text               ${SEL_CheckoutName}             ${TEXT_Name}
    Type Text               ${SEL_CheckoutSurname}          ${TEXT_LastName}
    Type Text               ${SEL_CheckoutZip}              ${TEXT_ZIP}
    Click                   ${SEL_CheckoutContinue}
    Click                   ${SEL_CheckoutFinish}
    Get Text                ${SEL_CheckoutThankYou}         ==          Thank you for your order!
    Take Screenshot
    Click                   ${SEL_SuccessfulPurchase}


Before test set
       New Browser          headless=False
       New Page             ${URL}

After test set
        Close Browser
