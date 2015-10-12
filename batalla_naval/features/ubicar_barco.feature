Feature: como usuario quiero ubicar mis barcos

  @wip
  Scenario: ubico mi barco exitosamente
    Given la posicion 1,1 que esta vacia
    When ubico mi barco crucero en horizontal
    Then se ubica exitosamente
  
  @wip
  Scenario: no se puede ubicar un barco en una posicion ya ocupada
    Given la posicion 3,3 esta ocupada
    When ubico mi barco destructor
    Then no se puede ubicar

  @wip
  Scenario: no puedo ubicar mi barco en una posicion fuera del tablero
    Given la posicion 6,6 esta fuera del tablero
    When ubico mi barco crucero
    Then no se puede ubicar
