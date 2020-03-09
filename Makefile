build:
	docker build -t ${BUILD_TAG} .

test:
	docker run --rm ${BUILD_TAG} npm run test

clean:
	docker image rm ${BUILD_TAG}

publish:
	echo "RELEASE! Publish to registry..."

git-tag:
	git tag -a ${TAG} -m "New Version: ${TAG}" HEAD
	git push origin ${TAG}