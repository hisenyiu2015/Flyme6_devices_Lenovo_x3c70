.class Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathHandler"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/zui/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;->mBinder:Landroid/os/IBinder;

    .line 274
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 280
    const-string v0, "service binderDied %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    return-void
.end method
