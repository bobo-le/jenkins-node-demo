build:
	docker build -t ${BUILD_TAG} .

test:
	docker run --rm ${BUILD_TAG} npm run test

clean:
	docker image rm ${BUILD_TAG}