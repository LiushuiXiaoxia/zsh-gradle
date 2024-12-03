alias GW="./gradlew"

alias gwc="GW clean"
alias gwt="GW tasks"
alias gwa="GW assemble"
alias gwad="GW assembleDebug"
alias gwar="GW assembleRelease"

alias gwb="GW build"
alias gws="GW --stop"
alias gwca="gwc;gwa"
alias gwcb="gwc;gwb"
alias gwcs="gwc;gws"

function killGradle(){
    echo "before"
    jps | grep -i gradle

    sleep 1

    echo "kill"
    jps | grep -i gradle | awk '{print $1}' | xargs kill -9 
    
    echo "after"
    jps | grep -i gradle
}