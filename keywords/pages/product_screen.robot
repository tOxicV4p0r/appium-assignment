*** Settings ***
Resource    ../import.robot

*** Keywords ***
Wait for screen
    AppiumLibrary.Wait Until Page Contains Element    ${product_locator.screen}

Search product and click the first result
    [Arguments]    ${search_text}
    Wait for screen
    AppiumLibrary.Wait Until Page Contains Element    ${product_locator.product_item}
    TRY
        ${search_text}=    String.Replace String    ${product_locator.txt_product_name}    {{product_name}}    ${search_text}
        AppiumLibrary.Wait Until Page Contains Element    ${search_text}
        ${search_text}=    BuiltIn.Catenate    SEPARATOR=    ${search_text}    [1]
        AppiumLibrary.Click Element    ${search_text}
        AppiumLibrary.Wait Until Page Does Not Contain Element    ${product_locator.screen}
    EXCEPT
        RETURN    ${False}
    END

    RETURN    ${True}
    

    