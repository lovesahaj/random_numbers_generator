start_app_reload:
	python -m uvicorn main:app --reload --host 0.0.0.0 --port 7373

docker_build:
	docker build . -t lovesahaj1225/random_numbers_generator:0.1v

docker_run:
	docker run -it -d -p 8000:7373 lovesahaj1225/random_numbers_generator:0.1v
