fid = fopen('./w_h.txt', 'r');
model.W_h = fscanf(fid, '%x', [441 784])';
fclose(fid);

fid = fopen('./w_c.txt', 'r');
model.W_c = fscanf(fid, '%x', [10, 441])';
fclose(fid);

fid = fopen('./b_h.txt', 'r');
model.b_h = fscanf(fid, '%x', [1, Inf]);
fclose(fid);

fid = fopen('./b_c.txt', 'r');
model.b_c = fscanf(fid, '%x', [1, Inf]);
fclose(fid);

save('model.mat', 'model');
clear