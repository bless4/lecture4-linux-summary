#!/bin/bash

: '
This is a multiline comment block.
You can add multiple lines of comments here.
These lines will be ignored by the shell.
'

echo "This is the main script."

#=================

# Alternatively, you can use the <<EOF syntax to create a multiline comment block:
#!/bin/bash

<<EOF
This is another way to create a multiline comment block.
You can add as many lines of comments as needed.
These lines will not be executed by the shell.
EOF

echo "This is the main script."
