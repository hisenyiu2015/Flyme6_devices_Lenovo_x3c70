.class public interface abstract Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEnrolListener"
.end annotation


# virtual methods
.method public abstract onProgress(Lcom/zui/fingerprint/FingerprintManager$GuidedData;I)V
.end method

.method public abstract onResult(III)V
.end method

.method public abstract onStatus(II)V
.end method
