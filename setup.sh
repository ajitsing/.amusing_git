#/bin/bash

git_template_folder=".git_template"
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NoColor='\033[0m'

if [ ! -d ~/"${git_template_folder}" ]; then
	printf "${GREEN}confirgure git templates\ncreate ~/.git_template${NoColor}\n"
  mkdir -p ~/.git_template/hooks/
fi

printf "${YELLOW}ln -s ~/.amusing_git/hooks/post-commit ~/.git_template/hooks/post-commit${NoColor}\n"
ln -s ~/.amusing_git/hooks/post-commit ~/.git_template/hooks/post-commit

printf "${YELLOW}ln -s ~/.amusing_git/hooks/pre-rebase ~/.git_template/hooks/pre-rebase${NoColor}\n"
ln -s ~/.amusing_git/hooks/pre-rebase ~/.git_template/hooks/pre-rebase

printf "${GREEN}Now whenever you will initialize or clone a repository, you will be amused by git :)\n"
printf "If you want to use amusing_git for existing repositories then do following..\n"
printf "./setup_existing_repo.sh /path/to/your/repo${NoColor}\n"
