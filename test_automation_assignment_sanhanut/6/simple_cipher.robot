*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Keywords ***
Decrypt Simple Cipher
    [Arguments]    ${encrypted}    ${k}
    ${decrypted} =    Evaluate    simple_cipher_decrypt.simple_cipher_decrypt("${encrypted}", ${k})
    [Return]   ${decrypted}

*** Test Cases ***
Test Decrypt Text
    ${decrypted} =    Decrypt Simple Cipher    VTAOG    2
    Log To Console    ${decrypted} 