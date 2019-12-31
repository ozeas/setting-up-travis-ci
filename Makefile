lint:
	yarn lint

test:
	yarn lint
	jest

pre-commit:
	yarn lint
	yarn test
