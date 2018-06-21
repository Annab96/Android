package org.androidtown.h_g_b;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import org.androidtown.h_g_b.AddInformationActivity;
import org.androidtown.h_g_b.R;

public class SignupActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);
    }


    public void onButton2Clicked(View v){
        Intent intent = new Intent(this, AddInformationActivity.class);
        startActivity(intent);
    }

}
