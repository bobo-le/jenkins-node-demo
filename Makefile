build:
	docker build -t ${BUILD_TAG} .

test:
	docker run --rm ${BUILD_TAG} npm run test

clean:
	docker image rm ${BUILD_TAG}

publish:
	#git tag -a ${RELEASE_TAG}.TMP -m "New Version ${RELEASE_TAG}" HEAD
	#git push origin ${RELEASE_TAG}.TMP
	echo "RELEASE! Publish to registry..."