package com.example.chat_app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.os.Bundle;
import android.view.View;
import io.flutter.embedding.android.SplashScreen;

public class SplashActivity implements SplashScreen {

    @Nullable
    @Override
    public View createSplashView(@NonNull Context context, @Nullable Bundle savedInstanceState) {
        View view  = LayoutInflater.from(context).inflate(R.layout.activity_splash,null,false);
        return view;
    }

    @Override
    public void transitionToFlutter(@NonNull Runnable onTransitionComplete) {
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                onTransitionComplete.run();
            }
        },4000);
    }
}