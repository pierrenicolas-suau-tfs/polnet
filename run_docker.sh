

#docker run -e PYTHONUNBUFFERED=1 -v "/home/crougier/simulation/polnet/scripts/config_sample.yaml":/app/generation_config.yaml -v "/raid/data/crougier/simulatedTomo/test/":/app/outdir simu_polnet
docker build ./ -t simu_polnet

myUID=$UID 
myGID=$(id -g $UID)

docker run -e PYTHONUNBUFFERED=1 -v "/home/crougier/simulation/polnet/scripts/config_acquisition.yaml":/app/generation_config.yaml -v "/raid/data/crougier/simulatedTomo/test/":/app/outdir -e myUID=$myUID -e myGID=$myGID simu_polnet