function Population_RDSDisp()

%% Sessions
Exper(1).Test(1).FileData = 'L:\Seiji\Data\ST_t006\ST_t006_200402_122054.rhd';
Exper(1).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200402T122410-CheckerBoard.mat';
Exper(1).Test(1).FileSpike = '';
Exper(1).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200402_122446.mat';
Exper(1).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200402T122448-Drift Gratings.mat';
Exper(1).Test(2).FileSpike = 'firings_precur1.mda';
Exper(1).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200402_123245.mat';
Exper(1).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200402T124621-RandomDotStereogram.mat';
Exper(1).Test(3).FileSpike = 'firings_precur2.mda';
Exper(1).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200402_124650.mat';
Exper(1).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200402T130630-WhiteNoise.mat';
Exper(1).Test(4).FileSpike = 'firings_precur3.mda';
Exper(1).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200402_130744.mat';
Exper(1).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200402T130746-Drift Gratings.mat';
Exper(1).Test(5).FileSpike = 'firings_precur4.mda';

Exper(2).Test(1).FileData = 'L:\Seiji\Data\ST_t006\ST_t006_200404_132825.rhd';
Exper(2).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200404T133208-CheckerBoard.mat';
Exper(2).Test(1).FileSpike = '';
Exper(2).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200404_133258.mat';
Exper(2).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200404T133301-Drift Gratings.mat';
Exper(2).Test(2).FileSpike = 'firings_precur1.mda';
Exper(2).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200404_134121.mat';
Exper(2).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200404T135500-RandomDotStereogram.mat';
Exper(2).Test(3).FileSpike = 'firings_precur2.mda';
Exper(2).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200404_135533.mat';
Exper(2).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200404T141046-WhiteNoise.mat';
Exper(2).Test(4).FileSpike = 'firings_precur3.mda';
Exper(2).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t006\ST_t006_200404_141208.mat';
Exper(2).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t006\20200404T141212-Drift Gratings.mat';
Exper(2).Test(5).FileSpike = 'firings_precur4.mda';

Exper(3).Test(1).FileData = 'L:\Seiji\Data\ST_t005\ST_t005_191230_114236.rhd';
Exper(3).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t005\20191230T114639-CheckerBoard.mat';
Exper(3).Test(1).FileSpike = '';
Exper(3).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t005\ST_t005_191230_130215.mat';
Exper(3).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t005\20191230T130219-Drift Gratings.mat';
Exper(3).Test(2).FileSpike = 'firings_precur3.mda';
Exper(3).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t005\ST_t005_191230_120938.mat';
Exper(3).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t005\20191230T130111-RandomDotStereogram_VertDisparity.mat';
Exper(3).Test(3).FileSpike = 'firings_precur2.mda';
Exper(3).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t005\ST_t005_191230_114801.mat';
Exper(3).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t005\20191230T120815-WhiteNoise.mat';
Exper(3).Test(4).FileSpike = 'firings_precur1.mda';
Exper(3).Test(5).FileData = '';
Exper(3).Test(5).FileStim = '';
Exper(3).Test(5).FileSpike = '';

Exper(4).Test(1).FileData = 'L:\Seiji\Data\ST_t007\ST_t007_200730_110719.rhd';
Exper(4).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200730T111108-CheckerBoard.mat';
Exper(4).Test(1).FileSpike = '';
Exper(4).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200730_111148.mat';
Exper(4).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200730T111151-Drift Gratings.mat';
Exper(4).Test(2).FileSpike = 'firings_precur1.mda';
Exper(4).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200730_112336.mat';
Exper(4).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200730T114517-RandomDotStereogram.mat';
Exper(4).Test(3).FileSpike = 'firings_precur2.mda';
Exper(4).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200730_114607.mat';
Exper(4).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200730T115745-WhiteNoise.mat';
Exper(4).Test(4).FileSpike = 'firings_precur3.mda';
Exper(4).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200730_115831.mat';
Exper(4).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200730T115834-Drift Gratings.mat';
Exper(4).Test(5).FileSpike = 'firings_precur4.mda';

Exper(5).Test(1).FileData = 'L:\Seiji\Data\ST_t007\ST_t007_200731_114500.rhd';
Exper(5).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200731T114911-CheckerBoard.mat';
Exper(5).Test(1).FileSpike = '';
Exper(5).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200731_115006.mat';
Exper(5).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200731T115009-Drift Gratings.mat';
Exper(5).Test(2).FileSpike = 'firings_precur1.mda';
Exper(5).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200731_115800.mat';
Exper(5).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200731T121939-RandomDotStereogram.mat';
Exper(5).Test(3).FileSpike = 'firings_precur2.mda';
Exper(5).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200731_122059.mat';
Exper(5).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200731T123112-WhiteNoise.mat';
Exper(5).Test(4).FileSpike = 'firings_precur3.mda';
Exper(5).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t007\ST_t007_200731_123403.mat';
Exper(5).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t007\20200731T123406-Drift Gratings.mat';
Exper(5).Test(5).FileSpike = 'firings_precur4.mda';

