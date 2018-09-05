.class Lcom/android/server/audio/AudioService$Parameter;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mDevice:I

.field public mIsUsb:Z

.field public mName:Ljava/lang/String;

.field public mState:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "state"    # I
    .param p3, "device"    # I
    .param p4, "isUsb"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/server/audio/AudioService$Parameter;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    iput p2, p0, Lcom/android/server/audio/AudioService$Parameter;->mState:I

    .line 1631
    iput p3, p0, Lcom/android/server/audio/AudioService$Parameter;->mDevice:I

    .line 1632
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$Parameter;->mIsUsb:Z

    .line 1633
    iput-object p5, p0, Lcom/android/server/audio/AudioService$Parameter;->mName:Ljava/lang/String;

    .line 1635
    iput-object p6, p0, Lcom/android/server/audio/AudioService$Parameter;->mAddress:Ljava/lang/String;

    .line 1637
    return-void
.end method
