.class public Lcom/android/server/fingerprint/FingerprintMediator;
.super Ljava/lang/Object;
.source "FingerprintMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintExtensionService"


# instance fields
.field private mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

.field private mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 2
    .param p1, "impl"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    .line 15
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    .line 18
    if-nez p1, :cond_0

    .line 20
    const-string v0, "FingerprintExtensionService"

    const-string v1, "FingerprintService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    .line 23
    return-void
.end method


# virtual methods
.method public OnFPRelease()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    invoke-interface {v0}, Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;->onFPRelease()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "FingerprintExtensionService"

    const-string v1, "OnFPRelease() OnFPUsedListener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnFPUsing()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    invoke-interface {v0}, Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;->onFPUsing()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "FingerprintExtensionService"

    const-string v1, "OnFPUsing() OnFPUsedListener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetOnFPUsedListener(Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 29
    const-string v0, "FingerprintExtensionService"

    const-string v1, "OnFPUsedListener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mOnFPUsedListener:Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;

    .line 32
    return-void
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    return-object v0
.end method

.method public getFpName(II)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "id"    # I

    .prologue
    .line 85
    const-string v2, "FingerprintExtensionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFpName enter id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v2, "FingerprintExtensionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFpName enter userId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "fps":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v0, :cond_1

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .end local v1    # "i":I
    :goto_1
    return-object v2

    .line 90
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_1
    const-string v2, "FingerprintExtensionService"

    const-string v3, "getFpName getEnrolledFingerprints return null "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public getIds(I)[I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 65
    const-string v3, "FingerprintExtensionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIds enter userId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 67
    .local v2, "ids":[I
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintMediator;->mFingerprintService:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "fps":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    aput v3, v2, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    const-string v3, "FingerprintExtensionService"

    const-string v4, "getIds getEnrolledFingerprints return null "

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return-object v2
.end method
