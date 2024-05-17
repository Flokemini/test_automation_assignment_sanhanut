*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Variables ***
@{List A}    1    2    3    5    6    8    9
@{List B}    3    2    1    5    6    0

*** Test Cases ***
Check Duplicate Items
    ${duplicates}    Evaluate    list(set(${List A}) & set(${List B}))
    log to console  Duplicates: ${duplicates}