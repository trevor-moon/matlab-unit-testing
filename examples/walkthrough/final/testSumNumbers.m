function tests = testSumNumbers
    tests = functiontests(localfunctions);
end
    
function testNoInput(testCase)
    actSol = sumNumbers;
    expSol = 0;
    testCase.verifyEqual(actSol, expSol);
end

function testOneInput(testCase)
    actSol = sumNumbers(1);
    expSol = 1;
    testCase.verifyEqual(actSol, expSol);
end

function testMultipleInput(testCase)
    actSol = sumNumbers(1,2);
    expSol = 3;
    testCase.verifyEqual(actSol, expSol);
end

function testNonNumericInput(testCase)
    testCase.verifyError(@() sumNumbers(''), 'sumNumbers:MustBeNumeric');
end

function testNonScalarInput(testCase)
    testCase.verifyError(@() sumNumbers([2, 3]), 'sumNumbers:MustBeScalar');
end