build:
	docker buildx build --platform=linux/amd64,linux/arm64 .

release:
	docker buildx build --push --platform=linux/amd64,linux/arm64 --tag=pbyrne/wkhtmltox:latest .
