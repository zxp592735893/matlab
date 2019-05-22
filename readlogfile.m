fid = fopen('C:\Users\zxp\Desktop\Failed\CTLRR-300_CTMRR300_ID10.log');
data = [];

tline = fgetl(fid);

while ~feof(fid)
    if strncmp(tline,'      TX',8)
        data = strvcat(data, tline);
    end
    if strncmp(tline,'           Measurement',20)
        data = strvcat(data, tline);
    end
    tline = fgetl(fid);
end
fclose(fid);