Exper(6).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201201_130751.rhd';
Exper(6).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201201T131028-CheckerBoard.mat';
Exper(6).Test(1).FileSpike = '';
Exper(6).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201201_131144.mat';
Exper(6).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201201T131130-Drift Gratings.mat';
Exper(6).Test(2).FileSpike = 'firings_precur1.mda';
Exper(6).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201201_132040.mat';
Exper(6).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201201T134227-RandomDotStereogram.mat';
Exper(6).Test(3).FileSpike = 'firings_precur2.mda';
Exper(6).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201201_134323.mat';
Exper(6).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201201T135459-WhiteNoise.mat';
Exper(6).Test(4).FileSpike = 'firings_precur3.mda';
Exper(6).Test(5).FileData = '';
Exper(6).Test(5).FileStim = '';
Exper(6).Test(5).FileSpike = '';

Exper(7).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201202_131708.rhd';
Exper(7).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201202T132043-CheckerBoard.mat';
Exper(7).Test(1).FileSpike = '';
Exper(7).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201202_132116.mat';
Exper(7).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201202T132122-Drift Gratings.mat';
Exper(7).Test(2).FileSpike = 'firings_curated1.mda';
Exper(7).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201202_132934.mat';
Exper(7).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201202T135332-RandomDotStereogram.mat';
Exper(7).Test(3).FileSpike = 'firings_curated2.mda';
Exper(7).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201202_135406.mat';
Exper(7).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201202T140618-WhiteNoise.mat';
Exper(7).Test(4).FileSpike = 'firings_curated3.mda';
Exper(7).Test(5).FileData = '';
Exper(7).Test(5).FileStim = '';
Exper(7).Test(5).FileSpike = '';

Exper(8).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201204_094226.rhd';
Exper(8).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201204T094722-CheckerBoard.mat';
Exper(8).Test(1).FileSpike = '';
Exper(8).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201204_095057.mat';
Exper(8).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201204T095100-Drift Gratings.mat';
Exper(8).Test(2).FileSpike = 'firings_precur1.mda';
Exper(8).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201204_095918.mat';
Exper(8).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201204T102104-RandomDotStereogram.mat';
Exper(8).Test(3).FileSpike = 'firings_precur2.mda';
Exper(8).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201204_102758.mat';
Exper(8).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201204T103823-WhiteNoise.mat';
Exper(8).Test(4).FileSpike = 'firings_precur3.mda';
Exper(8).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201204_104112.mat';
Exper(8).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201204T104115-Drift Gratings.mat';
Exper(8).Test(5).FileSpike = 'firings_precur4.mda';

Exper(9).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201209_115448.rhd';
Exper(9).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201209T115902-CheckerBoard.mat';
Exper(9).Test(1).FileSpike = '';
Exper(9).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201209_110954.mat';
Exper(9).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201209T110957-Drift Gratings.mat';
Exper(9).Test(2).FileSpike = 'firings_precur1.mda';
Exper(9).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201209_115933.mat';
Exper(9).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201209T122110-RandomDotStereogram.mat';
Exper(9).Test(3).FileSpike = 'firings_precur4.mda';
Exper(9).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201209_114208.mat';
Exper(9).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201209T115237-WhiteNoise.mat';
Exper(9).Test(4).FileSpike = 'firings_precur3.mda';
Exper(9).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201209_122140.mat';
Exper(9).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201209T122146-Drift Gratings.mat';
Exper(9).Test(5).FileSpike = 'firings_precur5.mda';

Exper(10).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201210_123836.rhd';
Exper(10).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201210T124249-CheckerBoard.mat';
Exper(10).Test(1).FileSpike = '';
Exper(10).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201210_105335.mat';
Exper(10).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201210T105340-Drift Gratings.mat';
Exper(10).Test(2).FileSpike = 'firings_precur1.mda';
Exper(10).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201210_115358.mat';
Exper(10).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201210T121603-RandomDotStereogram.mat';
Exper(10).Test(3).FileSpike = 'firings_precur2.mda';
Exper(10).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201210_121629.mat';
Exper(10).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201210T122737-WhiteNoise.mat';
Exper(10).Test(4).FileSpike = 'firings_precur3.mda';
Exper(10).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201210_122820.mat';
Exper(10).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201210T122823-Drift Gratings.mat';
Exper(10).Test(5).FileSpike = 'firings_precur4.mda';

Exper(11).Test(1).FileData = 'L:\Seiji\Data\ST_t008\ST_t008_201211_112706.rhd';
Exper(11).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201211T113127-CheckerBoard.mat';
Exper(11).Test(1).FileSpike = '';
Exper(11).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201211_114111.mat';
Exper(11).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201211T114114-Drift Gratings.mat';
Exper(11).Test(2).FileSpike = 'firings_precur1.mda';
Exper(11).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201211_122218.mat';
Exper(11).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201211T123945-RandomDotStereogram.mat';
Exper(11).Test(3).FileSpike = 'firings_precur2.mda';
Exper(11).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201211_124708.mat';
Exper(11).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201211T125733-WhiteNoise.mat';
Exper(11).Test(4).FileSpike = 'firings_precur3.mda';
Exper(11).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t008\ST_t008_201211_125834.mat';
Exper(11).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t008\20201211T125838-Drift Gratings.mat';
Exper(11).Test(5).FileSpike = 'firings_precur4.mda';

