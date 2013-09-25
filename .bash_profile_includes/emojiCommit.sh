function emojiCommit {
  emojis=(`cat ~/.bash_profile_includes/emojis`)

  RANDOM=$$$(date +%s)

  selectedEmoji=${emojis[$RANDOM % ${#emojis[@]} ]}

  emoji_message="$1 $selectedEmoji"

  echo git commit -m \"$emoji_message\"

  git commit -m "$emoji_message"
}
