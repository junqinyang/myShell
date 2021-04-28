#! /bin/bash +x
# set -euo pipefail

daily_build_id=$1
daily_build_tag=$2

if [ -d daily ]; then
    cd daily
    echo "===================== get in $(basename $(pwd)) ===================="
else
    mkdir daily
    cd daily
    echo "===================== get in $(basename $(pwd)) ===================="
fi

if [ -d $daily_build_tag ]; then
    cd $daily_build_tag
    echo "===================== get in $(basename $(pwd)) ===================="
    rm -rf *
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/dtu_sdk_${daily_build_id}.${daily_build_tag}_amd64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/dtu_pp/dtupp_${daily_build_id}.${daily_build_tag}_amd64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/build/eccl-${daily_build_id}.${daily_build_tag}.x86_64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/horovod-0.18.1-cp27-cp27mu-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/horovod-0.18.1-cp35-cp35m-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tensorflow-1.14.0-cp27-cp27mu-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tensorflow-1.14.0-cp35-cp35m-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tops_models-0.0.2-py2-none-any.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tops_models-0.0.2-py3-none-any.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/release/enflame-dockerfiles_${daily_build_id}.${daily_build_tag}.tar.gz"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/enflame-${daily_build_id}${daily_build_tag}.run"
    cd ..
else
    mkdir $daily_build_tag
    cd $daily_build_tag
    echo "===================== get in $(basename $(pwd)) ===================="
    # rm -rf *
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/dtu_sdk_${daily_build_id}.${daily_build_tag}_amd64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/dtu_pp/dtupp_${daily_build_id}.${daily_build_tag}_amd64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/build/eccl-${daily_build_id}.${daily_build_tag}.x86_64.deb"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/horovod-0.18.1-cp27-cp27mu-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/horovod-0.18.1-cp35-cp35m-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tensorflow-1.14.0-cp27-cp27mu-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tensorflow-1.14.0-cp35-cp35m-linux_x86_64.${daily_build_id}.${daily_build_tag}.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tops_models-0.0.2-py2-none-any.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/tops_models-0.0.2-py3-none-any.whl"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/release/enflame-dockerfiles_${daily_build_id}.${daily_build_tag}.tar.gz"
    wget --show-progress=off "http://sse-ci.enflame.cn/view/Daily%20Job/view/Build/job/JF_sw_daily_0_build/${daily_build_tag}/artifact/enflame-${daily_build_id}${daily_build_tag}.run"
    cd ..
fi

echo "======================== download Software Stack finished! ============================"
