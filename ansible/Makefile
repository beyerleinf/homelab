.PHONY: create_role install_role install_roles list_roles remove_role run_playbook deploy deploy_infrastructure deploy_homepage deploy_paperless deploy_umami deploy_jellyfin deploy_seafile deploy_immich deploy_vault deploy_deluge deploy_servarr deploy_pihole

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

deploy_infrastructure:
	ansible-playbook site.yml --tags=infrastructure $(cmd)

deploy_homepage:
	ansible-playbook site.yml --tags=homepage $(cmd)

deploy_paperless:
	ansible-playbook site.yml --tags=paperless $(cmd)

deploy_umami:
	ansible-playbook site.yml --tags=umami $(cmd)

deploy_jellyfin:
	ansible-playbook site.yml --tags=jellyfin $(cmd)

deploy_seafile:
	ansible-playbook site.yml --tags=seafile $(cmd)

deploy_immich:
	ansible-playbook site.yml --tags=immich $(cmd)

deploy_vault:
	ansible-playbook site.yml --tags=vault $(cmd)

deploy_deluge:
	ansible-playbook site.yml --tags=deluge $(cmd)

deploy_servarr:
	ansible-playbook site.yml --tags=servarr $(cmd)

deploy_pihole:
	ansible-playbook site.yml --tags=pihole $(cmd)

