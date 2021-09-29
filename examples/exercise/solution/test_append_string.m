%% test_nonempty_char_passes
str1 = 'abc';
str2 = 'def';
str = append_string(str1, str2);
assert(strcmp(str, 'abcdef'));

%% test_nonempty_str_passes
str1 = "abc";
str2 = "def";
str = append_string(str1, str2);
assert(strcmp(str, 'abcdef'));

%% test_nonempty_cellstr_passes
str1 = {'abc'};
str2 = {'def'};
str = append_string(str1, str2);
assert(strcmp(str, 'abcdef'));

%% test_empty_input_passes
str1 = '';
str2 = '';
str = append_string(str1, str2);
assert(strcmp(str, ''));

%% test_nonstring_input_fails
str1 = 'abc';
str2 = 2;
try
    str = append_string(str1, str2);
catch ME
    assert(strcmp(ME.identifier, 'append_string:InputMustBeString'));
end

%% test_nonscalar_input_fails
str1 = {'abc', 'def'};
str2 = 'ghi';
try
    str = append_string(str1, str2);
catch ME
    assert(strcmp(ME.identifier, 'append_string:InputMustBeScalar'));
end
