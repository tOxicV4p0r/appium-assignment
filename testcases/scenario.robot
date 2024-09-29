*** Settings ***
Resource    ../keywords/import.robot

Test Setup    common.Open test application
Test Teardown    common.Close test application

*** Test Cases ***
Should add the search product to the cart
    product_screen.Wait for screen

    # Search product with keyword
    ${found}=     product_screen.Search product and click the first result    search_text=${search_product}
    Should Be Equal    ${found}    ${True}    Not found product

    product_detail_feature.Add to cart with amount    ${buy_amount}
    topbar.Click cart icon at the topbar

    cart_detail_screen.Wait for screen
    ${count}=    cart_detail_screen.Get product count
    Should Be Equal    ${count}    ${1}    Product item should equal to 1