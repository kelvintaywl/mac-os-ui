*** Settings ***
Resource    ../variables/global_var_keywords.robot
Library    SeleniumLibrary
Library    SikuliLibrary    mode=NEW
Library    Screenshot

*** Variables ***
${sikuli_images}    robot/sikuli_images/

*** Test Cases ***
Launch Safari and Take Screenshot
    [tags]    Mac
    Setup Sikuli Process
    SeleniumLibrary.Open Browser    https://internal.swg.ai    Safari
    Open Mac Start Menu
    Sleep    5s
    Take Screenshot

*** Keywords ***
Setup Sikuli Process
    Start Sikuli Process
    Add Image Path    ${sikuli_images}
    Set Min Similarity    0.7

Open Mac Start Menu
    Click    macStartIcon.png
