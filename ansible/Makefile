.PHONY: create_role install_role install_roles list_roles remove_role run_playbook reboot reset upgrade

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

upgrade:
	ansible-playbook upgrade.yml

reboot:
	ansible-playbook reboot.yml

reset:
	ansible-playbook reset.yml
