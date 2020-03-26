#CUDA_VISIBLE_DEVICES=0,1 python importance_sampler.py --model ddm --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=0,1 python importance_sampler.py --model angle --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=0,1 python importance_sampler.py --model weibull --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=0,1 python importance_sampler.py --model fullddm --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=0,1 python importance_sampler.py --model ornstein --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=2,3 python importance_sampler.py --model race_model_3 --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=3,3 python importance_sampler.py --model race_model_4 --nbin 256 --N 1024
#CUDA_VISIBLE_DEVICES=3,2 python importance_sampler.py --model lca_3 --nbin 256 --N 1024

for sample in {150..300}
do
CUDA_VISIBLE_DEVICES=0,1 python importance_samplerIV.py --model ddm_mic2 --nsample $sample --nbin 512 --N 1024
done
