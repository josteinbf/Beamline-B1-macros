function f = writeintfile(q,int1,err1,header)

% function f = writeintfile(q,int1,err1,header)
%
% Writes into file intnormFSN.dat the information, excluding points
%   that have int1 == 0.
%
% Created: 15.9.2007 UV

global B1_ANALYSIS_DIR

name = sprintf('%s/intnorm%d.dat', B1_ANALYSIS_DIR, getfield(header,'FSN'));
fid = fopen(name,'wt');
if(fid > -1)
   disp(sprintf('Saving data to file %s',name));
   for(k = 1:length(int1))
     fprintf(fid,'%e %e %e\n',q(k),int1(k),err1(k));
   end;
   fclose(fid);
   f = 1;
else
    disp(sprintf('warning: could not write to %s.', name));
   f = 0;
end;
