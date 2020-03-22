#!/bin/bash

BASE_DIR="$(cd "$(dirname "${0}")"; pwd)"

EXIT_CODE="0"

for TEST_FORMULA in $(find "${BASE_DIR}/Formula" -type f -or -type l | sed -e 's/.rb$//;s_.*/_koshatul/tools/_' | sort); do
    echo "## Testing ${TEST_FORMULA}"
    brew audit --strict --online "${TEST_FORMULA}"
    RV=${?}
    if [[ ${RV} != 0 ]]; then
        EXIT_CODE="${RV}"
    fi
done

exit ${EXIT_CODE}
