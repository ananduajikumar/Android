package com.example.login;

import android.os.Bundle;
import android.view.View;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import android.widget.EditText;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {

    private EditText unameEditText;
    private EditText passEditText;

    protected void onCreate() {
        unameEditText = findViewById(R.id.uname1);
        passEditText = findViewById(R.id.pass1);

    }
    @Override';'
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }

    public void Login(View view) {
        String username = unameEditText.getText().toString();
        String password = passEditText.getText().toString();
        if (isValidCredentials(username, password)){
            Toast.makeText(this,"login successfully", Toast.LENGTH_SHORT).show();
        }else {
            Toast.makeText(this, "Login Unsuccessfull", Toast.LENGTH_SHORT).show();
        }
    }
    private boolean isValidCredentials(String username, String password){
        return username.equals("Admin") && password.equals("1234");
    }
}
