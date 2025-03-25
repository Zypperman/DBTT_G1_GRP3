.PHONY: setup run clean

setup:
	pip install -r requirements.txt

run:
	uvicorn app:app --reload --host 0.0.0.0 --port 8000

dev:
	run

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete