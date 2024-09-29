*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click cart icon at the topbar
    AppiumLibrary.Wait Until Page Contains Element    ${topbar_locator.icon_cart}
    AppiumLibrary.Click Element    ${topbar_locator.icon_cart}

Get cart badge number
    TRY  
        AppiumLibrary.Wait Until Page Contains Element    ${topbar_locator.icon_cart_badge}
        ${count}=    AppiumLibrary.Get Text    ${topbar_locator.icon_cart_badge}
        ${count}=    BuiltIn.Convert To Integer    ${count}
        RETURN    ${count}
    EXCEPT
        RETURN    ${0}
    END