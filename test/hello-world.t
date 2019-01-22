Setup

  $ . "$TESTDIR/setup.sh"

Hello World

  $ bootstrap --single-branch --branch tests/hello_world git@github.com:rcm-users/rcm-bootstrap
  Cloning into '*/.local/share/dotfiles'... (glob)
  '*/.local/share/dotfiles/hello_world' -> '*/.hello_world' (glob)

Clean

  $ clean
