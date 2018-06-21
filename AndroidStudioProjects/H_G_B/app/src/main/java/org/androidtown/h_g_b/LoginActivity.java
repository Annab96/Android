package org.androidtown.h_g_b;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import org.androidtown.h_g_b.R;

public class LoginActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
    }
    public void onButton1Clicked(View v){
        Intent intent = new Intent(this, org.androidtown.h_g_b.SignupActivity.class);
        startActivity(intent);
    }
}