CLASS zcl_inser_0001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INSER_0001 IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.
DATA:it_clientes TYPE TABLE OF ztclientes.

*
*   fill internal table (it_clientes)
    it_clientes = VALUE #(
        ( cliente = '1' nombre = 'Maria Alejandra Sánchez'  direccion = 'Carrera 5 calle 85 Apto 2032' )
        ( cliente = '2' nombre = 'Juan Esteban Sánchez Saa' direccion = 'Carrera 98 A # 42-85 Apto 404 Torre 3')
        ( cliente = '3' nombre = 'Nelly Estella Saa'  direccion = 'Carrera 98 A # 42-85 Apto 404 Torre 3')
        ( cliente = '4' nombre = 'Yone Alexander Sánchez' direccion = 'Carrera 56 # 4-20 Apto 302')
        ( cliente = '5' nombre = 'Néstor Javier Sánchez' direccion = 'Carrera 98 A # 42-85 Apto 404 Torre 3')
        ( cliente = '6' nombre = 'Orfa Sánchez' direccion = 'Av. 2BN #75 AN 03 Brisas de los alamos'  )
        ( cliente = '7' nombre = 'Efrain Sánchez' direccion = 'Av. 2BN #75 AN 03 Brisas de los alamos')
     ).

*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ZTCLIENTES.
*   insert the new table entries
    INSERT ZTCLIENTES FROM TABLE @it_clientes.

*   check the result
    SELECT * FROM ZTCLIENTES INTO TABLE @it_clientes.
    out->write( sy-dbcnt ).
    out->write( 'datos insertados!' ).



ENDMETHOD.
ENDCLASS.
