*** Variables ***
${product_locator.screen}    accessibility_id=products screen
${product_locator.product_item}    xpath=//android.view.ViewGroup[@content-desc="store item"]
${product_locator.txt_product_name}    xpath=(//android.widget.TextView[@text="{{product_name}}"])