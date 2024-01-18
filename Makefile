p.uninstall:
	@python3 -m pip uninstall library
wheel: ## Generate Wheel
	@cd src && python3 -m build --wheel --no-isolation 


help: ## Show some help
	@echo
	@echo '  Usage:'
	@echo '    make <target>'
	@echo
	@echo '  Targets:'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'
	@echo
