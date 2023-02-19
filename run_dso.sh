SEQ_PATH="$1"
SEQ_NAME="$2"
./build/bin/dso_dataset \
    files=$SEQ_PATH/images \
    vignette=$SEQ_PATH/vignette.png \
    calib=$SEQ_PATH/camera.txt \
    gamma=$SEQ_PATH/pcalib.txt \
    seq_name=$SEQ_NAME \
    mode=0 \
    nogui=0 \
    quiet=1 \
    start=0
