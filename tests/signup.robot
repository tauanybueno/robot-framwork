*** Settings ***
Documentation        Cenários de teste do cadastro de usuários
Library              ../resources/base.robot
Library              FakerLibrary    locale=pt_BR
Library    Browser

*** Test Cases ***
Deve poder cadastrar um novo usuários
    Start Session
    Go To                      http://localhost:3000/signup
    Wait For Elements State    css=h1          visible        10
    Get Text                   css=h1          equal          Faça seu cadastro
    ${name}                    FakerLibrary.Name          
    Fill Text                  id=name         ${name}
    ${email}                   FakerLibrary.Email
    Fill Text                  id=email        ${email}
    ${password}                Set Variable    pwd123
    Fill Text                  id=password     ${password}
    Click                      id=buttonSignup
    Wait For Elements State    css=.notice p    visible    5
    Get Text                   css=.notice p    equal    Boas vindas ao Mark85, o seu gerenciador de tarefas.
    