Exper(12).Test(1).FileData = '';
Exper(12).Test(1).FileStim = '';
Exper(12).Test(1).FileSpike = '';
Exper(12).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211130_134754.mat';
Exper(12).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211130T134757-Drift Gratings.mat';
Exper(12).Test(2).FileSpike = 'firings_precur2.mda';
Exper(12).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211130_132422.mat';
Exper(12).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211130T134557-RandomDotStereogram.mat';
Exper(12).Test(3).FileSpike = 'firings_precur1.mda';
Exper(12).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211130_140926.mat';
Exper(12).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211130T143444-WhiteNoise.mat';
Exper(12).Test(4).FileSpike = 'firings_precur4.mda';
Exper(12).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211130_135828.mat';
Exper(12).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211130T135829-Drift Gratings.mat';
Exper(12).Test(5).FileSpike = 'firings_precur3.mda';

Exper(13).Test(1).FileData = '';
Exper(13).Test(1).FileStim = '';
Exper(13).Test(1).FileSpike = '';
Exper(13).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211201_123745.mat';
Exper(13).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211201T123749-Drift Gratings.mat';
Exper(13).Test(2).FileSpike = 'firings_precur_merge2.mda';
Exper(13).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211201_121421.mat';
Exper(13).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211201T123555-RandomDotStereogram.mat';
Exper(13).Test(3).FileSpike = 'firings_precur_merge1.mda';
Exper(13).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211201_130337.mat';
Exper(13).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211201T132849-SparseNoise.mat';
Exper(13).Test(4).FileSpike = 'firings_precur_merge4.mda';
Exper(13).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211201_124905.mat';
Exper(13).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211201T124907-Drift Gratings.mat';
Exper(13).Test(5).FileSpike = 'firings_precur_merge3.mda';

Exper(14).Test(1).FileData = '';
Exper(14).Test(1).FileStim = '';
Exper(14).Test(1).FileSpike = '';
Exper(14).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211202_121050.mat';
Exper(14).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211202T121055-Drift Gratings.mat';
Exper(14).Test(2).FileSpike = 'firings_precur2.mda';
Exper(14).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211202_114149.mat';
Exper(14).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211202T120804-RandomDotStereogram.mat';
Exper(14).Test(3).FileSpike = 'firings_precur1.mda';
Exper(14).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211202_123342.mat';
Exper(14).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211202T125701-SparseNoise.mat';
Exper(14).Test(4).FileSpike = 'firings_precur4.mda';
Exper(14).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211202_122128.mat';
Exper(14).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211202T122133-Drift Gratings.mat';
Exper(14).Test(5).FileSpike = 'firings_precur3.mda';

Exper(15).Test(1).FileData = '';
Exper(15).Test(1).FileStim = '';
Exper(15).Test(1).FileSpike = '';
Exper(15).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211203_130032.mat';
Exper(15).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211203T130035-Drift Gratings.mat';
Exper(15).Test(2).FileSpike = 'firings_precur2.mda';
Exper(15).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211203_123803.mat';
Exper(15).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211203T125938-RandomDotStereogram.mat';
Exper(15).Test(3).FileSpike = 'firings_precur1.mda';
Exper(15).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211203_132340.mat';
Exper(15).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211203T134257-SparseNoise.mat';
Exper(15).Test(4).FileSpike = 'firings_precur4.mda';
Exper(15).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211203_131204.mat';
Exper(15).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211203T131208-Drift Gratings.mat';
Exper(15).Test(5).FileSpike = 'firings_precur3.mda';

Exper(16).Test(1).FileData = '';
Exper(16).Test(1).FileStim = '';
Exper(16).Test(1).FileSpike = '';
Exper(16).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211206_130112.mat';
Exper(16).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211206T130119-Drift Gratings.mat';
Exper(16).Test(2).FileSpike = 'firings_precur1.mda';
Exper(16).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211206_132506.mat';
Exper(16).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211206T134648-RandomDotStereogram.mat';
Exper(16).Test(3).FileSpike = 'firings_precur3.mda';
Exper(16).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211206_134723.mat';
Exper(16).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211206T142903-SparseNoise.mat';
Exper(16).Test(4).FileSpike = 'firings_precur4.mda';
Exper(16).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211206_131152.mat';
Exper(16).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211206T131200-Drift Gratings.mat';
Exper(16).Test(5).FileSpike = 'firings_precur2.mda';

Exper(17).Test(1).FileData = 'L:\Seiji\Data\ST_t009\ST_t009_211208_104838.rhd';
Exper(17).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211208T105243-CheckerBoard.mat';
Exper(17).Test(1).FileSpike = '';
Exper(17).Test(2).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211208_111811.mat';
Exper(17).Test(2).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211208T111822-Drift Gratings.mat';
Exper(17).Test(2).FileSpike = 'firings_precur1.mda';
Exper(17).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211208_114107.mat';
Exper(17).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211208T120248-RandomDotStereogram.mat';
Exper(17).Test(3).FileSpike = 'firings_precur3.mda';
Exper(17).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211208_120354.mat';
Exper(17).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211208T121944-SparseNoise.mat';
Exper(17).Test(4).FileSpike = 'firings_precur4.mda';
Exper(17).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211208_112911.mat';
Exper(17).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211208T112924-Drift Gratings.mat';
Exper(17).Test(5).FileSpike = 'firings_precur2.mda';

