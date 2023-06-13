*** Settings ***
Documentation         Cenários de teste do cadastro de usuários
Resource              ../resources/base.resource
Suite Setup           Log    Tudo aqui ocorre antes da Suite (antes de todos os testes)
Suite Teardown        Log    Tudo aaqui ocorre depois da Suite (depois de todos os testes)
Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
Deve poder cadastrar um novo usuários  
    ${user}        Create Dictionary    
    ...    name=Fernando Papito    
    ...    email=papito@yahoo.com    
    ...    password=pwd123

    Remove user from database    ${user}[email]

    Go to signup page
    Submit sign up form    ${user}
    Notice should be       Boas vindas ao Mark85, o seu gerenciador de tarefas. 
    
Não deve permitir o cadastro com o email duplicado
    [Tags]    dup

    ${user}        Create Dictionary    
    ...    name=Fernando Papito    
    ...    email=papito@gmail.com    
    ...    password=pwd123

    Remove user from database    ${user}[email]
    Insert user from database    ${user}

    Go to signup page
    Submit sign up form    ${user}
    Notice should be       Oops! Já existe uma conta com o e-mail informado.

Campos obrigatorios
    [Tags]    required

    ${user}        Create Dictionary     
    ...    name=${EMPTY}
    ...    email=${EMPTY}
    ...    password=${EMPTY}
    
    Go to signup page
    Submit sign up form    ${user}

    Alert should be    Informe seu nome completo
    Alert should be    Informe seu e-email
    Alert should be    Informe uma senha com pelo menos 6 digitos

Nao deve cadastrar com email incorreto
    [Tags]    inv_email
    ${user}        Create Dictionary    
    ...    name= Charles Xavier
    ...    email=xavier.com.br
    ...    password=pwd123
    
    Go to signup page
    Submit sign up form    ${user}
    Alert should be        Digite um e-mail válido
