#!/bin/bash
set -e
shopt -s globstar

# Optional argument to test single image
# i.e. glot/python:latest
imageToTest=$1

runTest() {
    imageName=$1
    payloadFile=$2
    resultFile=$3
    testName="$imageName - $(basename "$(dirname "$payloadFile")")"

    result=$(docker run -i --rm "$imageName" < "$payloadFile")
    expect=$(cat "$resultFile")

    if [ "$result" == "$expect" ]; then
        echo "OK: $testName"
    else
        echo "FAILED: $testName"
        echo "Result: $result"
        exit 1
    fi
}

for dockerfilePath in **/Dockerfile; do
    (
        tagPath=$(dirname "$dockerfilePath")
        imagePath=$(dirname "$tagPath")
        tag=$(basename "$tagPath")
        image=$(basename "$imagePath")
        imageName="glot/${image}:${tag}"

        # Change directory to tag path
        cd "$tagPath"

        # Ensure that the tests directory exist
        mkdir -p tests

        # Find and run tests
        for payloadFile in tests/**/payload.json; do
            testPath=$(dirname "$payloadFile")
            resultFile="${testPath}/result.json"

            # If imageToTest is set; run only tests for that image – run all tests if not
            if [ -z "$imageToTest" ] || [ "$imageToTest" == "$imageName" ] ;then
                runTest "$imageName" "$payloadFile" "$resultFile"
            fi
        done
    )
done
