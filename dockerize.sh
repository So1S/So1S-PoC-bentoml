# uses python <= 3.8
pip install -r requirements.txt
python ./src/main.py  # bentoml bundle 만들기
bentoml containerize So1sService:latest -t tf_service:v1  # dockerize
docker run -p 5000:5000 tf_service:v1  # 서빙