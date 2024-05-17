*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
TC01 - Get user profile success
    RequestsLibrary.Create Session    test    https://reqres.in/api/users
    ${get}    RequestsLibrary.GET On Session    test    /12
    ${status}    Convert To String    ${get.status_code}
    Should Be Equal    ${status}    200
    ${id}    Convert To String    ${get.json()['data']['id']}
    Should Be Equal    ${id}    12
    Should Be Equal    ${get.json()['data']['email']}    rachel.howell@reqres.in
    Should Be Equal    ${get.json()['data']['first_name']}    Rachel
    Should Be Equal    ${get.json()['data']['last_name']}    Howell
    Should Be Equal    ${get.json()['data']['avatar']}    https://reqres.in/img/faces/12-image.jpg

TC02-Get user profile but user not found
    RequestsLibrary.Create Session    test    https://reqres.in/api/users
    ${get}    RequestsLibrary.GET Request    test    /1234
    ${status}    Convert To String    ${get.status_code}
    Should Be Equal    ${status}    404
    ${content}    Convert To String    ${get.content}
    Should Be Equal    ${content}    {}