p.uninstall:
	@echo "Uninstalling library"
	@python3 -m pip uninstall library
p.wheel: ## Generate Wheel
	@cd src && python3 -m build --wheel --no-isolation 
p.install.wheel: p.wheel p.uninstall
	@echo "Installing library from wheel"
	@python3 -m pip install src/dist/`ls -t src/dist/ | head -n 1`
	$(MAKE) p.run
p.run:
	@echo "Running library"
	@python3 -c "import library"

p.install.git: p.uninstall ## Install from git
	@python3 -m pip install -r examples/install_from_requirements/requirements.txt
	$(MAKE) p.run

help: ## Show some help
	@echo
	@echo '  Usage:'
	@echo '    make <target>'
	@echo
	@echo '  Targets:'
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'
	@echo
