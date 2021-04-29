package com.loftydevelopment.helloworldkotlin

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.FragmentManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragment
import kotlinx.android.synthetic.main.activity_hello_world.*


class HelloWorldActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hello_world);



        //Full Screen Button
        btn_Full_Screen.setOnClickListener {
            startActivity(
                FlutterActivity
                    .withNewEngine()
                    .initialRoute("home")
                    .build(this)
            )
        }

        btn_webView.setOnClickListener {
            startActivity(
                FlutterActivity
                    .withNewEngine()
                    .initialRoute("webview")
                    .build(this)
            )
        }

    }
}
