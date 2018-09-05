.class Lcom/android/server/displayeffect/SmartHardLightModeController;
.super Ljava/lang/Object;
.source "SmartHardLightModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;,
        Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;,
        Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x3e8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final CHANGE_MODE_HIGH_LUX:I = 0x3a98

.field private static final CHANGE_MODE_LOW_LUX:I = 0x7d0

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x5dcL

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x1

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLuxThreshold:F

.field private final mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mNowExitSmartUltraBrightMode:Z

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSmartUltraBrightIntent:Landroid/content/Intent;

.field public mSmartUltraBrightModeTurnOn:Z


# direct methods
.method public constructor <init>(Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 5
    .param p1, "callbacks"    # Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "SmartHardLightModeController"

    iput-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "len.intent.action.DISPLAY_EFFECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightIntent:Landroid/content/Intent;

    .line 196
    new-instance v1, Lcom/android/server/displayeffect/SmartHardLightModeController$1;

    invoke-direct {v1, p0}, Lcom/android/server/displayeffect/SmartHardLightModeController$1;-><init>(Lcom/android/server/displayeffect/SmartHardLightModeController;)V

    iput-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 136
    iput-object p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    .line 137
    iput-object p2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;-><init>(Lcom/android/server/displayeffect/SmartHardLightModeController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    .line 140
    iput-object p4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 141
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensor:Landroid/hardware/Sensor;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.launcher.intent.ACTION.BLADEEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;

    invoke-direct {v2, p0, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;-><init>(Lcom/android/server/displayeffect/SmartHardLightModeController;Lcom/android/server/displayeffect/SmartHardLightModeController$1;)V

    iget-object v3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/displayeffect/SmartHardLightModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/displayeffect/SmartHardLightModeController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/displayeffect/SmartHardLightModeController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/displayeffect/SmartHardLightModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/displayeffect/SmartHardLightModeController;)Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v6, 0x1

    .line 222
    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLightSamples:I

    .line 223
    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLightSamples:I

    if-ne v2, v6, :cond_0

    .line 224
    iput p3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    .line 225
    iput p3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    .line 243
    :goto_0
    iput p3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLux:F

    .line 244
    iput-wide p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLuxTime:J

    .line 245
    return-void

    .line 227
    :cond_0
    iget-wide v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 228
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    .line 231
    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    .line 234
    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    .line 235
    iput-boolean v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mNowExitSmartUltraBrightMode:Z

    goto :goto_0

    .line 238
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mNowExitSmartUltraBrightMode:Z

    goto :goto_0
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 401
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 403
    iget-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->applyLightSensorMeasurement(JF)V

    .line 411
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/displayeffect/SmartHardLightModeController;->updateAmbientLux(J)V

    .line 413
    .end local v0    # "time":J
    :cond_2
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->removeMessages(I)V

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/displayeffect/SmartHardLightModeController;->applyLightSensorMeasurement(JF)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->updateAmbientLux(J)V

    .line 218
    return-void
.end method

.method private lSensorUpdateSmartHardLightMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSmartUltraBrightModeTurnOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    const v1, 0x466a6000    # 15000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    const-string v1, "enter_ultra_bright_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    invoke-interface {v0, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;->updateSmartHardLightMode(Z)Z

    .line 156
    iput-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    const-string v1, "exit_ultra_bright_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    invoke-interface {v0, v3}, Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;->updateSmartHardLightMode(Z)Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 248
    iput p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    .line 249
    iget v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    .line 251
    iget v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    .line 253
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLightSensorEnabled enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    if-nez v2, :cond_1

    .line 177
    iput-boolean v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnableTime:J

    .line 179
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0xf4240

    iget-object v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 193
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_1

    .line 186
    iput-boolean v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLuxValid:Z

    .line 188
    iput v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLightSamples:I

    .line 189
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method private updateAmbientLux(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 259
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLuxValid:Z

    if-nez v4, :cond_5

    .line 260
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnableTime:J

    add-long v2, v4, v6

    .line 262
    .local v2, "timeWhenSensorWarmedUp":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v4, v8, v2, v3}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 396
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local v2    # "timeWhenSensorWarmedUp":J
    :cond_1
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController;->setAmbientLux(F)V

    .line 268
    iput-boolean v8, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLuxValid:Z

    .line 269
    iput v9, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    .line 270
    iput-wide p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    .line 271
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 272
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->lSensorUpdateSmartHardLightMode()V

    .line 391
    .end local v2    # "timeWhenSensorWarmedUp":J
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 393
    :cond_4
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    const-wide/16 v6, 0x7d0

    add-long/2addr v6, p1

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 281
    :cond_5
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 284
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_6

    .line 285
    iput v8, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    .line 286
    iput-wide p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    .line 287
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 288
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 1000 ms: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    iget-wide v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    const-wide/16 v6, 0x3e8

    add-long v0, v4, v6

    .line 301
    .local v0, "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_7

    .line 302
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v4, v8, v0, v1}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 306
    :cond_7
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-direct {p0, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController;->setAmbientLux(F)V

    .line 307
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 308
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_8
    invoke-direct {p0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->lSensorUpdateSmartHardLightMode()V

    goto/16 :goto_1

    .line 319
    .end local v0    # "debounceTime":J
    :cond_9
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 322
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_a

    .line 323
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    .line 324
    iput-wide p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    .line 325
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 326
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 1500 ms: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_a
    iget-wide v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    const-wide/16 v6, 0x5dc

    add-long v0, v4, v6

    .line 339
    .restart local v0    # "debounceTime":J
    cmp-long v4, p1, v0

    if-gez v4, :cond_b

    .line 340
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    invoke-virtual {v4, v8, v0, v1}, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 347
    :cond_b
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController;->setAmbientLux(F)V

    .line 350
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mNowExitSmartUltraBrightMode:Z

    if-eqz v4, :cond_c

    .line 351
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    .line 352
    iput-boolean v9, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mNowExitSmartUltraBrightMode:Z

    .line 353
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    const-string v5, "Now Exit Smart Ultra BrightMode Lux Value is 0."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_c
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 356
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_d
    invoke-direct {p0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->lSensorUpdateSmartHardLightMode()V

    goto/16 :goto_1

    .line 366
    .end local v0    # "debounceTime":J
    :cond_e
    iget v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_3

    .line 368
    iput v9, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxDirection:I

    .line 369
    iput-wide p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDebounceLuxTime:J

    .line 370
    iget-boolean v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 371
    iget-object v4, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: mBrighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mBrighteningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDarkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mDarkeningLuxThreshold:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public ExitSmartHardLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;->updateSmartHardLightMode(Z)Z

    .line 132
    iput-boolean v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    .line 133
    return-void
.end method

.method public configure(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/SmartHardLightModeController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 171
    .local v0, "changed":Z
    return-void
.end method

.method sendBroadcastToLauncher(Ljava/lang/String;)V
    .locals 9
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastToLauncher state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightIntent:Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/displayeffect/SmartHardLightModeController;->mHandler:Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 441
    return-void
.end method
