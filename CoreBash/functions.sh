#! /bin/bash
myfunc # Bash reads from top to bottom, function has not been defined yet
echo "Exit code from myfunc: ""$?"
function myfunc() {
    echo "Print in myfunc: ""${myvar}" # not visible from outside
    local localvar="Hi from inside the function"
    #return 17
}
myfunc
echo "Exit code from myfunc: ""$?"
myvar="Hi from outside the function" # visible from function
myfunc
echo "Exit code from myfunc: ""$?"
echo "local var from func:""${localvar}"


echo "**********************************************************"


