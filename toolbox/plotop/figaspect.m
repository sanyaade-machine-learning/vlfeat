function figaspect(a)
% FIGASPECT  Set figure aspect ratio
%   FIGASPECT(A) sets the current figure aspect ratio to A. It
%   leaves the shortest side unaltered.
%
%   Author:: Andrea Vedaldi

pos = get(gcf, 'position') ;

if a >= 1
  pos(3) = a * pos(4) ;
else
  pos(4) = pos(3) / a ;
end

set(gcf,'position',pos) ;