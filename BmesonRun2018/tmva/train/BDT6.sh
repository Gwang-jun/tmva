#ptmin=;
#ptmax=;

mvatype=BDT;

#inputname=/raid5/data/gwangjun/crab_Bfinder_20190624_Hydjet_Pythia8_Official_BuToJpsiK_1033p1_pt3tkpt0p7dls2_allpthat_pthatweight.root;
#outputname=TMVA_BplusMC;
inputname=/raid5/data/gwangjun/crab_Bfinder_20190513_HIDoubleMuon__PsiPeri__HIRun2018A_04Apr2019_v1_1033p1_GoldenJSON_skimhltBsize_ntKp.root;
outputname=TMVA_BplusData;

g++ BDT6.C $(root-config --cflags --libs) -g -o BDT6.exe
./BDT6.exe "$inputname" "$outputname" "30" "40" "BDT"
