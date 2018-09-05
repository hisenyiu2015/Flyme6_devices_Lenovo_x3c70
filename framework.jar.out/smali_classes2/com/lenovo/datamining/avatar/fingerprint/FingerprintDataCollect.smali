.class public Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;
.super Ljava/lang/Object;
.source "FingerprintDataCollect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fingerprintEnroll(III)V
    .locals 4
    .param p0, "pressnum"    # I
    .param p1, "isfail"    # I
    .param p2, "fingernum"    # I

    .prologue
    const/4 v3, 0x1

    .line 21
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 22
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "pressnum"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 23
    const/4 v1, 0x2

    const-string v2, "isfail"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 24
    const/4 v1, 0x3

    const-string v2, "fingernum"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 25
    const-string v1, "A603"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->notifyFingerprintEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 26
    return-void
.end method

.method public static fingerprintIdentify(III)V
    .locals 4
    .param p0, "isfail"    # I
    .param p1, "time"    # I
    .param p2, "scene"    # I

    .prologue
    const/4 v3, 0x1

    .line 29
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 30
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "isfail"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 31
    const/4 v1, 0x2

    const-string v2, "time"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 32
    const/4 v1, 0x3

    const-string v2, "scene"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 33
    const-string v1, "A604"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->notifyFingerprintEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 34
    return-void
.end method

.method public static fingerprintIdentify(IIII)V
    .locals 4
    .param p0, "isfail"    # I
    .param p1, "time"    # I
    .param p2, "scene"    # I
    .param p3, "quality"    # I

    .prologue
    const/4 v3, 0x1

    .line 37
    new-instance v0, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    invoke-direct {v0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;-><init>()V

    .line 38
    .local v0, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    const-string v1, "isfail"

    invoke-virtual {v0, v3, v1, p0}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 39
    const/4 v1, 0x2

    const-string v2, "time"

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 40
    const/4 v1, 0x3

    const-string v2, "scene"

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 41
    const/4 v1, 0x4

    const-string v2, "quality"

    invoke-virtual {v0, v1, v2, p3}, Lcom/lenovo/datamining/avatar/api/LocalParamMap;->put(ILjava/lang/String;I)Z

    .line 42
    const-string v1, "A604"

    const-string v2, ""

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/datamining/avatar/fingerprint/FingerprintDataCollect;->notifyFingerprintEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 43
    return-void
.end method

.method private static notifyFingerprintEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "localParams"    # Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/app/IActivityManager;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
