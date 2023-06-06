*** Settings ***
Documentation        Elementos e ações da página de cadastro
Library              Browser
Resource             ../env.robot

*** Keywords ***
Go to signup page
    Go To                      ${BASE_URL}/signup
    Wait For Elements State    css=h1              visible        10
    Get Text                   css=h1              equal          Faça seu cadastro
Submit sign up form
    [Arguments]             ${user}
    Fill Text               css=input[name=name]               ${user}[name]
    Fill Text               css=input[name=email]              ${user}[email]
    Fill Text               css=input[name=password]           ${user}[password]
    Click                   css=button[type=submit] >> text=Cadastrar
Notice should be
    [Arguments]                ${expected_text}
    ${element}                 Set Variable            css=.notice p
    Wait For Elements State    ${element}              visible    5
    Get Text                   ${element}              equal      ${expected_text}