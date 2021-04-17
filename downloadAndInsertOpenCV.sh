# https://jaist.dl.sourceforge.net/project/opencvlibrary/4.5.2/opencv-4.5.2-ios-framework.zip

# taken from https://github.com/brainhubeu/react-native-opencv-tutorial/blob/master/downloadAndInsertOpenCV.sh

# ios
version=4.5.2
# base_url=https://razaoinfo.dl.sourceforge.net/project/opencvlibrary/${version}/
base_url=https://jaist.dl.sourceforge.net/project/opencvlibrary/${version}

filename=opencv-${version}-ios-framework.zip
curl ${base_url}/${filename} -o ${filename}
unzip -a ${filename}
cd ios
cp -r ./../opencv2.framework ./
cd ..
rm -rf ${filename}
rm -rf opencv2.framework/

# android
filename=opencv-${version}-android-sdk.zip

curl ${base_url}/${filename} -o ${filename}
unzip ${filename}
cd android/app/src/main
mkdir jniLibs
cp -r ./../../../../OpenCV-android-sdk/sdk/native/libs/ ./jniLibs
cd ../../../../
rm -rf ${filename}
rm -rf OpenCV-android-sdk/
