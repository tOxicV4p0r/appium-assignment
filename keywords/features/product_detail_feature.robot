*** Settings ***
Resource    ../import.robot

*** Keywords ***
Add to cart with amount
    [Arguments]    ${amount}
    product_detail_screen.Wait for screen
    ${current_amount}=    product_detail_screen.Get number of amount
    WHILE    ${current_amount} != ${amount}
        product_detail_screen.Click increase amount
        ${current_amount}=    product_detail_screen.Get number of amount
    END

    product_detail_screen.Click add to cart
