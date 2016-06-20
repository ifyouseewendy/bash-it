#!/usr/bin/env bash

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${bold_blue}[${bold_red}"
GIT_THEME_PROMPT_SUFFIX="${bold_blue}]"

RBENV_THEME_PROMPT_PREFIX=" ${bold_blue}[${bold_red}"
RBENV_THEME_PROMPT_SUFFIX="${bold_blue}]"

function prompt_command() {
    prompt_flag="${bold_red}➜ "
    relative_path="${cyan}\W"
    git_branch="$(git_prompt_info)"
    ruby_version="$(ruby_version_prompt)"
    PS1="\n${prompt_flag} ${relative_path}${ruby_version}${git_branch} \n${red}➜ ${reset_color} "
}

PROMPT_COMMAND=prompt_command;
