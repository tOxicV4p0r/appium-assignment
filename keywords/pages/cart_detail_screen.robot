*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for screen
    AppiumLibrary.Wait Until Page Contains Element    ${cart_detail_locator.screen}

Get product count
    AppiumLibrary.Wait Until Page Contains Element    ${cart_detail_locator.item_row}
    ${new_xpath}=    String.Remove String    ${cart_detail_locator.item_row}    xpath=
    ${count}=    AppiumLibrary.Get Matching Xpath Count    ${new_xpath}
    ${count}=    BuiltIn.Convert To Integer    ${count}
    RETURN    ${count}