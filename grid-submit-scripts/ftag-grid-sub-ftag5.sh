#!/usr/bin/env bash

INPUT_TAG=FTAG5-V1_EXT0
DS=group.phys-exotics.410000.PowhegPythiaEvtGen_P2012_ttbar_hdamp172p5_nonallhad.recon.AOD.e3698_s2608_s2183_r7377_r7351.${INPUT_TAG}/


# get tag from git
TAG=${INPUT_TAG}.$(git describe)

# DS=mc15_13TeV:mc15_13TeV.410000.PowhegPythiaEvtGen_P2012_ttbar_hdamp172p5_nonallhad.recon.AOD.e3698_s2608_s2183_r7377_r7351/
# OUT=user.${USER}.410000.rnnip_dl1_slim.v3
OUT=user.${USER}.410000.PowhegPythiaEvtGen.ntup.${TAG}
# rucio list-dids $DS
# OPTS="--nFilesPerJob 5"
# OPTS=" --nFiles 2"
# OPTS=" --nFiles 50"
# OPTS+=" --excludedSite=ANALY_FZK,ANALY_FZK_HI"
echo pathena jobOptions_tag.py --inDS $DS --outDS $OUT $OPTS
