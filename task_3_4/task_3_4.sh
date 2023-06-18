#!/bin/bash

# ( grep -RlZ "123" target | xargs -0 cp -t . && echo "cp - OK" || ! echo "cp - FAILS") \
# && (grep -RLZ "123" target | xargs -0 rm && echo "rm - OK" || echo "rm - FAILS")

if grep -RlZ "123" target | xargs -0 cp -t .
then
    echo "cp - OK"
else
    echo "cp - FAILS"
fi

if grep -RLZ "123" target | xargs -0 rm
then
    echo "rm - OK"
else
    echo "rm - FAILS"
fi
