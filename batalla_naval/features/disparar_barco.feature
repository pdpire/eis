Feature: Como usuario quiero disparar a los barcos enemigos

  
  Scenario: Disparo y toco agua
    Given un tablero vacio
    When  Disparo a la coordenada 2 2
    Then  disparo al agua
  
  Scenario: Disparo a un barco pero no lo hundo
    Given un barco ubicado en la posicion 2 2
    When  Disparo a la coordenada 2 2 ocupada
    Then  acierto al barco pero no lo hundo

  Scenario: Disparo, toco un barco y lo hundo
    Given un barco ubicado en las coordenadas 3 3
    When  Disparo a la coordena 3 3 ya ocupada
    Then  acierto al barco y es hundido