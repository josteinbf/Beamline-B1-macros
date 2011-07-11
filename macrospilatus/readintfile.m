function int1 = readintfile(filename)

% function int1 = readintfile(filename)
%
%
% Created: 17.9.2007 UV

global B1_ANALYSIS_DIR


name = sprintf('%s/%s', B1_ANALYSIS_DIR, filename);
fid = fopen(name,'r');
if(fid == -1)
%  disp(sprintf('Could not find file %s.', name));
  int1 = 0;
  return
else
   temp = fscanf(fid,'%e %e %e\n',[3,inf]);
   fclose(fid);
   int1 = struct('q',temp(1,:)','Intensity',temp(2,:)','Error',temp(3,:)');
end;
