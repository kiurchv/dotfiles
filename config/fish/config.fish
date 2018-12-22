# setup editor
set -gx EDITOR vim

# initialize asdf
source ~/.asdf/asdf.fish

# add Elixir executables to PATH
set PATH ~/.asdf/installs/elixir/1.6.6/.mix/escripts $PATH
