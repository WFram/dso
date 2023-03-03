SEQ="$1"
./build/bin/dso_dataset \
    files=$SEQ/images \
    vignette=$SEQ/vignette.png \
    calib=$SEQ/camera.txt \
    gamma=$SEQ/pcalib.txt \
    mode=0 \
    nogui=0 \
    nomt=1 \
    quiet=1 \
    start=0
    # start=0
