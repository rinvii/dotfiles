function print_centered_ascii_art() {
  local term_width=$(tput cols)

  local art=(
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠈⠑⢄⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⣀⡠⢤⠀⠀⠀⠀'
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠑⢄⣴⣿⣿⣦⣀⠤⠒⠉⠀⠀⡜⠀⠀⠀⠀'
    '⠀⠀⠀⠀⠀⠀⠀⣰⣶⣤⣀⢸⠀⠀⠀⠀⠀⠀⠀⠻⣿⡿⠋⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀'
    '⢀⣀⡀⠠⠤⠤⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢀⡤⣄⠉⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀'
    '⠀⠈⢦⠀⠀⠀⠀⠀⠀⠈⠉⠁⢰⠙⠆⣠⣤⣬⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀'
    '⠀⠀⠀⠑⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡿⠿⡇⠀⠀⠀⠀⠀⣀⡀⠀⠘⣤⢄⠀⠀⠀⠀'
    '⠀⠀⠀⠀⠈⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠳⣼⠃⠀⣤⣀⡤⠾⠿⣿⣷⣴⠃⠀⢣⠀⠀⠀'
    '⠀⠀⠀⠀⠀⡤⣵⣀⡠⠚⠙⠲⠤⣀⡴⠋⠳⠊⠙⠚⠀⠈⠳⡀⠀⠀⠈⠙⢢⡀⠀⢇⠀⠀'
    '⠀⠸⡉⠑⠚⠦⢌⡉⠀⠀⢸⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣦⣀⠀⠀⣰⠃⠀⠸⠀⠀'
    '⠀⠀⠑⡄⠀⠀⠀⠈⡇⠀⠘⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠓⠚⠁⠀⠀⠀⡇⠀'
    '⠀⠀⠀⠈⣦⣄⠀⢀⠇⠀⠀⠀⠀⠀⣿⣿⡿⠿⢿⣿⣶⣶⣤⡀⠀⠀⠀⢀⡤⠒⠲⡦⡇⠀'
    '⠀⠀⠀⠀⢸⠈⠉⣡⣶⣦⣄⠀⠀⠀⠈⢿⣷⡄⠀⠀⠉⣿⣿⠇⠀⠀⡰⠃⠀⠀⢰⠁⠘⡄'
    '⠀⠀⠀⠀⠈⡆⢠⣿⣿⣿⣿⣷⡄⠀⠀⠈⠻⣿⣦⣄⣾⣿⠏⠀⠀⡜⠀⠀⠀⠀⠘⠀⠀⡇'
    '⠀⠀⠀⠀⠀⠘⢾⣿⠋⠙⢿⣿⣿⣆⠀⠀⠀⠈⠻⢿⡿⠃⠀⢀⣸⠁⠀⠀⠀⠀⠀⠀⢠⠃'
    '⠀⠀⠀⠀⠀⠀⠈⠻⣄⠀⠀⠙⣿⣿⣧⠀⠀⠀⠀⠀⢀⣴⣾⣿⡏⠀⢰⣿⣷⣶⣶⣆⠎⠀'
    '⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠶⣿⡿⠿⠋⠀⠀⠀⠀⠀⠈⢻⣿⣿⣧⠀⠘⠿⠿⠿⡫⠋⠀⠀'
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠉⠑⠒⠒⠤⠤⠤⠤⢤⠔⠛⠋⠉⠓⠤⠤⠤⠊⠀⠀⠀⠀'
    '⠀⠀⠀⠀⠀⠀⠀⠀⠠⣮⠊⣀⣀⣀⣀⣀⣀⣀⠤⠒⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
  )

  for line in "${art[@]}"; do
    local padding=$(((term_width - ${#line}) / 2))
    printf "%*s%s\n" "$padding" "" "$line"
  done
}

print_centered_ascii_art

quotes=(
  "A computer can never be held accountable, therefore a computer must never make a management decision."
  "Don't learn a codebase through by reading through the code. Start by reading where code is being actively changed, i.e., pull requests."
  "Make it deploy first. Then, make it useful."
  "Part of learning, is learning what you don't need to learn." # my quote but i found this later which inverts the delivery, but still reaches the same idea https://kevin.the.li/posts/learning-to-learn/
  "Take feedback from unfamiliar devs more seriously than feedback from familiar devs."
  "Keep code that changes together in one file or in the same directory."
  "Don't solve problems that you don't have right now."
  "Comments should explain why, not what, the code is doing to avoid future deviation." # https://google.github.io/styleguide/go/guide
  # "Perfection is the end of the road where there's no more to add, explore, or change. There would be no tension, no need to adapt or challenge ourselves, and perhaps even no reason to continue. Imperfection is better in that it allows for unique interpretations, personal expression, and growth because it leaves room for variation, unpredictability, and surprise. Each flaw or misstep adds depth and character, making the journey more colorful and human. In the end, perfection can be two things: a construct of our own values, experiences, and aspirations—of how we think things should be; or a construct shaped by external standards—what others value, expect, or admire striving to align ourselves with these standards."
  "Abstraction works only when it frees you from worry",
  "Comfort is the enemy of growth"
  "When you've done something really well, people don't know you've done anything at all." # https://www.youtube.com/watch?v=nUl2Tau_z3E
  # "It's not the tool that matters, it's the result. Unless of course the tool is the limiting factor."
  "Failure is the first step to success"
  "Get Early Wins = Dopamine = Motivation = Practicing = Wins"
  "Pick the right teacher: not the one who knows the most, but the one who can explain the best."
  "80/20 rule: What can you do for the least amount of effort that will have the most impact?"
  "You have one life and you should spend it loving the people you care about"
  "Their only solace will be oblivion and I wish them no company along the way"
  "Leadership, to me, is very simple: make sure everyone is included. It's simple, but extremely difficult to do."
  "Friendships are like trees. You have to water them so they grow and we each only have so much water."
  # "the simpler the story the more obvious the cliches"
)
random_index=$(((RANDOM % ${#quotes[@]}) + 1))
random_quote="${quotes[$random_index]}"
echo "$random_quote"
