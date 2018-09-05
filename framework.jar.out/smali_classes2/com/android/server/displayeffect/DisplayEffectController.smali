.class public Lcom/android/server/displayeffect/DisplayEffectController;
.super Ljava/lang/Object;
.source "DisplayEffectController.java"

# interfaces
.implements Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayeffect/DisplayEffectController$1;,
        Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;,
        Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitSettings:Z

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeFlag:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

.field private mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

.field private mSmartUltraBrightModeEnabled:Z

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/displayeffect/DisplayEffectService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayEffectService"    # Lcom/android/server/displayeffect/DisplayEffectService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "DisplayEffectController"

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    .line 62
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/displayeffect/DisplayEffectController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/displayeffect/DisplayEffectController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/displayeffect/DisplayEffectController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectController;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/displayeffect/DisplayEffectController;)Lcom/android/server/displayeffect/SmartHardLightModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    return-object v0
.end method

.method private autoBrightnessEnabledChange()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    const-string v1, "Auto Brightness Enabled Change Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v0, v0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->smartHardLightModeEnabled()V

    .line 168
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    invoke-virtual {v0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->ExitSmartHardLight()V

    .line 173
    :cond_0
    return-void
.end method

.method private disableSmartHardLightMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, -0x1

    .line 258
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableSmartUltraBrightMode enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmartUltraBrightModeTurnOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v4, v4, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v2, v2, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "sysMode":I
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    const-string v3, "android"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "result":I
    if-eq v0, v5, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v5}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 269
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    .line 272
    .end local v0    # "result":I
    .end local v1    # "sysMode":I
    :cond_0
    return-void
.end method

.method private screenBrightnessChange()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Brightness Change Mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    iget v2, v2, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSetting:I

    iget v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingMaximum:I

    if-ge v0, v1, :cond_0

    .line 182
    iget-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v0, v0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->smartHardLightModeEnabled()V

    .line 186
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    invoke-virtual {v0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->ExitSmartHardLight()V

    .line 192
    :cond_0
    return-void
.end method

.method private smartHardLightModeEnabled()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSmartUltraBrightModeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v0, v0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    const-string v1, "smart_ultra_bright_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 125
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    const-string v7, "updateSettings..."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 127
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    .line 128
    .local v2, "oldSmartUltraBrightModeEnabled":Z
    const-string v4, "smart_ultra_bright_mode_enabled"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    .line 131
    iget-boolean v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    if-eq v2, v4, :cond_0

    .line 132
    iget-boolean v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    invoke-direct {p0, v4}, Lcom/android/server/displayeffect/DisplayEffectController;->disableSmartHardLightMode(Z)V

    .line 133
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v7, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/server/displayeffect/SmartHardLightModeController;->configure(Z)V

    .line 137
    :cond_0
    iget v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSetting:I

    .line 138
    .local v1, "oldScreenBrightnessSetting":I
    const-string v4, "screen_brightness"

    iget v7, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingDefault:I

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSetting:I

    .line 141
    iget-boolean v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mInitSettings:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSetting:I

    if-eq v1, v4, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->screenBrightnessChange()V

    .line 146
    :cond_1
    iget v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessModeSetting:I

    .line 147
    .local v0, "oldScreenBrightnessModeSetting":I
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessModeSetting:I

    .line 151
    iget-boolean v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mInitSettings:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessModeSetting:I

    if-eq v0, v4, :cond_2

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessModeSetting:I

    if-ne v4, v5, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->autoBrightnessEnabledChange()V

    .line 156
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mInitSettings:Z

    .line 157
    return-void

    .end local v0    # "oldScreenBrightnessModeSetting":I
    .end local v1    # "oldScreenBrightnessSetting":I
    :cond_3
    move v4, v6

    .line 128
    goto :goto_0
.end method


# virtual methods
.method modeChange(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode change by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-boolean v0, v0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mModeChangeFlag:Z

    .line 202
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->smartHardLightModeEnabled()V

    .line 204
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    invoke-virtual {v0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->ExitSmartHardLight()V

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/displayeffect/DisplayEffectController;->modeChangeOther(I)V

    .line 212
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mModeChangeFlag:Z

    goto :goto_0
.end method

.method modeChangeOther(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 215
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 238
    :goto_0
    return-void

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-virtual {v0}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffect()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public systemReady()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 66
    new-instance v4, Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandler:Landroid/os/Handler;

    .line 70
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "toastText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mToast:Landroid/widget/Toast;

    .line 74
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 76
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingMaximum:I

    .line 78
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingDefault:I

    .line 81
    new-instance v4, Landroid/hardware/SystemSensorManager;

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    new-instance v4, Lcom/android/server/displayeffect/SmartHardLightModeController;

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/displayeffect/SmartHardLightModeController;-><init>(Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;

    invoke-direct {v5, p0, v10}, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;-><init>(Lcom/android/server/displayeffect/DisplayEffectController;Lcom/android/server/displayeffect/DisplayEffectController$1;)V

    iget-object v6, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    new-instance v4, Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;-><init>(Lcom/android/server/displayeffect/DisplayEffectController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    .line 93
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 95
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "smart_ultra_bright_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    invoke-virtual {v2, v4, v9, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    const-string v4, "screen_brightness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    invoke-virtual {v2, v4, v9, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    const-string v4, "display_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    invoke-virtual {v2, v4, v9, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    const-string v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mSettingsObserver:Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;

    invoke-virtual {v2, v4, v9, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectController;->updateSettings()V

    .line 109
    return-void
.end method

.method public updateSmartHardLightMode(Z)Z
    .locals 7
    .param p1, "enter"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 296
    if-eqz p1, :cond_2

    .line 297
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    const/4 v4, 0x4

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "result":I
    if-eq v0, v6, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    .line 326
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    const-string v3, "Enter Smart Ultra Bright Mode Failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v2

    .line 326
    goto :goto_0

    .line 308
    .end local v0    # "result":I
    :cond_2
    const/4 v0, -0x1

    .line 309
    .restart local v0    # "result":I
    iget-boolean v3, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mModeChangeFlag:Z

    if-nez v3, :cond_4

    .line 310
    iput-boolean v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mModeChangeFlag:Z

    .line 311
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    iget v4, v4, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v0

    .line 313
    if-eq v0, v6, :cond_3

    .line 314
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mDisplayEffectService:Lcom/android/server/displayeffect/DisplayEffectService;

    iget v2, v2, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v6}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromDisplayEffect(I)V

    goto :goto_0

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController;->TAG:Ljava/lang/String;

    const-string v3, "Out Smart Ultra Bright Mode Failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/displayeffect/DisplayEffectController;->mModeChangeFlag:Z

    goto :goto_1
.end method
