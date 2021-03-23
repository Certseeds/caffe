#!/bin/bash
set -euox pipefail
###
 # @Author: your name
 # @Date: 2021-03-23 21:34:21
 # @LastEditTime: 2021-03-23 22:07:02
 # @LastEditors: Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: /caffe/build.sh
### 
#! git checkout ssd
function main(){
    make clean
    make all -j"$(nproc)"
    make test -j"$(nproc)"
    make runtest -j"$(nproc)"
    # runtest step need `LD_LIBRARY_PATH` in shrc
    # Refer `git@github:Certseeds/tricks` 's zshrc
}
main