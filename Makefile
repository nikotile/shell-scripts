SCRIPTS = $(shell file * | grep "shell script" | cut -d ":" -f1)
DIR = $(HOME)/.local/bin

.PHONY: install
install:
	cp $(SCRIPTS) $(DIR)

.PHONY: uninstall
uninstall:
	$(foreach s, $(SCRIPTS),rm $(DIR)/$(s);)
