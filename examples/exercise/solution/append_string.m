function str = append_string(str1, str2)
    % check inputs
    check_input(str1);
    check_input(str2);

    % convert to charactery arrays
    char1 = convertStringsToChars(str1);
    char2 = convertStringsToChars(str2);

    % append inputs
    str = append(char1, char2);
end

function check_input(str)
    % check input datatype (char, string, or cell array of string)
    is_valid_type = ischar(str) | isstring(str) | iscellstr(str);
    assert(is_valid_type, 'append_string:InputMustBeString', 'Input must be string');

    % check that input is scalar
    if ~ischar(str)
        assert(isscalar(str), 'append_string:InputMustBeScalar', 'Input must be scalar');
    end
end