Exper(18).Test(1).FileData = 'L:\Seiji\Data\ST_t009\ST_t009_211209_123048.rhd';
Exper(18).Test(1).FileStim = 'L:\Seiji\Data\ST_t009\20211209T123416-CheckerBoard.mat';
Exper(18).Test(1).FileSpike = '';
Exper(18).Test(2).FileData = '';
Exper(18).Test(2).FileStim = '';
Exper(18).Test(2).FileSpike = '';
Exper(18).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211209_123638.mat';
Exper(18).Test(3).FileStim = 'L:\Seiji\Data\ST_t009\20211209T125641-RandomDotStereogram.mat';
Exper(18).Test(3).FileSpike = 'firings_precur.mda';
Exper(18).Test(4).FileData = '';
Exper(18).Test(4).FileStim = '';
Exper(18).Test(4).FileSpike = '';
Exper(18).Test(5).FileData = '';
Exper(18).Test(5).FileStim = '';
Exper(18).Test(5).FileSpike = '';

Exper(19).Test(1).FileData = 'L:\Seiji\Data\ST_t009\ST_t009_211215_121158.rhd';
Exper(19).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211215T121736-CheckerBoard.mat';
Exper(19).Test(1).FileSpike = '';
Exper(19).Test(2).FileData = '';
Exper(19).Test(2).FileStim = '';
Exper(19).Test(2).FileSpike = '';
Exper(19).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211215_122142.mat';
Exper(19).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211215T124323-RandomDotStereogram.mat';
Exper(19).Test(3).FileSpike = 'firings_precur1.mda';
Exper(19).Test(4).FileData = '';
Exper(19).Test(4).FileStim = '';
Exper(19).Test(4).FileSpike = '';
Exper(19).Test(5).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211215_124613.mat';
Exper(19).Test(5).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211215T124620-Drift Gratings.mat';
Exper(19).Test(5).FileSpike = 'firings_precur2.mda';

Exper(20).Test(1).FileData = 'L:\Seiji\Data\ST_t009\ST_t009_211216_103905.rhd';
Exper(20).Test(1).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211216T104212-CheckerBoard.mat';
Exper(20).Test(1).FileSpike = '';
Exper(20).Test(2).FileData = '';
Exper(20).Test(2).FileStim = '';
Exper(20).Test(2).FileSpike = '';
Exper(20).Test(3).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211216_112934.mat';
Exper(20).Test(3).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211216T115113-RandomDotStereogram.mat';
Exper(20).Test(3).FileSpike = 'firings_precur2.mda';
Exper(20).Test(4).FileData = 'D:\Seiji Tanabe\Data\ST_t009\ST_t009_211216_111455.mat';
Exper(20).Test(4).FileStim = 'D:\Seiji Tanabe\Data\ST_t009\20211216T112828-SparseNoise.mat';
Exper(20).Test(4).FileSpike = 'firings_precur1.mda';
Exper(20).Test(5).FileData = '';
Exper(20).Test(5).FileStim = '';
Exper(20).Test(5).FileSpike = '';

%% Loop through sessions. Load spike sorting cluster metrics.
% for n = 1:length(Exper)
% 	x = jsondecode(fileread(Exper(n).ClustMetric.File));
% 	Exper(n).ClustMetric.Clusters = x.clusters;
% 	clear x;
% end

%% Loop through sessions. Concatenate cluster metrics
% ClustMetrics = zeros(1,4);
% nclust = 0;
% for n = 1:length(Exper)
% 	for m = 1:length(Exper(n).ClustMetric.Clusters)
% 		nclust = nclust +1;
% 		ClustMetrics(nclust,1) = n;
% 		ClustMetrics(nclust,2) = Exper(n).ClustMetric.Clusters(m).label;
% 		ClustMetrics(nclust,3) = Exper(n).ClustMetric.Clusters(m).metrics.isolation;
% 		ClustMetrics(nclust,4) = Exper(n).ClustMetric.Clusters(m).metrics.noise_overlap;
% 	end
% end
% 
% figure;
% plot(ClustMetrics(:,3),ClustMetrics(:,4),'.');
% box off; axis square;
% xlabel('Isolation'); ylabel('Noise overlap');

