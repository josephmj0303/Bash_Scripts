Write a shell script to call 'functions' from other script.
	fun.sh  , script.sh
fun.sh
#!/bin/bash

function hello() {
    echo "Hello, world!"
}

hello

script.sh
#!/bin/bash

source script1.sh

hello

