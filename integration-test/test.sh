# Requires docker-machine installed.
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

shouldCleanUp=1
while getopts ":d" opt; do
    case ${opt} in
        d )
            # Don't clean up
            shouldCleanUp=0
            ;;
        \? )
            echo "Usage: cmd [-d]"
            ;;
    esac
done

cleanup () {
    docker-compose -p ci kill
    docker-compose -p ci rm -f
}

failed () {
    # Remove images with no tags.
    docker rmi $(docker images | grep "^<none>" | awk '{print $3}') &> /dev/null
    docker volume rm $(docker volume ls -qf dangling=true) &> /dev/null
    exit 1
}

trap 'printf "${RED}Tests Failed for Unexpected Reasons${NC}\n"' HUP INT QUIT PIPE TERM
docker-compose -p ci build
docker-compose -p ci up -d --no-recreate ihub-service
sleep 3
docker-compose -p ci up -d --no-recreate ihub-integration-tester

TEST_EXIT_CODE=`docker wait ci_ihub-integration-tester_1`
if [[ -z ${TEST_EXIT_CODE+x} || "$TEST_EXIT_CODE" -ne 0 ]] ; then
    printf "${RED}Tests Failed${NC} - Exit Code: $TEST_EXIT_CODE\n"
else
    printf "${GREEN}Tests Passed${NC}\n"
    if [ $shouldCleanUp -eq 1 ] ; then
        cleanup
    fi
fi
# Remove images with no tags.
docker rmi $(docker images | grep "^<none>" | awk '{print $3}') &> /dev/null
docker volume rm $(docker volume ls -qf dangling=true) &> /dev/null
exit $TEST_EXIT_CODE
