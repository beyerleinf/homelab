.PHONY: create_role install_role install_roles list_roles remove_role run_playbook

create_role:
	ansible-galaxy init $(role) --init-path=./roles

install_role:
	ansible-galaxy install $(role)

install_roles:
	ansible-galaxy install -r requirements.yml

list_roles:
	ansible-galaxy list

remove_role:
	ansible-galaxy remove $(role)

deploy:
	ansible-playbook site.yml $(cmd)
