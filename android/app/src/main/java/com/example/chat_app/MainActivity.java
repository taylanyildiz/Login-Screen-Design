package com.example.chat_app;

import androidx.annotation.Nullable;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.android.SplashScreen;

public class MainActivity extends FlutterActivity {
    @Nullable
    @Override
    public SplashScreen provideSplashScreen() {
        return new SplashActivity();
    }
}