%% Loop through sessions. Load nnecessary data structure Trial. Create if it doesn't exist.
for n = 1:length(Exper)
	fprintf('Processing Exper(%d)\n',n);
	% Main spike data for Ori
	if isempty(Exper(n).Test(2).FileData)
		Exper(n).Test(2).Trial = [];
		Exper(n).Test(2).Stim = [];
	else
		FileTrial = [Exper(n).Test(2).FileData(1:end-4) '_Trial.mat'];
		if exist(FileTrial,'file')
			load(FileTrial,'Trial','Stim');
		else
			Trial = ParseSpikeTrain_MountainSort(Exper(n).Test(2).FileData,Exper(n).Test(2).FileSpike);
			Stim = load(Exper(n).Test(2).FileStim);
			save(FileTrial,'Trial','Stim');
		end
		Exper(n).Test(2).Trial = Trial;
		Exper(n).Test(2).Stim = Stim;
	end
	
	% Main spike data for Dispar
	if isempty(Exper(n).Test(3).FileData)
		Exper(n).Test(3).Trial = [];
		Exper(n).Test(3).Stim = [];
	else
		FileTrial = [Exper(n).Test(3).FileData(1:end-4) '_Trial.mat'];
		if exist(FileTrial,'file')
			load(FileTrial,'Trial','Stim');
		else
			Trial = ParseSpikeTrain_MountainSort(Exper(n).Test(3).FileData,Exper(n).Test(3).FileSpike);
			load(Exper(n).Test(3).FileStim);
			if n==3
				for m=1:length(Stim.condition); Trial(m).condition=Stim.condition(m); end;
			end
			save(FileTrial,'Trial','Stim');
		end
		Exper(n).Test(3).Trial = Trial;
		Exper(n).Test(3).Stim = Stim;
	end
	
	% Main spike data for PhaseDispar
	if isempty(Exper(n).Test(5).FileData)
		Exper(n).Test(5).Trial = [];
		Exper(n).Test(5).Stim = [];
	else
		FileTrial = [Exper(n).Test(5).FileData(1:end-4) '_Trial.mat'];
		if exist(FileTrial,'file')
			load(FileTrial,'Trial','Stim');
		else
			Trial = ParseSpikeTrain_MountainSort(Exper(n).Test(5).FileData,Exper(n).Test(5).FileSpike);
			Stim = load(Exper(n).Test(5).FileStim);
			save(FileTrial,'Trial','Stim');
		end
		Exper(n).Test(5).Trial = Trial;
		Exper(n).Test(5).Stim = Stim;
	end

	% Cluster metrics
	FileJson = [Exper(n).Test(3).FileData(1:end-10) 'Combined_MountainSort\output\metrics.json'];
	x = jsondecode(fileread(FileJson));
	Exper(n).Test(3).Cluster = x.clusters;
	clear x;
	
	% Spike template
	FileTempl = [Exper(n).Test(3).FileData(1:end-10) 'Combined_MountainSort\output\templates.mda'];
	Exper(n).Test(3).Templates = readmda(FileTempl);
	probe = probe_64M_func;
	Exper(n).Test(3).chanpos = [probe.x probe.z];
	
	% LFP data
	if isempty(Exper(n).Test(1).FileData)
		Exper(n).Test(1).LFP = [];
		Exper(n).Test(1).CSD = [];
	else
		FileLFP = [Exper(n).Test(1).FileData(1:end-4) '_LFP.mat'];
		if exist(FileLFP,'file')
			load(FileLFP,'LFP','CSD');
		else
			[LFP,CSD] = LFP_analysis(Exper(n).Test(1).FileData);
			save(FileLFP,'LFP','CSD');
		end
		Exper(n).Test(1).LFP = LFP;
		Exper(n).Test(1).CSD = CSD;
		clear LFP CSD;
	end
	
	% Stim Trig analysis of RF
