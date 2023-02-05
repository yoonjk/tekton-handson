
## clean pods 
k get po | grep -E "Completed|Error" | awk '{print "k delete pod "$1}'|sh
