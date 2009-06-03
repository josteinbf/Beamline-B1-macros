function f = writemythenfile(q,int1,err1,fsn)

% function f = writemythenfile(q,int1,err1,fsn)
%
% Writes into file intnormFSN.dat the information, excluding points
%   that have int1 == 0.
%
% Created: 15.9.2007 UV

name = sprintf('waxs_%05d.cor',fsn);
fid = fopen(name,'w');
if(fid > -1)
   disp(sprintf('Saving data to file %s',name));
   for(k = 1:length(int1))
     fprintf(fid,'%e %e %e\n',q(k),int1(k),err1(k));
   end;
   fclose(fid);
   f = 1;
else
   f = 0;
end;
