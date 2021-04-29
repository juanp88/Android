package com.loftydevelopment.helloworldkotlin

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.FragmentManager
import io.flutter.embedding.android.FlutterFragment

class Fragment : AppCompatActivity() {

    companion object {
        private const val TAG_FLUTTER_FRAGMENT = "flutter_fragment"
    }

    private var flutterFragment: FlutterFragment? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_fragment)

        val fragmentManager: FragmentManager = supportFragmentManager

        // Attempt to find an existing FlutterFragment, in case this is not the
        // first time that onCreate() was run.
        flutterFragment = fragmentManager
            .findFragmentByTag(TAG_FLUTTER_FRAGMENT) as FlutterFragment?

        // Create and attach a FlutterFragment if one does not exist.
        if (flutterFragment == null) {
            var newFlutterFragment = FlutterFragment.createDefault()
            flutterFragment = newFlutterFragment
            fragmentManager
                .beginTransaction()
                .add(
                    R.id.fragment_container,
                    newFlutterFragment,
                    TAG_FLUTTER_FRAGMENT
                )
                .commit()
        }
    }


}