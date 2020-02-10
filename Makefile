.PHONY: help converge verify test destroy lint login

.DEFAULT_GOAL := test

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

test: ## Launche molecule with test option (create + prepare + converge + verify + destroy)
	namespace=redbeard28 image=debian tag=buster-basetools molecule test

converge: ## Launche molecule with test option (create + prepare + converge)
	namespace=redbeard28 image=debian tag=buster-basetools molecule converge

verify: ## Launche molecule with test option (verify)
	namespace=redbeard28 image=debian tag=buster-basetools molecule verify

destroy: ## Launche molecule with test option (create + prepare + converge)
	namespace=redbeard28 image=debian tag=buster-basetools molecule destroy

lint: ## Launche molecule with test option (create + prepare + converge)
	namespace=redbeard28 image=debian tag=buster-basetools molecule lint

login: ## Launche molecule with test option (create + prepare + converge)
	namespace=redbeard28 image=debian tag=buster-basetools molecule login

