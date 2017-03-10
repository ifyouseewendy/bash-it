#!/usr/bin/env bash

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${bold_blue}[${bold_red}"
GIT_THEME_PROMPT_SUFFIX="${bold_blue}]"

RBENV_THEME_PROMPT_PREFIX=" ${bold_blue}[${bold_red}"
RBENV_THEME_PROMPT_SUFFIX="${bold_blue}]"

CHRUBY_THEME_PROMPT_PREFIX=" ${bold_blue}[${bold_red}"
CHRUBY_THEME_PROMPT_SUFFIX="${bold_blue}]"

function chruby_version_prompt {
  if declare -f -F chruby &> /dev/null; then
    if declare -f -F chruby_auto &> /dev/null; then
      chruby_auto
    fi
    ruby_version=$(ruby --version | awk '{print $1, $2;}') || return
    if [[ ! $(chruby | grep '*') ]]; then
      ruby_version="${ruby_version} (system)"
    fi
    echo -e "${CHRUBY_THEME_PROMPT_PREFIX}${ruby_version}${CHRUBY_THEME_PROMPT_SUFFIX}"
  fi
}

function ruby_version_prompt {
  echo -e "$(rbfu_version_prompt)$(rbenv_version_prompt)$(rvm_version_prompt)$(chruby_version_prompt)"
}

function prompt_command() {
    prompt_flag="${bold_red}➜ "
    relative_path="${cyan}\W"
    git_branch="$(git_prompt_info)"
    ruby_version="$(ruby_version_prompt)"
    PS1="\n${prompt_flag} ${relative_path}${ruby_version}${git_branch} \n${red}➜ ${reset_color} "
}

PROMPT_COMMAND=prompt_command;
