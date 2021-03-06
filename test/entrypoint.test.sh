#!/usr/bin/env bash

export LCOV_DEBUG=1
export PS4='+:${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: '

actual_output=$(bash entrypoint.sh)
actual_exit_code=$?
expected_output="error: not found GITHUB_TOKEN"
expected_exit_code=1

if [[ "${actual_output}" != "${expected_output}" ]]; then
    echo "Fail: expected '${expected_output}' found '${actual_output}' at ${BASH_SOURCE}:${LINENO}."
    exit 1
fi

echo "Pass"
