.class public Lcom/android/server/fingerprint/ServiceImpl;
.super Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;
.source "ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintExtensionService"

.field private static currentFile:Ljava/io/FileOutputStream;


# instance fields
.field private isNormalRelease:Z

.field private isTimeOutThreadRunning:Z

.field private mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

.field private mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

.field private mAlipayServiceClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

.field private mCallBack:Lcom/android/server/fingerprint/IAlipayFPCallBack;

.field private mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

.field private mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

.field private mClientCamera:Landroid/hardware/fingerprint/extension/IFingerprintClient;

.field private final mClientLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

.field private mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

.field private mInterruptClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

.field private mInterruptIds:[I

.field private mInterruptTimeout:J

.field private mService:Lcom/android/server/fingerprint/IAlipayFPService;

.field private mThread:Ljava/lang/Thread;

.field private mbScreenLock:Z

.field private mbSendCameraKeyRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mClientLock:Ljava/lang/Object;

    .line 34
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 35
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 36
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 37
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayServiceClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 39
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->isNormalRelease:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->isTimeOutThreadRunning:Z

    .line 45
    new-instance v0, Lcom/android/server/fingerprint/ServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/ServiceImpl$1;-><init>(Lcom/android/server/fingerprint/ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCallBack:Lcom/android/server/fingerprint/IAlipayFPCallBack;

    .line 65
    new-instance v0, Lcom/android/server/fingerprint/ServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/ServiceImpl$2;-><init>(Lcom/android/server/fingerprint/ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    .line 83
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .line 85
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mInterruptClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .line 86
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mInterruptIds:[I

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mInterruptTimeout:J

    .line 90
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mbScreenLock:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mbSendCameraKeyRequest:Z

    .line 416
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mClientCamera:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .line 95
    const-string v0, "FingerprintExtensionService"

    const-string v1, "ServiceImpl init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private GetService()Lcom/android/server/fingerprint/IAlipayFPService;
    .locals 4

    .prologue
    .line 145
    const-string v2, "FingerprintExtensionService"

    const-string v3, "======GetService enter"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintMediator;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    if-nez v2, :cond_0

    .line 148
    const-string v2, "FingerprintExtensionService"

    const-string v3, "getFingerprintDaemon failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x0

    .line 166
    :goto_0
    return-object v2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mService:Lcom/android/server/fingerprint/IAlipayFPService;

    if-nez v2, :cond_1

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v2, "alipayFPService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/android/server/fingerprint/AlipayFPServiceProxy;

    invoke-direct {v2, v1}, Lcom/android/server/fingerprint/AlipayFPServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mService:Lcom/android/server/fingerprint/IAlipayFPService;

    .line 156
    if-nez v1, :cond_2

    .line 157
    const-string v2, "FingerprintExtensionService"

    const-string v3, "======alipayFPService get failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "service":Landroid/os/IBinder;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mService:Lcom/android/server/fingerprint/IAlipayFPService;

    goto :goto_0

    .line 159
    .restart local v1    # "service":Landroid/os/IBinder;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-direct {v2, p0, v1}, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;-><init>(Lcom/android/server/fingerprint/ServiceImpl;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayServiceClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 160
    const-string v2, "FingerprintExtensionService"

    const-string v3, "======alipayFPService get success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private SyncIdsAndNames(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 284
    invoke-virtual {p0, v5, p1}, Lcom/android/server/fingerprint/ServiceImpl;->getIds(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)[I

    move-result-object v2

    .line 285
    .local v2, "ids":[I
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/String;

    .line 286
    .local v3, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 288
    aget v4, v2, v1

    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/fingerprint/ServiceImpl;->getFpName(Landroid/hardware/fingerprint/extension/IFingerprintClient;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/server/fingerprint/IAlipayFPService;->SyncIdsAndNames([I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 294
    const-string v4, "FingerprintExtensionService"

    const-string v5, "invokeCmd RemoteException"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/ServiceImpl;)Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/fingerprint/ServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/fingerprint/ServiceImpl;->isTimeOutThreadRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/IAlipayFPService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/ServiceImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v0

    return-object v0
.end method

.method private removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    .locals 3
    .param p1, "client"    # Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .prologue
    const/4 v2, 0x0

    .line 419
    if-nez p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->destroy()V

    .line 422
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    if-ne p1, v1, :cond_2

    .line 423
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    goto :goto_0

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    if-ne p1, v1, :cond_3

    .line 425
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 426
    iget-boolean v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->isNormalRelease:Z

    if-nez v1, :cond_0

    .line 427
    const-string v1, "FingerprintExtensionService"

    const-string v2, "alipay unNormal died"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/fingerprint/IAlipayFPService;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 432
    const-string v1, "FingerprintExtensionService"

    const-string v2, "release RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    if-ne p1, v1, :cond_4

    .line 438
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    goto :goto_0

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayServiceClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    if-ne p1, v1, :cond_5

    .line 442
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mService:Lcom/android/server/fingerprint/IAlipayFPService;

    .line 443
    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayServiceClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 444
    const-string v1, "FingerprintExtensionService"

    const-string v2, "AlipayService dead"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_5
    const-string v1, "FingerprintExtensionService"

    const-string v2, "client does not equal client"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runTimeoutThread()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/android/server/fingerprint/ServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/ServiceImpl$3;-><init>(Lcom/android/server/fingerprint/ServiceImpl;)V

    .line 140
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "fingerprint_timeout_thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mThread:Ljava/lang/Thread;

    .line 141
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 142
    return-void
.end method


# virtual methods
.method public cancel(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .prologue
    .line 241
    const-string v3, "FingerprintExtensionService"

    const-string v4, "ServiceImpl cancel enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v2, 0x64

    .line 243
    .local v2, "result":I
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 244
    .local v0, "alipayClient":Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v3, p1, :cond_1

    .line 245
    :cond_0
    const-string v3, "FingerprintExtensionService"

    const-string v4, "ServiceImpl cancel can not find alipayClient"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v3, 0x65

    .line 257
    :goto_0
    return v3

    .line 249
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/fingerprint/IAlipayFPService;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_1
    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    .line 256
    const-string v3, "FingerprintExtensionService"

    const-string v4, "ServiceImpl cancel end"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 257
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 252
    const-string v3, "FingerprintExtensionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v2, 0x65

    goto :goto_1
.end method

.method public execCommand(I[BI)V
    .locals 12
    .param p1, "action"    # I
    .param p2, "param"    # [B
    .param p3, "paramLen"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 407
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 351
    :pswitch_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    .line 352
    .local v4, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile destFile = %s exist, deleting"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 359
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    .line 360
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile destFile = %s ok, creating"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile error:%s, creating"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "filePath":Ljava/lang/String;
    :pswitch_2
    :try_start_1
    sget-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_0

    .line 372
    sget-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 373
    sget-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 374
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    .line 375
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile destFile = %s ok, closing"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 377
    :catch_1
    move-exception v3

    .line 378
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile error:%s, closing"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    .end local v3    # "e1":Ljava/io/IOException;
    :pswitch_3
    :try_start_2
    sget-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    if-nez v6, :cond_2

    .line 386
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile error, transcontent,currentfile is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 390
    :catch_2
    move-exception v3

    .line 391
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 392
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyFile error:%s, transcontent"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_2
    :try_start_3
    sget-object v6, Lcom/android/server/fingerprint/ServiceImpl;->currentFile:Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 397
    :pswitch_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 398
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v5, "targetDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 400
    const-string v6, "FingerprintExtensionService"

    const-string v7, "copyDir targetDir %s not exists, creating!"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getFpName(Landroid/hardware/fingerprint/extension/IFingerprintClient;II)Ljava/lang/String;
    .locals 3
    .param p1, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .param p2, "id"    # I
    .param p3, "userId"    # I

    .prologue
    .line 324
    const-string v0, ""

    .line 325
    .local v0, "name":Ljava/lang/String;
    const-string v1, "FingerprintExtensionService"

    const-string v2, "ServiceImpl getFpName enter"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/fingerprint/FingerprintMediator;->getFpName(II)Ljava/lang/String;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method public getIds(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)[I
    .locals 3
    .param p1, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .param p2, "userId"    # I

    .prologue
    .line 262
    const-string v0, "FingerprintExtensionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceImpl getIds enter userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "FingerprintExtensionService"

    const-string v1, "mFingerprintMediator is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintMediator;->getIds(I)[I

    move-result-object v0

    return-object v0
.end method

.method public invokeCmd([BI)[B
    .locals 5
    .param p1, "param"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 271
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 272
    .local v0, "bys":[B
    const-string v2, "FingerprintExtensionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceImpl invokeCmd enter userId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/ServiceImpl;->SyncIdsAndNames(I)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lcom/android/server/fingerprint/IAlipayFPService;->invokeTACmd(Landroid/content/Context;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 278
    const-string v2, "FingerprintExtensionService"

    const-string v3, "invokeCmd RemoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I
    .locals 9
    .param p1, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    .line 171
    const/16 v2, 0x65

    .line 172
    .local v2, "result":I
    if-nez p1, :cond_0

    .line 173
    const-string v4, "FingerprintExtensionService"

    const-string v5, "ServiceImpl client is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 204
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 176
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    const-string v4, "FingerprintExtensionService"

    const-string v5, "ServiceImpl open enter"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v4, p0, Lcom/android/server/fingerprint/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string v4, "FingerprintExtensionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call open is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v4, "com.alipay.security.mobile.authenticator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.uid.system:1000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/fingerprint/IAlipayFPService;->open()I

    move-result v2

    .line 186
    new-instance v4, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-interface {p1}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;-><init>(Lcom/android/server/fingerprint/ServiceImpl;Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 187
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/fingerprint/ServiceImpl;->isNormalRelease:Z

    .line 188
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->setAppType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v3, v2

    .line 204
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 189
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 191
    const-string v4, "FingerprintExtensionService"

    const-string v5, "open RemoteException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v4, "com.lenovo.scg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-interface {p1, v8}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->setAppType(I)V

    .line 198
    invoke-virtual {p0, v7}, Lcom/android/server/fingerprint/ServiceImpl;->sendCommand(I)I

    move-result v2

    .line 199
    if-ne v2, v8, :cond_2

    .line 201
    new-instance v4, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-interface {p1}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;-><init>(Lcom/android/server/fingerprint/ServiceImpl;Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    goto :goto_1
.end method

.method public release(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I
    .locals 6
    .param p1, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .prologue
    .line 209
    const-string v3, "FingerprintExtensionService"

    const-string v4, "ServiceImpl release enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v2, 0x65

    .line 211
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string v3, "FingerprintExtensionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call release is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v3, "com.alipay.security.mobile.authenticator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.uid.system:1000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/fingerprint/IAlipayFPService;->release()I

    move-result v2

    .line 220
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->isNormalRelease:Z

    .line 221
    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    return v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 224
    const-string v3, "FingerprintExtensionService"

    const-string v4, "release RemoteException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "com.lenovo.scg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    if-eqz v3, :cond_1

    .line 230
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/ServiceImpl;->sendCommand(I)I

    move-result v2

    .line 231
    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    goto :goto_0
.end method

.method public sendCommand(I)I
    .locals 5
    .param p1, "command"    # I

    .prologue
    .line 332
    const-string v2, "FingerprintExtensionService"

    const-string v3, "ServiceImpl sendCommand enter"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string v2, "FingerprintExtensionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call open is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/fingerprint/IAlipayFPService;->sendCommand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    const/16 v2, 0x64

    :goto_0
    return v2

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 340
    const-string v2, "FingerprintExtensionService"

    const-string v3, "open RemoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v2, 0x65

    goto :goto_0
.end method

.method public setCameraType(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)I
    .locals 3
    .param p1, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    const-string v0, "FingerprintExtensionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public setMediator(Lcom/android/server/fingerprint/FingerprintMediator;)V
    .locals 2
    .param p1, "mediator"    # Lcom/android/server/fingerprint/FingerprintMediator;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "FingerprintExtensionService"

    const-string v1, "setMediator mediator is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    .line 104
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl;->mFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintMediator;->SetOnFPUsedListener(Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;)V

    .line 105
    const-string v0, "FingerprintExtensionService"

    const-string v1, "setMediator mediator"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIdentify(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;[IJI)I
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .param p3, "ids"    # [I
    .param p4, "timeout"    # J
    .param p6, "groupId"    # I

    .prologue
    const/4 v6, 0x1

    .line 301
    const-string v2, "FingerprintExtensionService"

    const-string v3, "ServiceImpl startIdentify enter"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v1, 0x64

    .line 303
    .local v1, "result":I
    new-instance v2, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;-><init>(Lcom/android/server/fingerprint/ServiceImpl;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    .line 305
    :try_start_0
    iput-object p2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .line 306
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCallBack:Lcom/android/server/fingerprint/IAlipayFPCallBack;

    const/16 v3, 0x3ee

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/fingerprint/IAlipayFPCallBack;->onMessage(III)V

    .line 308
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/ServiceImpl;->mCallBack:Lcom/android/server/fingerprint/IAlipayFPCallBack;

    long-to-int v4, p4

    invoke-interface {v2, v3, p3, v4, p6}, Lcom/android/server/fingerprint/IAlipayFPService;->startIdentify(Lcom/android/server/fingerprint/IAlipayFPCallBack;[III)I

    .line 309
    iget-boolean v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->isTimeOutThreadRunning:Z

    if-ne v2, v6, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/ServiceImpl;->runTimeoutThread()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 316
    const-string v2, "FingerprintExtensionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdentify RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v1, 0x65

    goto :goto_0
.end method
