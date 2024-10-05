*** Variables ***
${product_detail_locator.screen}    accessibility_id=product screen
${product_detail_locator.btn_add_to_cart}    accessibility_id=Add To Cart button
${product_detail_locator.btn_increase}    accessibility_id=counter plus button
${product_detail_locator.btn_decrease}    accessibility_id=counter minus button
# ${product_detail_locator.input_amount}    accessibility_id=counter amount
${product_detail_locator.input_amount}    xpath=//android.view.ViewGroup[@content-desc="counter amount"]/android.widget.TextView