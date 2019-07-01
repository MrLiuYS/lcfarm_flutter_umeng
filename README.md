# lcfarm_flutter_umeng

A new flutter plugin project.

## Getting Started

android项目需要在MainActivity.java添加方法

```
  public void onResume() {
    super.onResume();
    MobclickAgent.onResume(this);

  }

  public void onPause() {
    super.onPause();
    MobclickAgent.onPause(this);
  }
```

当然记得引入
```
import com.umeng.analytics.MobclickAgent;
```