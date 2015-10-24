Feature: Operaciones basicas

  Scenario: suma
    Given un operando es 1
    And otro operando es 2
    When los sumo
    Then el resultado es 3

  Scenario: resta
    Given el operando es 5
    And el otro operando es 3
    When los resto
    Then el resultado de restar es 2

  Scenario: promedio
    Given nuevo operando es 10
    And otro nuevo operando es 4
    When los promedio
    Then el resultado de promediar es 7

