install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt
install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt
install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt
lint:
	pylint --disable=R,C *.py

format:
	black *.py

test:
	python -m pytest -vv --cov=ops test_ops.py