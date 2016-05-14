#!/bin/bash
set -e
shopt -s globstar

run_test () {
    imageName=$1
    payloadFile=$2
    resultFile=$3
    testName="$imageName - $(basename $(dirname $payloadFile))"

    result=$(cat $payloadFile | docker run -i --rm $imageName)
    expect=$(cat $resultFile)

    if [ "$result" == "$expect" ]; then
        echo OK: $testName
        exit 0
    else
        echo FAILED: $testName
        echo Result: $result
        exit 1
    fi
}

for dockerfilePath in $(find . -name "Dockerfile"); do
    (
        tagPath=$(dirname $dockerfilePath)
        imagePath=$(dirname $tagPath)
        tag=$(basename $tagPath)
        image=$(basename $imagePath)
        imageName="glot/${image}:${tag}"

        # Change directory to tag path
        cd $tagPath

        # Ensure that the tests directory exist
        mkdir -p tests

        # Find and run all tests
        for payloadFile in $(find tests -name "payload.json"); do
            testPath=$(dirname $payloadFile)
            resultFile="${testPath}/result.json"

            run_test $imageName $payloadFile $resultFile
        done
    )
done
