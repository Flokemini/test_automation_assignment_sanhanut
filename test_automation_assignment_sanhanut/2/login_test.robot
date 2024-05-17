*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Library    DataDriver    file=${CURDIR}/../resources/csv/login_test.csv    dialect=excel    encoding=utf8
Test Template    Login
Test Setup        Seleniumlibrary.Open browser    http://the-internet.herokuapp.com/login    gc
Test Teardown    Close All Browsers

*** Keywords ***
Login
    [Arguments]    ${test_id}
...    ${username}
...    ${password}
...    ${message}
    SeleniumLibrary.Input Text    ${login_page_locator['box_username']}    ${username}
    SeleniumLibrary.Input Text    ${login_page_locator['box_password']}    ${password}
    SeleniumLibrary.Click Element    ${login_page_locator['btn_submit']}
    SeleniumLibrary.Element Should Contain    ${login_page_locator['txt_error']}   ${message}
    IF    '${message}'=='You logged into a secure area!'
        SeleniumLibrary.Click Element    ${login_page_locator['btn_logout']}
    END

*** Test Cases ***
Test : ${test_id}