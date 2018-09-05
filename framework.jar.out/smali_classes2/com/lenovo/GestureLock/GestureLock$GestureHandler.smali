.class final Lcom/lenovo/GestureLock/GestureLock$GestureHandler;
.super Landroid/os/Handler;
.source "GestureLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/GestureLock/GestureLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/GestureLock/GestureLock;


# direct methods
.method public constructor <init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 160
    :pswitch_0
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$202(Z)Z

    .line 161
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v0, v0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v1, v1, Lcom/lenovo/GestureLock/GestureLock;->mPSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v2, v2, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 162
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v0, v0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v1, v1, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # getter for: Lcom/lenovo/GestureLock/GestureLock;->mGestureSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/lenovo/GestureLock/GestureLock;->access$300(Lcom/lenovo/GestureLock/GestureLock;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 163
    const-string v0, "GestureLock"

    const-string v1, "Gesture&Camera enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :pswitch_1
    const/4 v0, 0x1

    # setter for: Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$202(Z)Z

    .line 167
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v0, v0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v1, v1, Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v0, v0, Lcom/lenovo/GestureLock/GestureLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v1, v1, Lcom/lenovo/GestureLock/GestureLock;->mPSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 169
    const-string v0, "GestureLock"

    const-string v1, "Gesture&Camera disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$GestureHandler;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # invokes: Lcom/lenovo/GestureLock/GestureLock;->init()V
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$400(Lcom/lenovo/GestureLock/GestureLock;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
