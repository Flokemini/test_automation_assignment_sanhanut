*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Keywords *** 
Open test app
    AppiumLibrary.Open Application  remote_url=http://localhost:4723/wd/hub
...    deviceName=emulator-5554
...    udid=emulator-5554
...    platformVersion=14.0
...    platformName=Android
...    appPackage=com.avjindersinghsekhon.minimaltodo
Click element
    [Arguments]    ${locator}
    AppiumLibrary.wait until page contains element    ${locator}
    AppiumLibrary.Tap    ${locator}
Input in text box
    [Arguments]    ${locator}    ${text}
    AppiumLibrary.wait until page contains element    ${locator}
    AppiumLibrary.Tap    ${locator}
    AppiumLibrary.Input text    ${text}
Clear in text box
    [Arguments]    ${locator}
    AppiumLibrary.Clear Text    [Arguments]
*** Test Cases *** 
Tc01-add to do list
    Open test app
    Click element    ${android_locator['btn_add']}
    Input in text box    ${android_locator['txt_title']}    test
    Click element    ${android_locator['btn_remind']}
    Click element    ${android_locator['txt_today']}
    Click element    ${android_locator['date_ok']}
    Click element    ${android_locator['number_time']}
    Click element    ${android_locator['time_ok']}
    Click element    ${android_locator['btn_next']}
Tc02-edit to do list
    Open test app
    Click element    ${android_locator['btn_edit']}
    Clear in text box    ${android_locator['txt_title']}
    Input in text box    ${android_locator['txt_title']}    test_edit
    Click element    ${android_locator['btn_remind']}
    Click element    ${android_locator['txt_today']}
    Click element    ${android_locator['date_ok']}
    Click element    ${android_locator['number_time']}
    Click element    ${android_locator['time_ok']}
    Click element    ${android_locator['btn_next']}
Tc03-change to night mode
    Open test app
    Click element    ${android_locator['btn_dot']}
    Click element    ${android_locator['txt_setting']}
    Click element    ${android_locator['chkbox_night']}
    Click element    ${android_locator['btn_back']}


