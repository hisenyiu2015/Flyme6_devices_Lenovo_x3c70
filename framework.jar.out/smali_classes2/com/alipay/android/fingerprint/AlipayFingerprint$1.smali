.class Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Ljava/lang/Object;
.source "AlipayFingerprint.java"

# interfaces
.implements Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(III)V
    .locals 11
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    const/16 v10, 0x66

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    const-string v1, "WatchdataFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlipayFingerprint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "WatchdataFP-fingerprint-result %d id = %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eq p1, v10, :cond_1

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    .line 171
    :try_start_0
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Lcom/zui/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Lcom/zui/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100()Lcom/zui/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->wdidentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    iget-object v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v4, v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    invoke-virtual {v1, v2, v3, v4, p3}, Lcom/zui/fingerprint/FingerprintManager;->startIdentify(Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    :try_end_0
    .catch Lcom/zui/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-nez v1, :cond_2

    .line 190
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint ---------ali identifyListener is null ----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lcom/zui/fingerprint/FingerprintException;
    invoke-virtual {v0}, Lcom/zui/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Lcom/zui/fingerprint/FingerprintException;
    :cond_1
    if-ne p1, v10, :cond_0

    .line 185
    const-string v1, "WatchdataFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlipayFingerprint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MainActivity identifyListener onResult %d id = %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_2
    const-string v1, "WatchdataFP"

    const-string v2, "AlipayFingerprint ---------ali identifyListener OK----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_1
.end method

.method public onStatus(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 155
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->startMili:J
    invoke-static {v0, v2, v3}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$002(Lcom/alipay/android/fingerprint/AlipayFingerprint;J)J

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 160
    const-string v0, "WatchdataFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlipayFingerprint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MainActivity identifyListener onStatus %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method
