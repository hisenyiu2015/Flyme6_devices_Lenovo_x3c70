.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

.field final synthetic val$this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/os/Looper;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1324
    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1327
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1349
    const-string v2, "PacketKeepalive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_0
    return-void

    .line 1329
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1331
    .local v1, "error":I
    if-nez v1, :cond_1

    .line 1332
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$300(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1333
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # setter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1334
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PacketKeepalive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in keepalive callback("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v3, 0x0

    # setter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v2, v3}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1337
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1338
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1342
    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    invoke-static {v2}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$400(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1327
    nop

    :pswitch_data_0
    .packed-switch 0x8100d
        :pswitch_0
    .end packed-switch
.end method
