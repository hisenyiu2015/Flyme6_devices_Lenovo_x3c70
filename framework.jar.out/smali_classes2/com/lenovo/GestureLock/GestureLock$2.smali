.class Lcom/lenovo/GestureLock/GestureLock$2;
.super Ljava/lang/Object;
.source "GestureLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/GestureLock/GestureLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/GestureLock/GestureLock;


# direct methods
.method constructor <init>(Lcom/lenovo/GestureLock/GestureLock;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 148
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    .line 127
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    float-to-int v2, v3

    .line 128
    .local v2, "value":I
    const-string v3, "GestureLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gesture value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mGestureSensorEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lenovo/GestureLock/GestureLock;->mGestureSensorEnable:Z
    invoke-static {}, Lcom/lenovo/GestureLock/GestureLock;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eq v2, v6, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v3, v3, Lcom/lenovo/GestureLock/GestureLock;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v3, v3, Lcom/lenovo/GestureLock/GestureLock;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    .line 132
    .local v1, "isRinging":Z
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v3, v3, Lcom/lenovo/GestureLock/GestureLock;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 133
    .local v0, "isInCall":Z
    const-string v3, "GestureLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRinging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v3, "GestureLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 136
    :cond_1
    const-string v3, "GestureLock"

    const-string v4, "gesture lock break because of ringing or incall"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "isInCall":Z
    .end local v1    # "isRinging":Z
    :cond_2
    :goto_0
    return-void

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v3, v3, Lcom/lenovo/GestureLock/GestureLock;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 141
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    iget-object v3, v3, Lcom/lenovo/GestureLock/GestureLock;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 142
    iget-object v3, p0, Lcom/lenovo/GestureLock/GestureLock$2;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    invoke-virtual {v3}, Lcom/lenovo/GestureLock/GestureLock;->disable()V

    goto :goto_0
.end method
