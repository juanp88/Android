package com.loftydevelopment.helloworldkotlin

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.view.View
import io.flutter.embedding.android.FlutterActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        startActivity(
            FlutterActivity
                .createDefaultIntent(this))



        Handler().postDelayed({
            val intent = Intent(this@MainActivity,
                HelloWorldActivity::class.java)
            startActivity(intent)
            finish()
        }, 5000)
    }
}
