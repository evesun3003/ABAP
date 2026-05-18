CLASS ltcl_fitgap_test DEFINITION FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.
  PRIVATE SECTION.
    METHODS test_gap_detection FOR TESTING.
ENDCLASS.
CLASS ltcl_fitgap_test IMPLEMENTATION.
  METHOD test_gap_detection.
    DATA(lo_cut) = NEW zcl_s4a_fitgap_engine( ).
    DATA lt_reqs TYPE STANDARD TABLE OF zcl_s4a_fitgap_engine=>ty_requirement.
    APPEND VALUE #( req_id = 'REQ001' category = 'WRICEF' status = 'GAP' ) TO lt_reqs.
    DATA(lt_res) = lo_cut->evaluate_requirements( lt_reqs ).
    cl_abap_unit_assert=>assert_equals( exp = abap_true act = lt_res[ 1 ]-is_gap msg = 'Gap status verification validation failed' ).
  ENDMETHOD.
ENDCLASS.