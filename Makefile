

.PHONY: publish
publish:
	aws s3 cp ./index.html s3://worth-watching/index.html
	aws s3api put-object-acl --bucket worth-watching --key index.html --acl public-read
	aws s3 cp ./reviews.json s3://worth-watching/reviews.json
	aws s3api put-object-acl --bucket worth-watching --key reviews.json --acl public-read
