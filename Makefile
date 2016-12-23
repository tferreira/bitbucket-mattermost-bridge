# Makefile

VIRTUALENV = env/

install: create_virtualenv pip_install

create_virtualenv:
	if [ ! -d env ]; then virtualenv $(VIRTUALENV); fi

pip_install:
	. $(VIRTUALENV)bin/activate; pip install -r requirements.txt
