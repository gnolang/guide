#-include .env

PROJECTNAME='aib-guide'

# Make is verbose in Linux. Make it silent.
MAKEFLAGS += --silent

## build: Builds the Docker image.
build:
	cd build && docker-compose build --no-cache

## serve: Build HTML from markdown content.
serve: 
	cd build && docker-compose up

## spellcheck: Runs a recursive spellcheck for the documentation.
## Make sure you have the tool installed: npm install -g spellchecker-cli
spellcheck:
	spellchecker -f '**/*.md' -d spell-check-dictionary.txt

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo