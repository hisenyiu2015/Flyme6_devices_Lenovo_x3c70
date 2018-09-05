.class public Lcom/lenovo/GestureLock/GestureLock;
.super Ljava/lang/Object;
.source "GestureLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/GestureLock/GestureLock$GestureHandler;,
        Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MSG_DISABLE_GESTURE_FUNCTION:I = 0x1

.field private static final MSG_ENABLE_GESTURE_FUNCTION:I = 0x0

.field private static final MSG_INIT_GESTURE_FUNCTION:I = 0x2

.field private static final SENSOR_TYPE_BASE:I = 0x1fa2638

.field private static final TAG:Ljava/lang/String; = "GestureLock"

.field private static final TYPE_GESTURE:I = 0x1fa263b

.field private static mGestureAlertEnable:Z

.field private static mGestureSensorEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSensor:Landroid/hardware/Sensor;

.field mGestureSensorListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mPSensorListener:Landroid/hardware/SensorEventListener;

.field mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field mSensorEnabled:Z

.field mSensorManager:Landroid/hardware/SensorManager;

.field mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    .line 43
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    .line 32
    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 39
    iput-boolean v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 118
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$1;

    invoke-direct {v0, p0}, Lcom/lenovo/GestureLock/GestureLock$1;-><init>(Lcom/lenovo/GestureLock/GestureLock;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mPSensorListener:Landroid/hardware/SensorEventListener;

    .line 125
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$2;

    invoke-direct {v0, p0}, Lcom/lenovo/GestureLock/GestureLock$2;-><init>(Lcom/lenovo/GestureLock/GestureLock;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    .line 52
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GestureLock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;-><init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    .line 56
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendEmptyMessage(I)Z

    .line 57
    iput-boolean v2, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/GestureLock/GestureLock;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/GestureLock/GestureLock;->update()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/lenovo/GestureLock/GestureLock;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/GestureLock/GestureLock;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/GestureLock/GestureLock;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "GestureLock"

    const-string v1, "init Gesture function..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 63
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mVibrator:Landroid/os/Vibrator;

    .line 64
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 66
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa263b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;

    .line 67
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;-><init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    .line 69
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock;->mSettingsObserver:Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;

    invoke-virtual {v0}, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->observe()V

    .line 70
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 89
    const-string v1, "GestureLock"

    const-string v2, "in update"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "flip_lock_screen_data"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    .line 92
    const-string v0, "GestureLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in update mGestureAlertEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v0, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/GestureLock/GestureLock;->enable()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/GestureLock/GestureLock;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 116
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 101
    sget-boolean v1, Lcom/lenovo/GestureLock/GestureLock;->mGestureAlertEnable:Z

    if-eqz v1, :cond_0

    .line 102
    iget-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mHandler:Lcom/lenovo/GestureLock/GestureLock$GestureHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/GestureLock/GestureLock;->mSensorEnabled:Z

    .line 108
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