% 	FileStimTrig = [Exper(n).Test(4).FileData(1:end-4) '_StimTrig.mat'];
% 	if exist(FileStimTrig,'file')
% 		load(FileStimTrig);
% 	else
% 		load(Exper(n).Test(4).FileStim);
% 		TWIN = 0.3;
% 		TBIN = 0.0001;
% 		FILTWIN = ceil(1/60/TBIN);
% 		FILTSIZ = round(length(FILTWIN-1)/2);
% 		t = [TBIN/2:TBIN:TWIN]*1000;
% 		t = t(1:end-FILTSIZ);
% 		tid = t>50 & t<150; 
% 		t = t(tid);
% 		Ngrid = Stim.GridNum;
% 		Nset = Ngrid^2;
% 		FileFiring = [Exper(n).Test(4).FileData(1:end-4) '_MountainSort\output\' Exper(n).Test(4).FileSpike];
% 		spk = readmda(FileFiring);
% 		clust_idx_rfmap = unique(spk(3,:));
% 		for m = 1:length(clust_idx_rfmap)
% 			tic
% 			disp(['Exper ' num2str(n) ' Clust ' num2str(m)]);
% 			Resp = StimTrigWhiteNoise(Exper(n).Test(4).FileData,Exper(n).Test(4).FileStim,FileFiring,clust_idx_rfmap(m));
% 			toc
% 			RespRel(:,:,1) = Resp(:,:,1)-Resp(:,:,2);
% 			RespRel(:,:,2) = Resp(:,:,3)-Resp(:,:,2);
% 			RespAmp(:,1) = mean(RespRel(:,tid,1),2);
% 			RespAmp(:,2) = mean(RespRel(:,tid,2),2);
% 
% 			RFmap = [fliplr(reshape(RespAmp(1:Nset,1),[Ngrid Ngrid])) ...
% 				reshape(RespAmp(Nset+1:end,1),[Ngrid Ngrid]); ...
% 				fliplr(reshape(RespAmp(1:Nset,2),[Ngrid Ngrid])) ...
% 				reshape(RespAmp(Nset+1:end,2),[Ngrid Ngrid])];
% 			
% 			SpkTrig(m).Resp = RFmap;
% 			SpkTrig(m).clust_idx = clust_idx_rfmap(m);
% 
% 		end
% 		save(FileStimTrig,'SpkTrig','-v7.3');
% 	end
% 	Exper(n).Test(4).Tun = SpkTrig;
% 	load(Exper(n).Test(4).FileStim);
% 	Exper(n).Test(4).Stim = Stim;
% 	clear Resp SpkTrig spk Stim RespRel RespAmp TWIN TBIN Ngrid Nset FILTWIN FILTSIZ tid;
end

%% Spike cluster metrics for single-unit isolation
SpikeCluster_Criterion(Exper);


%% Selection based on criterion
CRIT_CLUSTNOISEOVERLAP = 0.07;
CRIT_CLUSTISOLATION = 0.96;
if exist('Population_RDSDisp.mat')
	load('Population_RDSDisp.mat','Exper');
else
	for n = 1:length(Exper)
		% Selection criteria for random-dot stim
		Exper(n).Test(3).Tun = TuningFunc(Exper(n).Test(3).Trial,'Disparity',Exper(n).Test(3).Stim.StimDur,unique([Exper(n).Test(3).Trial.condition]));
		Exper(n).Test(3).SelectCrit = false(length(Exper(n).Test(3).Tun),3);
		for m = 1:length(Exper(n).Test(3).Tun)
			clust_idx = Exper(n).Test(3).Tun(m).clust_idx;
			Exper(n).Test(3).SelectCrit(m,1) = Exper(n).Test(3).Cluster(clust_idx).metrics.noise_overlap<CRIT_CLUSTNOISEOVERLAP;
			Exper(n).Test(3).SelectCrit(m,2) = Exper(n).Test(3).Cluster(clust_idx).metrics.isolation>CRIT_CLUSTISOLATION;
			Exper(n).Test(3).SelectCrit(m,3) = RespCriterion(Exper(n).Test(3).Tun(m));
		end
		if ~isempty(Exper(n).Test(5).FileData)
			Exper(n).Test(5).Tun = TuningFunc(Exper(n).Test(5).Trial,'PhaseDisparity_vs_Ori',Exper(n).Test(5).Stim.Duration);
		end
	end
	save('Population_RDSDisp.mat','Exper');
end
SelectCrit=[];
for n=1:length(Exper)
	SelectCrit=cat(1,SelectCrit,Exper(n).Test(3).SelectCrit);
end
fprintf('Num of responsive units %d\n',sum(all(SelectCrit,2)));

%% Discard cells that failed the selection criterion
for n = 1:length(Exper)
	% First discard Dispar Tun
	clust_sel = all(Exper(n).Test(3).SelectCrit,2);
	Exper(n).Test(3).Tun = Exper(n).Test(3).Tun(clust_sel);
	% Next discard PhaseDispar, if data exists
	if ~isempty(Exper(n).Test(5).Tun)
		clust_idx = [Exper(n).Test(3).Tun.clust_idx]';
		for m = 1:length(clust_idx)
			thisclust = [Exper(n).Test(5).Tun.clust_idx]'==clust_idx(m);
			TunPhi(m) = Exper(n).Test(5).Tun(thisclust);
		end
		Exper(n).Test(5).Tun = TunPhi;
		clear TunPhi clust_idx thisclust;
	end
end


%% Plot and save figure
% for n = 2:length(Exper)
% 	clust_idx_dispar = [Exper(n).Test(3).Tun.clust_idx];
% 	CRIT_PASSID = find(Exper(n).Test(3).CRIT_PASS);
% 	for m = 3:length(CRIT_PASSID)
% 		figure
% 		
% 		% LFP
% 		subplot(3,2,1);
% 		SAMPLINGFREQ = 20000;
% 		TDUR = 0.25;
% 		LFP = mean(Exper(n).Test(1).LFP,3);
% 		chanpos = sortrows([Exper(n).Test(2).chanpos]);
% 		lfpmax = max(max(max(abs(LFP))));
% 		% Chans 1 - 32
% 		imagesc([1:TDUR*SAMPLINGFREQ]/SAMPLINGFREQ,chanpos(1:32,2),LFP(1:32,:),[-1 1]*lfpmax);
% 		axis xy; box off; ylim([chanpos([1 64],2)]);
% 		% Chans 33 - 64
% % 		imagesc([1:TDUR*SAMPLINGFREQ]/SAMPLINGFREQ,chanpos(33:64,2),LFP(33:64,:),[-1 1]*lfpmax);
% % 		axis xy; box off; ylim([chanpos([1 64],2)]);
% 	
% 		% Spike template
% % 		figure;
% 		subplot(3,2,2);
% 		T = [1:size(Exper(n).Test(2).Templates,2)] * 25/150;
% 		for k = 1:size(Exper(n).Test(2).Templates,1)
% 			h = plot(Exper(n).Test(2).chanpos(k,1)+T,Exper(n).Test(2).chanpos(k,2)+Exper(n).Test(2).Templates(k,:,CRIT_PASSID(m)),'k');
% 			hold on;
% 		end
% 		box off;
% 
% 		% Disp tuning
% % 		figure;
% 		subplot(3,2,4);
% 		if n~=3
% 			Dispar = Exper(n).Test(3).Stim.Disparity;
% 		else
% 			Dispar = Exper(n).Test(3).Stim.HoriDisparity;
% 		end
% 		errorbar(Dispar,squeeze(Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(1:end-3,1)),squeeze(Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(1:end-3,2)),...
% 			'o-'); hold on;
% 		errorbar(Dispar(end)+0.2,Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(end-2,1),Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(end-2,2),'<');
% 		errorbar(Dispar(end)+0.2,Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(end-1,1),Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(end-1,2),'>');
% 		plot([-1 1]*Dispar(end),Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp(end,1)*[1 1],'k--')
% 		xlabel('Disparity (deg)'); ylabel('Firing rate (spikes/s)'); box off;
% 		
% % 		DDI = DisparDiscrimIndx(Exper(n).Test(3).Tun(CRIT_PASSID(m)).Count);
% 		BII = BinocInteractIndx(Exper(n).Test(3).Tun(CRIT_PASSID(m)).Resp); title(['BII=' num2str(BII)]);
% 		
% 		% Ori tuning
% 		subplot(3,2,3);
% 		if ~isempty(find([Exper(n).Test(2).Tun.clust_idx]==clust_idx_dispar(CRIT_PASSID(m)),1))
% 			tun_idx = find([Exper(n).Test(2).Tun.clust_idx] == clust_idx_dispar(CRIT_PASSID(m)));
% 			errorbar(Exper(n).Test(2).Stim.Var1Range,squeeze(Exper(n).Test(2).Tun(tun_idx).Resp(1:2:23,1)),squeeze(Exper(n).Test(2).Tun(tun_idx).Resp(1:2:23,2)),...
% 				'o-'); hold on;
% 			errorbar(Exper(n).Test(2).Stim.Var1Range,squeeze(Exper(n).Test(2).Tun(tun_idx).Resp(2:2:24,1)),squeeze(Exper(n).Test(2).Tun(tun_idx).Resp(2:2:24,2)),...
% 				'o-');
% 			plot([0 360],Exper(n).Test(2).Tun(tun_idx).Resp(25,1)*[1 1],'k--')
% 		end
% 		xlabel('Orientation (deg)'); ylabel('Firing rate (spikes/s)'); box off;
% 		
% 		% Phase dispar
% 		subplot(3,2,5);
% 		if ~isempty(Exper(n).Test(5).FileData) && ~isempty(find([Exper(n).Test(5).Tun.clust_idx]==clust_idx_dispar(CRIT_PASSID(m)), 1))
% 			tun_idx = find([Exper(n).Test(5).Tun.clust_idx] == clust_idx_dispar(CRIT_PASSID(m)));
% 			errorbar(Exper(n).Test(5).Tun(tun_idx).Stim,squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(1:8,1)),squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(1:8,2)),'o-'); hold on;
% 			errorbar(Exper(n).Test(5).Tun(tun_idx).Stim,squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(9:16,1)),squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(9:16,2)),'o-');
% 			errorbar(Exper(n).Test(5).Tun(tun_idx).Stim,squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(17:24,1)),squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(17:24,2)),'o-');
% 			errorbar(Exper(n).Test(5).Tun(tun_idx).Stim,squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(25:32,1)),squeeze(Exper(n).Test(5).Tun(tun_idx).Resp(25:32,2)),'o-');
% 		end
% 		xlabel('Phase disparity (deg)'); ylabel('Firing rate (spikes/s)'); box off;
% 		
% 		% Raster PSTH
% % 		if ~isempty(Exper(n).Test(5).FileData) && ~isempty(find([Exper(n).Test(5).Tun.clust_idx]==clust_idx_dispar(CRIT_PASSID(m)),1))
% % 			[~,peakid] = max(Exper(n).Test(5).Tun(tun_idx).Resp(:,1));
% % 			RasterPSTH(Exper(n).Test(5).Trial,tun_idx,peakid);
% % 			xlabel('Time (s)');
% % 		end
% 		
% 		% RF map
% 		subplot(3,2,6);
% 		if ~isempty(find([Exper(n).Test(4).Tun.clust_idx]==clust_idx_dispar(CRIT_PASSID(m)),1))
% 			tun_idx = find([Exper(n).Test(4).Tun.clust_idx] == clust_idx_dispar(CRIT_PASSID(m)));
% 			imagesc(Exper(n).Test(4).Tun(tun_idx).Resp); hold on;
% 			Ngrid = Exper(n).Test(4).Stim.GridNum;
% 			plot(Ngrid*[1 1]+0.5,[0 2*Ngrid+0.5],'w'); plot([0 2*Ngrid+0.5],Ngrid*[1 1]+0.5,'w');
% 			axis off; axis square;
% 			ah=gca; ah.CLim=[-1 1] *max(abs(ah.CLim));
% 		end
% 			
% 
% 		if BII<0.3
% % 		if BII<0.7 && Exper(n).Test(3).Tun(CRIT_PASSID(m)).Anova<0.05
% % 		if DDI>0.55
% 			saveas(gcf,['DataTuningPlots\SelectCrit_OriDisp\LowBII_Exper_' num2str(n) '_Clust_' num2str(CRIT_PASSID(m)) '.png']);
% 		end
% 		close;
% 	end
% end

