Feature: Calcular Triangulo
    Para usuario, deseja calcular o tipo de triangulo conforme preenchimento de valores em cada lado

Background:
    Given I am on the Calcular Triangulo homepage

Scenario: Calculate triangle - Equilateral
    When I enter "3" in the "first" side
    And I enter "3" in the "second" side
    And I enter "3" in the "third" side
    Then the message "Esse triângulo é do tipo: equilátero" should be displayed
    And the text "Equilátero" should be displayed correctly

Scenario: Calculate triangle - Isosceles
    When I enter "3" in the "first" side
    And I enter "3" in the "second" side
    And I enter "2" in the "third" side
    Then the message "Esse triângulo é do tipo: isósceles" should be displayed
    And the text "Isósceles" should be displayed correctly

Scenario: Calculate triangle - Scalene
    When I enter "3" in the "first" side
    And I enter "2" in the "second" side
    And I enter "1" in the "third" side
    Then the message "Esse triângulo é do tipo: escaleno" should be displayed
    And the text "Escaleno" should be displayed correctly

Scenario: Did not enter size
    When I do not enter a "size" in the "first" side
    And I do not enter a "size" in the "second" side
    And I do not enter a "size" in the "third" side
    Then the calculate button is disabled until the correct values are entered

Scenario: Typing letters
    When I try to enter "A" in the "first" side
    And I try to enter "d" in the "second" side
    And I try to enter "Sx" in the "third" side
    And it is not allowed any letters or numbers in any side
    Then the calculate button is disabled until the correct values are entered
    

Scenario: Typing less than or equal to zero
    When I try to enter "0" in the "first" side
    And I try to enter "00" in the "second" side
    And I try to enter "-1" in the "third" side
    And it is not allowed any letters or numbers in any side
    Then the calculate button is disabled until the correct values are entered 
    
    
Scenario: Changing content by letters
    When I enter "5" in the "first" side
    And I enter "6" in the "second" side
    And I enter "7" in the "third" side
    And I try to change "A" in the "first" side
    And I try to change "ç" in the "second" side
    And I try to change "ZZ" in the "third" side
    And it is not allowed any letters or numbers in any side
    Then the calculate button is disabled until the correct values are entered 
    

Scenario: Changing content by a value less than or equal to zero
    When I enter "10" in the "first" side
    And I enter "20" in the "second" side
    And I enter "50" in the "third" side
    And I try to change "0" in the "first" side
    And I try to change "-1" in the "second" side
    And I try to change "00" in the "third" side
    And it is not allowed any letters or numbers in any side
    Then the calculate button is disabled until the correct values are entered 
    