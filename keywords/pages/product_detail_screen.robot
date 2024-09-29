*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for screen
    AppiumLibrary.Wait Until Page Contains Element    ${product_detail_locator.screen}

Click add to cart
    AppiumLibrary.Wait Until Page Contains Element    ${product_detail_locator.btn_add_to_cart}
    AppiumLibrary.Click Element    ${product_detail_locator.btn_add_to_cart}

Click increase amount
    AppiumLibrary.Wait Until Page Contains Element    ${product_detail_locator.btn_increase}
    AppiumLibrary.Click Element    ${product_detail_locator.btn_increase}

Click decrease amount
    AppiumLibrary.Wait Until Page Contains Element    ${product_detail_locator.btn_decrease}
    AppiumLibrary.Click Element    ${product_detail_locator.btn_decrease}

Get number of amount
    AppiumLibrary.Wait Until Page Contains Element    ${product_detail_locator.input_amount}
    ${amount}=    AppiumLibrary.Get Text    ${product_detail_locator.input_amount}
    RETURN    ${amount}