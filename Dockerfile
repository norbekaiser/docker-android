FROM norbnorb/android:base
#By Using the Image you are Accepting the Terms and conditions of the respective Licenses
RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager "platforms;android-24"
RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager --licenses