%% Population analysis
Data = [];
for n = 1:length(Exper)
	Tun = Exper(n).Test(3).Tun;
	for m = 1:length(Tun)
		DDI = DisparDiscrimIndx(Tun(m).Count);
		[BII,Amp] = BinocInteractIndx(Tun(m).Resp);
		DTI = DisparityTuningIndx(Tun(m).Resp);
		[zpos,chanprim] = NeuronPrimaryChan(Exper(n).Test(3).FileData,Exper(n).Test(3).FileSpike,Tun(m).clust_idx,Exper(n).Test(3).chanpos);
		monoc = Tun(m).Resp(end-2:end,1)';
		ODI = (monoc(2)-monoc(1))/(monoc(2)+monoc(1));
		binocmean = mean(Tun(m).Resp(1:end-3,1));
		v = Exper(n).Test(3).Templates(chanprim,:,Tun(m).clust_idx);
		[spk_ptratio,spk_slope,v_norm] = SpikeWave(v,'TreeShrew');
		if size(Tun(m).Resp,1)<150
			prefDispar = DisparPref(Exper(n).Test(3).Stim.Disparity,Tun(m).Resp);
		else
			prefDispar = DisparPref(Exper(n).Test(3).Stim.HoriDisparity,[Tun(m).Resp(11:21:431,:); Tun(m).Resp(end-2:end,:)]);
		end
		
		if ~isempty(Exper(n).Test(1).LFP)
			chanpos_sort = sortrows(Exper(n).Test(3).chanpos);
			z_bound = zeros(3,2,2);
			for k = 1:2
				z_bound(:,1,k) = LFP_boundary(Exper(n).Test(1).LFP(1:32,:,k),chanpos_sort(1:32,:));
				z_bound(:,2,k) = LFP_boundary(Exper(n).Test(1).LFP(33:64,:,k),chanpos_sort(33:64,:));
			end
			z_bound = mean(mean(z_bound,3),2)';
		else
			z_bound = -1000*[1 1 1];
		end
		
		Data = [Data; ...
			n Tun(m).clust_idx Tun(m).Anova DDI BII DTI ODI zpos spk_ptratio spk_slope prefDispar z_bound binocmean];
		
		if n==20 || n==8 || n==9
			if ~exist('SpikeWaveform','var'); SpikeWaveform=zeros(length(Tun),150); end;
			SpikeWaveform(m,:) = v_norm;
		end
	end
