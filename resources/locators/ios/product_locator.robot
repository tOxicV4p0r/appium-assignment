*** Variables ***
${product_locator.screen}     xpath=//XCUIElementTypeOther[@name="Products"]
${product_locator.product_item}    xpath=///XCUIElementTypeOther[@name="store item"]
${product_locator.txt_product_name}    xpath=//XCUIElementTypeStaticText[@name="store item text" and @label="{{product_name}}"]