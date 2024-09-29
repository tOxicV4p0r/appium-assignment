*** Settings ***
Resource    ../import.robot

*** Keywords ***
Open test application
    Open Application    remote_url=${remote_url}    
    ...    platformName=${platformName}    
    ...    appium:platformVersion=${platformVersion}
    ...    appium:automationName=${automationName}
    ...    appium:appPackage=${appPackage}    
    ...    appium:appActivity=${appActivity}

Close test application
    Close All Applications