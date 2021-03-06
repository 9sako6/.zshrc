# _   .-')      ('-.    .-. .-')     ('-.                                 ('-.
# ( '.( OO )_   ( OO ).-.\  ( OO )  _(  OO)                              _(  OO)
#  ,--.   ,--.) / . --. /,--. ,--. (,------.   ,------.,-.-')  ,--.     (,------.
#  |   `.'   |  | \-.  \ |  .'   /  |  .---'('-| _.---'|  |OO) |  |.-')  |  .---'
#  |         |.-'-'  |  ||      /,  |  |    (OO|(_\    |  |  \ |  | OO ) |  |
#  |  |'.'|  | \| |_.'  ||     ' _)(|  '--. /  |  '--. |  |(_/ |  |`-' |(|  '--.
#  |  |   |  |  |  .-.  ||  .   \   |  .--' \_)|  .--',|  |_.'(|  '---.' |  .--'
#  |  |   |  |  |  | |  ||  |\   \  |  `---.  \|  |_)(_|  |    |      |  |  `---.
#  `--'   `--'  `--' `--'`--' '--'  `------'   `--'    `--'    `------'  `------'

all: ## Initialize settings and deploy dotfiles
	@make init
	@make deploy

init: ## Initialize settings
	@bash etc/init.sh

deploy: ## Deploy dotfiles
	@bash etc/deploy.sh

clean: ## Clean dotfiles' settings
	@bash etc/clean.sh

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-32s\033[0m %s\n", $$1, $$2}'
