lint: markdownlint
	@$(MARKDOWNLINT) '**/*.md' -c markdownlint.yml

markdownlint:
ifeq (, $(shell which markdownlint))
	@echo "markdownlint is not installed. Please install it: https://github.com/igorshubovych/markdownlint-cli#installation"
	@exit 1
else
MARKDOWNLINT=$(shell which markdownlint)
endif
