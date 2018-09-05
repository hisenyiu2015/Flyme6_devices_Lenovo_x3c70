.class public Lcom/lenovo/datamining/avatar/keyevent/keyEventCollect;
.super Lcom/lenovo/datamining/avatar/api/ActionDefinitions;
.source "keyEventCollect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/datamining/avatar/api/ActionDefinitions;-><init>()V

    return-void
.end method

.method public static keyEventCollect(I)V
    .locals 7
    .param p0, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 15
    const-string v4, "true"

    const-string v5, "persist.sys.backgrounddata"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 18
    .local v2, "isCollectOn":Z
    if-nez v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance v3, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 24
    .local v3, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const/4 v0, 0x0

    .line 25
    .local v0, "action":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 28
    :sswitch_0
    const-string v4, "num"

    const-string v5, "1"

    invoke-virtual {v3, v6, v4, v5}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 29
    const-string v0, "A701"

    .line 35
    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x1

    invoke-interface {v4, v0, v5, v6, v3}, Landroid/app/IActivityManager;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 25
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method
