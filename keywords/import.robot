*** Settings ***
Library    AppiumLibrary
Library    String

Variables    ../resources/settings/${env}/android.yaml
Variables    ../resources/testdata/data.yaml

Resource    ./common/common.robot

Resource    ./pages/cart_detail_screen.robot
Resource    ./pages/product_detail_screen.robot
Resource    ./pages/product_screen.robot
Resource    ./pages/topbar.robot

Resource    ./features/product_detail_feature.robot

Resource    ../resources/locators/cart_detail_locator.robot
Resource    ../resources/locators/product_detail_locator.robot
Resource    ../resources/locators/product_locator.robot
Resource    ../resources/locators/topbar_locator.robot