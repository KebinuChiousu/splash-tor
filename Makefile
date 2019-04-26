build:
	docker build -t meredithkm/splash-tor:3.0 .
	docker tag latest meredithkm/splash-tor
push:
	docker push meredithkm/splash-tor
