workflow "Mirror Workflow" {
  on = "push"
  resolves = ["Mirror Action"]
}

action "Mirror Action" {
  uses = "spyoungtech/mirror-action@master"
  secrets = ["GIT_PASSWORD"]
  args = "https://projects.cs.nott.ac.uk/psyao5/UoN-CompSci-discord-bot.git"
  env = {
    GIT_USERNAME = "psyao5"
  }
}
