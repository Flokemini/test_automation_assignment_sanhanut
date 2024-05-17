*** Settings ***
# Library
Library    SeleniumLibrary
Library    RequestsLibrary
Library    AppiumLibrary
# Custom Library
Library    ${CURDIR}/../custom_library/simple_cipher_decrypt.py
# Locator
Resource    ${CURDIR}/locator.robot
Resource    ${CURDIR}/android_locator.robot