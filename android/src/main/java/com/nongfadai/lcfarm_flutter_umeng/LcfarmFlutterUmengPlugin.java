package com.nongfadai.lcfarm_flutter_umeng;

import android.app.Activity;

import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** LcfarmFlutterUmengPlugin */
public class LcfarmFlutterUmengPlugin implements MethodCallHandler {

    private Activity activity;

    /** Plugin registration. */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "lcfarm_flutter_umeng");
        channel.setMethodCallHandler(new LcfarmFlutterUmengPlugin(registrar.activity()));
    }

    private LcfarmFlutterUmengPlugin(Activity activity) {
        this.activity = activity;
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {

        if (call.method.equals("init")){
            init(call,result);
        }else if (call.method.equals("event")){
            event(call, result);
        }else if (call.method.equals("beginLogPageView")){
            beginLogPageView(call, result);
        }else if (call.method.equals("endLogPageView")){
            endLogPageView(call, result);
        }

        else {
            result.notImplemented();
        }
    }


    public void init(MethodCall call, Result result){

        UMConfigure.setLogEnabled(true);
        UMConfigure.init(activity, (String) call.argument("appKey"), "flutter", UMConfigure.DEVICE_TYPE_PHONE, null);
//        UMConfigure.setEncryptEnabled(true);
        result.success(true);

    }

    public  void event(MethodCall call, Result result) {

        MobclickAgent.onEvent(activity, (String) call.argument("eventId"));

    }

    public  void beginLogPageView(MethodCall call, Result result) {


        MobclickAgent.onPageStart((String) call.argument("pageName"));
        MobclickAgent.onResume(activity);


    }

    public  void endLogPageView(MethodCall call, Result result) {

        MobclickAgent.onPageEnd((String) call.argument("pageName"));
        MobclickAgent.onPause(activity);

    }


}
