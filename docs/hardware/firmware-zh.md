```plain
OK3576-C开发板目前支持OTG烧写方式。在用户资料中提供了相应的烧写工具。
```

## 5.1 OTG烧写系统
### 5.1.1 OTG驱动安装
+ 路径：OK3576-C（Linux）用户资料\Linux\工具</font>DriverAssitant_v5.11.zip

将上述路径文件解压到任意目录，以管理员权限运行

打开DriverInstall.exe 程序。

![](../images/hardware/123.png)

点击“驱动安装”。

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214251723-98517c31-82d2-4e6d-9c09-9a214f28b101.png)

### 5.1.2 OTG完全烧写测试
#### **5.1.2.1 RKDevTool烧写测试**
+ 路径：OK3576-C（Linux）用户资料\Linux\工具</font> RKDevTool_Release_v3.31.zip

这是瑞芯微提供的一款开发工具，使用前将其解压到全英文路径下，用Type-C线连接开发板TYPE-C0口和主机，按住开发板的recovery键不要松开，然后按一下reset键系统复位，大约两秒后松开recovery键。瑞芯微开发工具上将提示发现loader设备。

+ 注意：识别设备的操作是开发板上电时recover按键是按下的状态。
+ 注意：理论上瑞芯微开发工具解压目录随意，但有用户反馈瑞芯微开发工具解压目录需为全英文，若打开开发工具后与下图不一致，请考虑解压其在全英文目录下。

打开瑞芯微开发工具：

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214251923-5d6fc68a-776a-4953-b536-b7b35c6effaf.png)

点击“切换“等待一会进入LOADER设备。根据自己镜像的位置调整镜像路径，然后勾选要更新的镜像，然后点击“执行”按钮进行升级。

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214252140-763ec0df-048e-4a14-9170-8a21b942cdf0.png)

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214252417-4afe701b-2b6c-4589-9ab3-b1ba0edbbb57.png)

### 5.2 TF 卡烧写系统
<font style="color:#000000;">烧写 TF 卡制作与烧写测试 </font>

<font style="color:#000000;">注意：测试 TF 卡容量最大为 32G，使用 32G 以上 TF 卡可能会烧写失败。 </font>

<font style="color:#000000;">将用户资料工具目录的 SDDiskTool_v1.76.zip拷贝到 windows 任意目录。以管理员权限运行 </font>

<font style="color:#000000;">SD_Firmware_Tool.exe。</font>

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214252666-a91fc93c-b5bf-476b-bff2-ebe975b5ea7b.png)

<font style="color:#000000;">选择磁盘设备，勾选“固件升级”，并选择 update.img。点击开始创建。</font>



![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214252868-8740d473-a961-43fe-8444-8cc7f9e007ac.png)



![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214253092-fcfe76c3-478e-41b5-bf25-b53b68a368d6.png)

<font style="color:#000000;">将 TF 卡插入开发板并启动，系统将自动进入烧写流程。烧写完成后屏幕和串口都将提示： </font>

<font style="color:#000000;">Please remove SD CARD!!!, wait for reboot. </font>

<font style="color:#000000;">此时，拔出 TF 卡，系统自动重新启动(请勿直接断电)。 </font>

<font style="color:#000000;">批量生产时，可以根据核心板的心跳灯来判断烧写是否完成，烧写过程中的心跳灯变化如下： </font>

<font style="color:#000000;">1、内核启动阶段：心跳灯模式，规律的间歇性闪烁。 </font>

<font style="color:#000000;">2、烧写准备阶段：EMMC 指示灯，熄灭。 </font>

<font style="color:#000000;">3、烧写进行阶段：EMMC 指示灯，常亮。 </font>

<font style="color:#000000;">4、烧写完成阶段：心跳灯模式，规律的间歇性闪烁。 </font>

<font style="color:#000000;">烧写状态串口信息：</font>

![](https://cdn.nlark.com/yuque/0/2024/png/45535139/1726214253365-d2c3acc8-5556-408b-9a88-7b9305caf707.png)

<font style="color:#000000;">若移除 TF 未自动重启，手动重启也可完成烧写。烧写过程中请耐心等待。</font>

