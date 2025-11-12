#!/bin/bash

Arguments() {
    echo "You have entered $# arguments."
    echo "The arguments are: $@"
}

Arguments "$@"
