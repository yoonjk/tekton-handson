
docker hub에 docker image를 push하기 위한 docker credentials 정보   
```bash
kubectl  create secret docker-registry docker-credentials \
--docker-server=https://index.docker.io/v1/ \
--docker-username=자신의 docker hub 로그인 사용자명  \
--docker-password=자신의 docker hub 패스워드 \
--docker-email=자신의 이메일정보
```


