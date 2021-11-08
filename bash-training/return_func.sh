#!/bin/bash

just_a_function () {
    echo This is a function
    return 3
}

just_a_function

echo The function returned $?
