*** Settings ***
Documentation     A test suite with a single test for valid form.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]   Close Browser

Valid Form
    Open Browser To Form Page
    Fill Form
    Submit Credentials
    Complete Page Should Be Open
    Form Page Should Be Open
    [Teardown]   Close Browser

*** Keywords ***
Fill Form 
    Input Text    id=firstname   Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=destination    Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother
    Input Text    id=email    somsong@kkumail.com
    Input Text    id=phone    081-111-1234