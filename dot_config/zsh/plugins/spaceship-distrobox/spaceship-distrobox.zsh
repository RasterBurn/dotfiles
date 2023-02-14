# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_DISTROBOX_SHOW="${SPACESHIP_DISTROBOX_SHOW=true}"
SPACESHIP_DISTROBOX_ASYNC="${SPACESHIP_DISTROBOX_ASYNC=false}"
SPACESHIP_DISTROBOX_PREFIX="${SPACESHIP_DISTROBOX_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_DISTROBOX_SUFFIX="${SPACESHIP_DISTROBOX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_DISTROBOX_SYMBOL="${SPACESHIP_DISTROBOX_SYMBOL="⬢"}"
SPACESHIP_DISTROBOX_COLOR="${SPACESHIP_DISTROBOX_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show foobar status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_distrobox() {
  # If SPACESHIP_DISTROBOX_SHOW is false, don't show foobar section
  [[ $SPACESHIP_DISTROBOX_SHOW == false ]] && return

  if [[ (! -f /run/.toolboxenv && ! -f /run/.containerenv )]]; then
    return
  fi

  spaceship::section::v4 \
    --color "$SPACESHIP_DISTROBOX_COLOR" \
    --prefix "$SPACESHIP_DISTROBOX_PREFIX" \
    --suffix "$SPACESHIP_DISTROBOX_SUFFIX" \
    --symbol "$SPACESHIP_DISTROBOX_SYMBOL" \
    ""
}
