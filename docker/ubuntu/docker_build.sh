docker image build \
    -t \
    dso:main \
    --build-arg \
    USER_ID=$(id -u) \
    --build-arg \
    GROUP_ID=$(id -g) \
    .