TUM_MONO_DATASET_PATH="$1"
for i in {1..50}
do
  SEQ_NAME=$(printf "sequence_%02d" $i)
  ./build/bin/dso_dataset \
      files=$TUM_MONO_DATASET_PATH/$SEQ_NAME/images \
      vignette=$TUM_MONO_DATASET_PATH/$SEQ_NAME/vignette.png \
      calib=$TUM_MONO_DATASET_PATH/$SEQ_NAME/camera.txt \
      gamma=$TUM_MONO_DATASET_PATH/$SEQ_NAME/pcalib.txt \
      seq_name=$SEQ_NAME \
      mode=0 \
      nogui=1 \
      quiet=1 \
      start=0
done