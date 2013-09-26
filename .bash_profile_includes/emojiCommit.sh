function gcm {
  emojis=(`cat ~/.bash_profile_includes/emojis`)

  RANDOM=$$$(date +%s)

  selectedEmoji=${emojis[$RANDOM % ${#emojis[@]} ]}

  emoji_message="$1 $selectedEmoji"

  echo git commit -m \"$emoji_message\"

  git commit -m "$emoji_message"
}

function gcam {
  emojis=(`cat ~/.bash_profile_includes/emojis`)

  RANDOM=$$$(date +%s)

  selectedEmoji=${emojis[$RANDOM % ${#emojis[@]} ]}

  emoji_message="$1 $selectedEmoji"

  echo git commit -am \"$emoji_message\"

  git commit -am "$emoji_message"
}

