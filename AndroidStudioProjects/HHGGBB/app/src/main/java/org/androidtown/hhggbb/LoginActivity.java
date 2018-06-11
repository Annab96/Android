package org.androidtown.hhggbb;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class LoginActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
    }
        public void onButton1Clicked(View v){
            Intent intent = new Intent(this, SignupActivity.class);
            startActivity(intent);
        }
    }
