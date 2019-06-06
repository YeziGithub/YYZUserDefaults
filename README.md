# YYZUserDefaults
UserDefaults的扩展、协议及协议扩展、枚举、结构体、泛型使用

## 使用方式：

1、将YYZUserDefaultsExt.swift添加至项目中

2、在
extension UserDefaults{
    添加需要本地化信息
}

示例：

```
extension UserDefaults {
    struct account: YYZUserDefaultsExt {
        enum yyKeys: String {
            case phone
            case isLogin
            case name
        } 
    }
}
```

3、方法使用示例：
```
UserDefaults.account.set("13333333333", forKey: .phone)
```
```
UserDefaults.account.get(valueType: .string, forKey: .isLogin)
```
```
UserDefaults.account.removeObject(forkey: .phone)
```
