function emojiCommit {
  emojis=(":punch:" ":bowtie" ":smiley:" ":stuck_out_tongue:" ":stuck_out_tongue_closed_eyes:" ":sweat:" ":yum:" ":poop:" ":metal:" ":smile:" ":grin:" ":grinning:" ":open_mouth:" ":see_no_evil:" ":smirk:" ":kissing:" ":neckbeard:" ":sunglasses:" ":boom:" ":sparkles:" ":fire:" ":+1:" ":ok_hand:" ":v:" ":older_man:" ":pouting_cat:" ":relieved:" ":stuck_out_tongue_winking_eye:" ":sweat_smile:" ":no_mouth:" ":muscle:" ":man:" ":speak_no_evil:" ":hear_no_evil:" ":eyes:" ":hamster:")
  RANDOM=$$$(date +%s)
  selectedEmoji=${emojis[$RANDOM % ${#emojis[@]} ]}

  emoji_message="$1 $selectedEmoji"

  echo git commit -m \"$emoji_message\"

  git commit -m "$emoji_message"
}
