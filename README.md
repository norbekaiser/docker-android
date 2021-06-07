# Docker Image

## Description
Debian Image with Android SDK / NDK depending on tag

Make Sure to Accept Google's EULA before using the Images

## Repos
* [Gitlab](https://gitlab.norbert-ruehl.de/nruehl/docker-android.git)
* [Github](https://github.com/norbekaiser/docker-android.git)

## Docker
* [dockerhub](https://hub.docker.com/r/norbnorb/android)


### Docker Pull Command
To use Api Level 30: 
```docker pull norbnorb/android:api-30```

To use Api Level 30 with NDK: 
```docker pull norbnorb/android:api-30+ndk```

### Accepting Terms and Conditions
Run the Following to Accept the Terms and Conditions
```yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager --licenses```
