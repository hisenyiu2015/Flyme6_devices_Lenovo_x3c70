.class Lcom/android/server/fingerprint/FingerprintService$4$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onAuthenticated(JII[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$bigData:[I

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;JII[I)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$groupId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$bigData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$deviceId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$fingerId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$4$3;->val$bigData:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->handleAuthenticated(JII[I)V

    .line 868
    return-void
.end method
