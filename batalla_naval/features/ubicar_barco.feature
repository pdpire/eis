Feature: como usuario quiero ubicar mis barcos

  
  Scenario: ubico mi barco exitosamente
    Given la posicion 4,3 que esta vacia
    When ubico mi barco submarino
    Then se ubica exitosamente
  
  
  Scenario: no se puede ubicar un barco en una posicion ya ocupada
    Given la posicion 6,6 esta ocupada
    When ubico mi barco destructor
    Then no se puede ubicar


  Scenario: no puedo ubicar mi barco en una posicion fuera del tablero
    Given la posicion 6,6 esta fuera del tablero
    When ubico mi barco crucero
    Then no se puede ubicar en esa pos
