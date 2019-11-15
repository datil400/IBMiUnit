**free

ctl-opt bndDir( 'OSSILE/OSSILE' );

//
// Make sure the numberOfXxx calculations are correct
//

/copy ../../main/QRPGLESRC/IBMiUnit_h.rpgle

/define IBMiUi_noMain
/copy ../../main/QRPGLESRC/IBMiUi_h.rpgle


// initialize the test fixtures

IBMiUnit_setupSuite( 'IBMiUnit numberOfXxx calculations #5'
                   : *null : *null
                   : *null : %pAddr( checkNumbers ) );

IBMiUnit_addTestCase( %pAddr( nothing1 ) : 'nothing1' );
IBMiUnit_addTestCase( %pAddr( nothing2 ) : 'nothing2' );
IBMiUnit_addTestCase( %pAddr( nothing3 ) : 'nothing3' );
IBMiUnit_addTestCase( %pAddr( nothing4 ) : 'nothing4' );

IBMiUnit_teardownSuite();

return;


//
// nothing1
//
// Empty sub-procedure that doesn't test anything.
//
dcl-proc nothing1;
end-proc;

//
// nothing2
//
// Empty sub-procedure that doesn't test anything.
//
dcl-proc nothing2;
end-proc;

//
// nothing3
//
// Empty sub-procedure that doesn't test anything.
//
dcl-proc nothing3;
end-proc;

//
// nothing4
//
// Empty sub-procedure that doesn't test anything.
//
dcl-proc nothing4;
end-proc;

//
// checkNumbers
//
// Make sure the numberOfXxx numbers are correct.
//
dcl-proc checkNumbers;

   dcl-pi *n;
      testSuite  likeds( testSuite_t )  const;
   end-pi;

   assertNumericEquals( 4 : testSuite.numberOfCases            : 'numberOfCases' );
   assertNumericEquals( 0 : testSuite.numberOfSuites           : 'numberOfSuites' );
   assertNumericEquals( 0 : testSuite.numberOfDescendantCases  : 'numberOfDescendantCases' );
   assertNumericEquals( 0 : testSuite.numberOfDescendantSuites : 'numberOfDescendantSuites' );

end-proc;
