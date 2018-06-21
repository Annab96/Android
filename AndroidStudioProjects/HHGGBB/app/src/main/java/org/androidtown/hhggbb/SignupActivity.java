package org.androidtown.hhggbb;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

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
