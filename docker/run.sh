docker run --gpus '"device=0,1"' -v ~/vc:/app --name bi-gpu-ipc --ipc=host -it so-vits-svc /bin/bash 
# --ipc=host 로 공유 메모리의 제한을 없앰.