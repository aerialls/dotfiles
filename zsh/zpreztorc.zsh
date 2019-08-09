# GENERAL

zstyle ':prezto:*:*' color 'yes'

# MODULES

# Warning, the order matters
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'history' \
  'archive' \
  'ssh' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt' \
  'git' \
  'osx' \
  'homebrew' \
  'docker' \

# PARAMETERS

zstyle ':prezto:module:prompt' theme 'steeef'
zstyle ':prezto:module:terminal' auto-title 'yes'
zstyle ':prezto:module:utility' safe-ops 'yes'
zstyle ':prezto:module:syntax-highlighting' styles 'path' 'fg=cyan' 'alias' 'fg=magenta,bold'
