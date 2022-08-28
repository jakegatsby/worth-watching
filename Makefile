

.PHONY: publish
publish:
	./venv/bin/python yaml2json.py
	aws s3 cp ./index.html s3://worth-watching/index.html --acl public-read
	aws s3 cp ./reviews.json s3://worth-watching/reviews.json --acl public-read
	find img -type f -exec aws s3 cp {} s3://worth-watching/{} --acl public-read \;
