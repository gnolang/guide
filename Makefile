#-include .env

PROJECTNAME='aib-guide'

# Make is verbose in Linux. Make it silent.
MAKEFLAGS += --silent

## serve: Build HTML from markdown content.
serve: 
	docker-compose up
 
.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo