#
# This file contains all Test Data
#

*** Variables ***
#Email and password
${USER1_EMAIL}                      standard_user
${USER1_PASSWORD}                   secret_sauce

#Selectors for login
${SEL_UserName}                     data-test=username
${SEL_LoginFormPwd}                 data-test=password
${SEL_UserLoginBtn}                 data-test=login-button

#Selectors for products
${SEL_ItemBackpack}                 data-test=add-to-cart-sauce-labs-backpack
${SEL_ItemTShirt}                   data-test=add-to-cart-sauce-labs-bolt-t-shirt
${SEL_ItemOnesie}                   data-test=add-to-cart-sauce-labs-onesie
${SEL_ItemBikeLight}                data-test=add-to-cart-sauce-labs-bike-light
${SEL_ItemFleeceJacket}             data-test=add-to-cart-sauce-labs-fleece-jacket
${SEL_ItemAll}                      data-test=add-to-cart-test.allthethings()-t-shirt-(red)


${SEL_ShopingCart}                  id=shopping_cart_container


#Selectors for purchase
${SEL_Checkout}                     data-test=checkout
${SEL_CheckoutName}                 data-test=firstName
${SEL_CheckoutSurname}              data-test=lastName
${SEL_CheckoutZip}                  data-test=postalCode
${SEL_CheckoutContinue}             data-test=continue
${SEL_CheckoutFinish}               data-test=finish
${SEL_CheckoutThankYou}             data-test=complete-header
${SEL_SuccessfulPurchase}           data-test=back-to-products

#Strings
${TEXT_AddCart}                     Add to cart
${TEXT_Login}                       Login
${TEXT_Name}                        John
${TEXT_LastName}                    Doe
${TEXT_ZIP}                         11000
