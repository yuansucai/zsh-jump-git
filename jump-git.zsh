jump() {
  isGitStash=$(command git rev-parse --is-inside-work-tree)
  if [[ "$isGitStash" == "true" ]] {
    gitAddress=$(command git remote get-url origin)
    echo $gitAddress
    /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-speech-input $gitAddress
  } else {
    echo $isGitStash
  }
}
