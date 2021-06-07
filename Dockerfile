FROM norbnorb/android:base
#By Using the Image you are Accepting the Terms and conditions of the respective Licenses
RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager "platform-tools"
RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager "platforms;android-27"
RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager "ndk-bundle"
RUN rm -rf /opt/Android/licenses
#RUN  yes | /opt/Android/cmdline-tools/latest/bin/sdkmanager --licenses
