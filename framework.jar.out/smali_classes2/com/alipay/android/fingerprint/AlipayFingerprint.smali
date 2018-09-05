.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# static fields
.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static final mLockManager:Ljava/lang/Object;

.field private static mgr:Lcom/zui/fingerprint/FingerprintManager;


# instance fields
.field private identifyKPI:J

.field myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field myids:[I

.field mytimeout:I

.field private startMili:J

.field wdidentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 13
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 15
    iput-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J

    .line 16
    iput-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->identifyKPI:J

    .line 147
    iput-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 149
    iput-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 150
    new-instance v0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->wdidentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/fingerprint/AlipayFingerprint;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .param p1, "x1"    # J

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J

    return-wide p1
.end method

.method static synthetic access$100()Lcom/zui/fingerprint/FingerprintManager;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    return-object v0
.end method

.method public static open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint open enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v1, :cond_0

    .line 31
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint inst enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 35
    :cond_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 41
    :try_start_1
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------start------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/zui/fingerprint/FingerprintManager;->open()Lcom/zui/fingerprint/FingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    .line 43
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    .line 45
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------OK------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_1
    :try_start_2
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------finsh------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    return-object v1

    .line 49
    :cond_2
    :try_start_3
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------mgr =null------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1
    :try_end_3
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    :try_start_4
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 56
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------exception------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancel()I
    .locals 4

    .prologue
    .line 90
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint --------cancel----------cancel---------cancel-------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->cancel()I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 105
    const/4 v1, 0x0

    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFpIDs()[I
    .locals 5

    .prologue
    .line 111
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_0
    const-string v2, "WatchdataFP"

    const-string v4, "AlipayFingerprint ------------ getFpIDs--------start------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/zui/fingerprint/FingerprintManager;->getFpIds()[I

    move-result-object v1

    .line 117
    .local v1, "ids":[I
    const-string v2, "WatchdataFP"

    const-string v4, "AlipayFingerprint ------------ getFpIDs--------OK------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    monitor-exit v3

    .line 126
    .end local v1    # "ids":[I
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 124
    const-string v2, "WatchdataFP"

    const-string v4, "AlipayFingerprint ------------ getFpIDs--------null------"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v3

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 132
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ getFpName--------start------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/zui/fingerprint/FingerprintManager;->getFpName(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 144
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    .line 143
    monitor-exit v2

    .line 144
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 265
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 269
    :try_start_0
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ invokeTACmd--------start------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p2}, Lcom/zui/fingerprint/FingerprintManager;->invokeCmd([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 277
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 276
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()I
    .locals 4

    .prologue
    .line 68
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ open--------release------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/zui/fingerprint/FingerprintManager;->release()I

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 84
    const/4 v1, 0x0

    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 8
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    const/4 v7, 0x0

    .line 203
    iput p2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 204
    iput-object p3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 205
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 207
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mLockManager:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    const-string v1, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ startIdentify--------start------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->wdidentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/zui/fingerprint/FingerprintManager;->startIdentify(Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;I[II)I

    .line 213
    const-string v1, "WatchdataFP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlipayFingerprint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "sss"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 220
    return v7

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const-string v2, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ startFpManager--------start------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->getFpIDs()[I

    move-result-object v1

    .line 228
    .local v1, "ids":[I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, "i":Landroid/content/Intent;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 231
    const-string v2, "com.lenovo.keyguard.settings"

    const-string v3, "com.lenovo.keyguard.settings.fingerprint.FingerprintSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    const-string v2, "WatchdataFP"

    const-string v3, "AlipayFingerprint ------------ startFpManager--------OK------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v2

    .line 235
    :cond_0
    const-string v2, "com.lenovo.keyguard.settings"

    const-string v3, "com.lenovo.keyguard.settings.fingerprint.FingerprintEnrollIntroduction"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 3
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 248
    :try_start_0
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint ------------ updateTA--------start------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Lcom/zui/fingerprint/FingerprintManager;->updateTA(Ljava/lang/String;)V

    .line 250
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint ------------ updateTA--------OK------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint ------------ updateTA--------Exception------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    goto :goto_0
.end method
