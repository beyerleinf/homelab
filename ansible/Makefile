.PHONY: create_role install_role install_roles list_roles remove_role run_playbook reboot reset_cluster

create_role:
	ansible-galaxy init $(role) --init-path=./roles

install_role:
	ansible-galaxy install $(role) --roles-path=./roles

install_roles:
	ansible-galaxy install -r requirements.yml --roles-path=./roles

list_roles:
	ansible-galaxy list --roles-path=./roles

remove_role:
	ansible-galaxy remove $(role)

run_playbook:
	ansible-playbook -i production.yml site.yml $(cmd)

reboot:
	ansible-playbook -i production.yml reboot.yml

reset_cluster:
	ansible-playbook -i production.yml reset.yml