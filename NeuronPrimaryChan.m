function [z,chanprim] = NeuronPrimaryChan(filename,filefiring,clust_idx,chanpos)

pos = strfind(filename,'.');
DATAPATH = [filename(1:pos-1) '_MountainSort\'];
spkclust = readmda([DATAPATH 'output\' filefiring]);
t1 = find(spkclust(3,:)==clust_idx,1);
chanprim = spkclust(1,t1);
z = chanpos(chanprim,2);


