########################################
# ´Install´ gash commands by creating
# symlinks in your $PATH 
#
# Choose target directory by cli argument.
#
# Example:
# ~$ make target_dir=/usr/bin/
# (default: ´/usr/local/bin/)´
########################################
target_dir = /usr/local/bin/

.PHONY: install
install: $(target_dir)gash-echo $(target_dir)gash-exec

$(target_dir)gash-echo: gash-echo
	ln -sv $(realpath ./gash-echo) $@

$(target_dir)gash-exec: gash-exec
	ln -sv $(realpath ./gash-exec) $@

.PHONY: remove
remove:
	rm -v $(target_dir)gash-echo
	rm -v $(target_dir)gash-exec
