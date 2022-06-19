# TypeError: Descriptors cannot not be created directly
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python

# uses python <= 3.8
pip install -r requirements.txt
python ./src/main.py  # bentoml bundle 만들기
bentoml containerize So1sService:latest -t so1sservice:latest  # dockerize
