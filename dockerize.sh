python ./poc/bentoml_service.py  # bentoml bundle 만들기
bentoml containerize TransformerService:latest -t tf_service:v1  # dockerize
docker run -p 5000:5000 tf_service:v1  # 서빙