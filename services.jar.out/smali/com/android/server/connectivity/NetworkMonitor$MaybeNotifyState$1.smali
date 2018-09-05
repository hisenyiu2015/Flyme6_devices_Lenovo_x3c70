.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v1, "send CMD_CAPTIVE_PORTAL_RECHECK"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x2bf20

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->CAPTIVE_PORTAL_RECHECK_DELAY_MS:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2702(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 525
    return-void
.end method
