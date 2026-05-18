CLASS zcl_s4a_fitgap_engine DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES: BEGIN OF ty_requirement,
             req_id   TYPE string,
             category TYPE string,
             status   TYPE string,
           END OF ty_requirement.
    TYPES: BEGIN OF ty_result,
             req_id TYPE string,
             is_gap TYPE abap_bool,
           END OF ty_result.
    TYPES tt_results TYPE STANDARD TABLE OF ty_result WITH EMPTY KEY.
    METHODS evaluate_requirements IMPORTING it_reqs TYPE STANDARD TABLE OF ty_requirement RETURNING VALUE(rt_results) TYPE tt_results.
ENDCLASS.
CLASS zcl_s4a_fitgap_engine IMPLEMENTATION.
  METHOD evaluate_requirements.
    LOOP AT it_reqs ASSIGNING FIELD-SYMBOL(<ls_req>).
      APPEND VALUE #( req_id = <ls_req>-req_id is_gap = COND #( WHEN <ls_req>-status = 'GAP' THEN abap_true ELSE abap_false ) ) TO rt_results.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.