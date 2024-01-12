#!/bin/bash

# Example: Using set -e to exit on error.

set -e
command_that_might_fail
echo "This line won't be reached if the previous command fails."
