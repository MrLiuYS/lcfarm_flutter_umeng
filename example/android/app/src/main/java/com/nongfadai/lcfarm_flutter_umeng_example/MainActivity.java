package com.nongfadai.lcfarm_flutter_umeng_example;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;


import com.umeng.analytics.MobclickAgent;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

  }

  public void onResume() {
    super.onResume();
    MobclickAgent.onResume(this);

  }

  public void onPause() {
    super.onPause();
    MobclickAgent.onPause(this);
  }

}
