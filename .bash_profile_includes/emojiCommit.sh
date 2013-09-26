function emojiCommit {
  emojis=(`cat ~/.bash_profile_includes/emojis`)
  RANDOM=$$$(date +%s)

  selectedEmoji=${emojis[$RANDOM % ${#emojis[@]} ]}

  emoji_message="$1 $selectedEmoji"
}

function gcm {
  emojiCommit "$1"

  echo git commit -m \"$emoji_message\"
  git commit -m "$emoji_message"
}

function gcam {
  emojiCommit "$1"

  echo git commit -am \"$emoji_message\"
  git commit -am "$emoji_message"
}