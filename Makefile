###################################
#          PARAMETROS             #
##################################

PATH_APP_ANSIBLE = /Users/rodrigosouza/ansible/live-ansible

help:
	@echo "COMANDOS - SYADMIN QCODA"
	@echo "\t > provisionar-infra - Provisionamento de infraestrutura"
	@echo "\t > orquestrar-app - Orquestrando app"

provisionar-infra:
	@@echo "CRIANDO AMBIENTE" && \
	cd $(PATH_APP_ANSIBLE) && \
	export ANSIBLE_HOST_KEY_CHECKING=False && time ansible-playbook provisioning.yml

orquestrar-app:
	@@echo "ORQUESTRANDO APP" && \
	cd $(PATH_APP_ANSIBLE) && \
	export ANSIBLE_HOST_KEY_CHECKING=False && time ansible-playbook -i inventory/gcp.yml services-app.yml
