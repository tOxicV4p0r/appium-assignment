*** Settings ***
Resource    ../../import.robot

*** Keywords ***
Open test application
    Open Application    remote_url=${remote_url}
    ...    platformName=${platformName}
    ...    appium:automationName=${automationName}
    ...    appium:udid=${udid}
    # access app on device or app from computer path
    ...    appium:bundleId=${bundleId}
    # ...    appium:app=${app}

Close test application
    Close All Applications