end

%% Plotting
figure; % DDI vs BII
oh = plot(Data(:,5),Data(:,4),'o'); hold on;
oh.MarkerFaceColor = oh.Color;
xlabel('BII'); ylabel('DDI'); box off;

figure; % DDI vs DTI
withDTI = Data(:,6)~=-1;
oh = plot(Data(withDTI,4),Data(withDTI,6),'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
xlabel('DDI'); ylabel('DTI'); box off;

figure; % BII vs DTI
withDTI = Data(:,6)~=-1;
oh = plot(Data(withDTI,6),Data(withDTI,5),'o'); hold on;
oh.MarkerFaceColor = oh.Color;
xlabel('DTI'); ylabel('BII'); box off;

figure; % Histogram of DDI
SIGNIF = Data(:,3)<0.05;
histbin = [0:0.05:1];
DDI_hist(1,:) = histcounts(Data(SIGNIF,4),histbin);
DDI_hist(2,:) = histcounts(Data(~SIGNIF,4),histbin);
histcent = histbin(1:end-1)+(histbin(2)-histbin(1))/2;
oh = bar(histcent,DDI_hist','stacked');
oh(1).FaceColor = 'k'; oh(2).FaceColor = 'w'; box off;
ah = gca; ah.TickDir = 'out'; ah.FontSize=14;
xlabel('DDI'); ylabel('Num of neurons');
legend('ANOVA p<0.05','ANOVA p>0.05');

figure; % ODI vs DDI
withODI = ~isnan(Data(:,7));
oh = plot(Data(:,7),Data(:,4),'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
xlabel('ODI'); ylabel('DDI'); box off;
ah=gca; ah.FontSize=14;

figure; % Spike waveform
plot([-74:75]/20,SpikeWaveform','k');
xlabel('Time (ms)'); ylabel('Normalized voltage'); box off;
ah=gca; ah.FontSize=14;

figure; % Histogram SpkSlope
histbin = [-2:0.25:4];
SpkSlope_hist = histcounts(Data(:,11),histbin);
histcent = histbin(1:end-1)+(histbin(2)-histbin(1))/2;
oh = bar(histcent,SpkSlope_hist);
oh.FaceColor='k';
xlabel('Spike slope'); ylabel('Num of neurons'); box off;
ah=gca; ah.FontSize=14; ah.TickDir='out';

figure; % Cell-type vs DDI
type_fs = Data(:,11)<0;
x_fs = randn(sum(type_fs),1)*0.1+1;
x_rs = randn(sum(~type_fs),1)*0.1+2;
oh = plot([x_fs; x_rs],[Data(type_fs,4); Data(~type_fs,4)],'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
ylabel('DDI'); box off;
ah=gca; ah.FontSize=14; ah.XTick = [1 2]; ah.XTickLabel={'FS','RS'};


figure; % DDI vs z-position
withLFP = Data(:,13)~=-1000;
oh = plot(Data(withLFP,4),Data(withLFP,14)-Data(withLFP,8),'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
xy = MovingAverage(Data(withLFP,14)-Data(withLFP,8),Data(withLFP,4),200);
plot(xy(:,2),xy(:,1),'k');
xlabel('DDI'); ylabel('Neuron z-position (\mum)'); box off;
ah=gca; ah.FontSize=14; ah.YDir='reverse';


figure; % ODI vs z-position
oh = plot(Data(withODI & withLFP,7),Data(withODI & withLFP,14)-Data(withODI & withLFP,8),'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
xy = MovingAverage(Data(withLFP & withODI,14)-Data(withLFP & withODI,8),Data(withLFP & withODI,7),200);
plot(xy(:,2),xy(:,1),'k');
xlabel('ODI'); ylabel('Neuron z-position'); box off;
ah=gca; ah.FontSize=14; ah.YDir='reverse';

figure; % DDI vs BinocMean
oh = plot(Data(:,16),Data(:,4),'ko'); hold on;
oh.MarkerFaceColor = oh.Color;
xlabel('Binoc mean'); ylabel('DDI'); box off;
ah=gca; ah.FontSize=14;


%%
% 1: Exper ID
% 2: clust ID
% 3: ANOVA p-val
% 4: DDI
% 5: BII
% 6: DTI
% 7: ODI
% 8: zpos of neuron
% 9: spk peak-trough ratio
% 10-11: spk slope
% 12: prefDisparity
% 13-15: z boundary of LFP
% 16: ANOVA PhasDispar p-val
% 17: PDSI
% 18: Binoc mean

disp('hello');