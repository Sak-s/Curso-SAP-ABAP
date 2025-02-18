CLASS zsv_hola_mundo_savc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS Multiplicacion
      IMPORTING
        i_numero_a         TYPE i
        i_numero_b         TYPE i
      RETURNING
        VALUE(e_resultado) TYPE i.
ENDCLASS.



CLASS zsv_hola_mundo_savc IMPLEMENTATION.


  METHOD multiplicacion.

    e_resultado = i_numero_a * i_numero_b.

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA resultado TYPE i.
    multiplicacion(
      EXPORTING
        i_numero_a  = 5
        i_numero_b  = 3
         RECEIVING
        e_resultado = resultado
    ).
    out->write( resultado ).

    DATA(resultad) = multiplicacion( exporting i_numero_a = 5 i_numero_b = 7 ).
    out->write( resultad ).


  ENDMETHOD.

ENDCLASS.
