function s = sumNumbers(varargin)
    %SUMNUMBERS Sum numbers
    %
    % Examples:
    %
    %   s = sumNumbers(0)
    %   s = sumNumbers(1,2,3)
    
    nargs = length(varargin);
    s = 0;
    for inum = 1:nargs
        assert(isnumeric(varargin{inum}), 'sumNumbers:MustBeNumeric', 'Inputs must be numeric');
        assert(isscalar(varargin{inum}), 'sumNumbers:MustBeScalar', 'Inputs must be scalar');
        s = s + varargin{inum};
    end
end
