%% testNoInput
actSol = sumNumbers;
expSol = 0;
assert(actSol == expSol);

%% testOneInput
actSol = sumNumbers(1);
expSol = 1;
assert(actSol == expSol);

%% testMultipleInput
actSol = sumNumbers(1,2);
expSol = 3;
assert(actSol == expSol);

%% testNonNumericInput
try
    sumNumbers('');
catch ME
    assert(strcmp(ME.identifier, 'sumNumbers:MustBeNumeric'));
end

%% testNonScalarInput
try
    sumNumbers([2,3]);
catch ME
    assert(strcmp(ME.identifier, 'sumNumbers:MustBeScalar'));
end
