#!/bin/sh

# 5 agents
mpirun -n 6 \
python3  -m maddpg_o.experiments.train_darl1n \
    --scenario=simple_spread \
    --good-sight=0.4 \
    --adv-sight=100.0 \
    --num-agents=5 \
    --num-learners=5 \
    --num-adversaries=0 \
    --num-food=5 \
    --num-landmark=5 \
    --good-policy=maddpg \
    --adv-policy=maddpg \
    --save-dir="./result/simple_spread/darl1n/5agents/5agents_2/" \
    --save-rate=1000 \
    --max-num-train=3000 \
    --prosp-dist=0.2 \
    --max-episode-len=20 \
    --eva-max-episode-len=20 \
    --good-max-num-neighbors=5 \
    --adv-max-num-neighbors=5 \
    --ratio=1 \
    --seed=1 \


# 20 agents
# mpirun --oversubscribe -n 21 \
# python3  -m maddpg_o.experiments.train_darl1n \
#     --scenario=simple_spread \
#     --good-sight=0.3 \
#     --adv-sight=100.0 \
#     --num-agents=20 \
#     --num-learners=20\
#     --num-adversaries=0 \
#     --num-food=20 \
#     --num-landmark=20 \
#     --good-policy=maddpg \
#     --adv-policy=maddpg \
#     --save-dir="./result/simple_spread/darl1n/20agents/20agents_2/" \
#     --save-rate=1000 \
#     --max-num-train=2000\
#     --prosp-dist=0.2 \
#     --max-episode-len=45 \
#     --eva-max-episode-len=45 \
#     --good-max-num-neighbors=20 \
#     --adv-max-num-neighbors=20 \
#     --ratio=4.0 \
#     --seed=1 \


# 50 agents
# mpirun --oversubscribe -n 51 \
# python3  -m maddpg_o.experiments.train_darl1n \
#     --scenario=simple_spread \
#     --good-sight=0.45 \
#     --adv-sight=100.0 \
#     --num-agents=50 \
#     --num-learners=50\
#     --num-adversaries=0 \
#     --num-food=50 \
#     --num-landmark=50 \
#     --good-policy=maddpg \
#     --adv-policy=maddpg \
#     --save-dir="./result/simple_spread/darl1n/50agents/50agents_2/" \
#     --save-rate=1000 \
#     --max-num-train=2000\
#     --prosp-dist=0.35 \
#     --max-episode-len=90 \
#     --eva-max-episode-len=90 \
#     --good-max-num-neighbors=50 \
#     --adv-max-num-neighbors=50 \
#     --ratio=10 \
#     --seed=1 \
