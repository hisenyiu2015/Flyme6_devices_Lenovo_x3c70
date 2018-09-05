.class Lcom/android/server/displayeffect/SmartHardLightModeController$1;
.super Ljava/lang/Object;
.source "SmartHardLightModeController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/SmartHardLightModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;


# direct methods
.method constructor <init>(Lcom/android/server/displayeffect/SmartHardLightModeController;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$1;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$1;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$100(Lcom/android/server/displayeffect/SmartHardLightModeController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 201
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v1, v4

    .line 202
    .local v0, "lux":F
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$1;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSensor lux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$1;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # invokes: Lcom/android/server/displayeffect/SmartHardLightModeController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$300(Lcom/android/server/displayeffect/SmartHardLightModeController;JF)V

    .line 205
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_0
    return-void
.end method
