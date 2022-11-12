JOB_NAME=kata_code
COMMAND_NAME_BUILD=kata-build
COMMAND_NAME_TEST=kata-tests

# Build & Test
${COMMAND_NAME_BUILD}:
	docker build -t ${JOB_NAME} .
	docker run -v $(shell pwd):/app ${JOB_NAME} composer install

${COMMAND_NAME_TEST}:
	docker run -v $(shell pwd):/app ${JOB_NAME} vendor/bin/phpunit

# Help
FONT_CYAN := $(shell tput setaf 6)
FONT_PURPLE := $(shell tput setaf 5)
FONT_BOLD := $(shell tput bold)
FONT_RESET := $(shell tput sgr0)

PRIMARY_FONT_COLOR := ${FONT_PURPLE}
PRIMARY_FONT_COLOR_BOLD := ${PRIMARY_FONT_COLOR}$(FONT_BOLD)
SECONDARY_FONT_COLOR := ${FONT_CYAN}
SECONDARY_FONT_COLOR_BOLD := ${SECONDARY_FONT_COLOR}$(FONT_BOLD)

PROJECT_NAME=${JOB_NAME}

help:
	@printf "${RAND}\n"
	@printf "$(SECONDARY_FONT_COLOR_BOLD)Kata Code Skeleton$(FONT_RESET)\n"
	@printf "\n"
	@printf "Please use $(PRIMARY_FONT_COLOR_BOLD)make$(FONT_RESET) <command> where <command> is one of:\n"
	@printf "\n"
	@printf "$(PRIMARY_FONT_COLOR_BOLD)${COMMAND_NAME_BUILD}$(FONT_RESET) \t create docker image and install kata dependencies.\n"
	@printf "$(PRIMARY_FONT_COLOR_BOLD)${COMMAND_NAME_TEST}$(FONT_RESET)\t execute kata tests.\n"
	@printf "\n"
	@printf "\n"
	@printf "$(SECONDARY_FONT_COLOR_BOLD)Enjoy your Kata!$(FONT_RESET)\n"
	@printf "\n"
	@printf "            |\n"
	@printf "////////////|---------------------------------------, \n"
	@printf " ^^^^^^^^^^^|======================================/, \n"
	@printf "            | \n"
	@printf "\n"
