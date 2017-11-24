package wentsai.hisign.com.jnidemo2;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import wentsai.hisign.com.testlibrary.TestUtils;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TestUtils.getName();
    }
}
