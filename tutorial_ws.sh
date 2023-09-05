# not for direct execution
# by Wooseok Park

# 먼저 훈련하고자 하는 음성 데이터가 담긴 폴더를 datasets/<폴더명> 으로 생성한다.
svc pre-resample

# config 초기화
svc pre-config 

# OOM이 안 일어나게 n_jobs를 잘 설정하여 pre-hubert 실행
svc pre-hubert --n-jobs 8