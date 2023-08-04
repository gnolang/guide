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
 
.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo