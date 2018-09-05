.class Lcom/lenovo/GestureLock/GestureLock$1;
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
    .line 118
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock$1;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 120
    return-void
.end method
