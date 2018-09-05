.class public Lcom/android/server/fingerprint/ExtensionFingerprintService;
.super Lcom/android/server/SystemService;
.source "ExtensionFingerprintService.java"


# static fields
.field private static ServiceName:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FingerprintExtensionService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

.field private mServiceImpl:Lcom/android/server/fingerprint/ServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "ExtensionFingerprint"

    sput-object v0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mContext:Landroid/content/Context;

    .line 17
    const-string v0, "FingerprintExtensionService"

    const-string v1, "ExtensionFingerprint new"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/server/fingerprint/ServiceImpl;

    iget-object v1, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/ServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mServiceImpl:Lcom/android/server/fingerprint/ServiceImpl;

    .line 44
    const-string v0, "ExtensionFingerprint"

    iget-object v1, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mServiceImpl:Lcom/android/server/fingerprint/ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ExtensionFingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    const-string v0, "FingerprintExtensionService"

    const-string v1, "ExtensionFingerprint onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public setMediator(Lcom/android/server/fingerprint/FingerprintMediator;)V
    .locals 2
    .param p1, "mediator"    # Lcom/android/server/fingerprint/FingerprintMediator;

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 24
    const-string v0, "FingerprintExtensionService"

    const-string v1, "setMediator mediator is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    .line 29
    iget-object v0, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mServiceImpl:Lcom/android/server/fingerprint/ServiceImpl;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mServiceImpl:Lcom/android/server/fingerprint/ServiceImpl;

    iget-object v1, p0, Lcom/android/server/fingerprint/ExtensionFingerprintService;->mFingerprintMediator:Lcom/android/server/fingerprint/FingerprintMediator;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ServiceImpl;->setMediator(Lcom/android/server/fingerprint/FingerprintMediator;)V

    .line 32
    const-string v0, "FingerprintExtensionService"

    const-string v1, "setMediator mediator"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "FingerprintExtensionService"

    const-string v1, "mServiceImpl is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
