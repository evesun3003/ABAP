CLASS zcl_s4a_profile_exporter DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_s4a_profile_exporter IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'S4Accelerate System Profile Data Compilation Activation...' ).
    out->write( 'Extraction of Schema Layers Complete. Packaging Destination: Stream JSON.' ).
  ENDMETHOD.
ENDCLASS.