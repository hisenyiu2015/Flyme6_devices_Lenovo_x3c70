.class public Lcom/qti/internal/telephony/UiccCardProvisioner;
.super Landroid/os/Handler;
.source "UiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_MANUAL_PROVISION_DONE:I = 0x3

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x4

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I = 0x0

.field private static final VDBG:Z = true

.field private static final mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mContext:Landroid/content/Context;

.field private mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 74
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Invoking constructor, no of phones = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 132
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    .line 133
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 134
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 135
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 137
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    new-instance v2, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v2, v1, v0

    .line 138
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 141
    sget-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    invoke-static {p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 144
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, "retVal":Z
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 316
    sget-object v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 209
    :cond_0
    const-string v3, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 213
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 216
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 217
    .local v2, "slotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x80404

    if-ne v1, v3, :cond_1

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    goto :goto_0
.end method

.method private isFlexMapInProgress()Z
    .locals 4

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "retVal":Z
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 447
    .local v0, "rcController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 452
    :cond_0
    return v1
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 440
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 468
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v0, "UiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .prologue
    .line 226
    const-string v1, "queryAllUiccProvisioninfo"

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 230
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, -0x1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUiccProvisionInfo: phoneid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oem hook service is not ready yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v4, p1

    .line 242
    .local v2, "oldStatus":Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 244
    .local v1, "oldIccId":Ljava/lang/String;
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    move-result-object v3

    .line 245
    .local v3, "subStatus":Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v3}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {v3}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 247
    sget-object v5, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v5

    .line 248
    :try_start_0
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aput-object v3, v4, p1

    .line 249
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 255
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-nez v4, :cond_3

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add subInfo record, iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 261
    :cond_3
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 263
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private updateIccAvailability(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, -0x2

    .line 276
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot Index!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 281
    .local v2, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 282
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    .line 285
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccAvailability, old card state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccAvailability, new card state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v3, p1

    .line 290
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 291
    .local v0, "currentState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccAvailability, currentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simIccId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_4

    .line 296
    :cond_3
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryUiccProvisionInfo(I)V

    goto/16 :goto_0

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_0

    .line 298
    sget-object v4, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 301
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 302
    iget-object v3, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, p1

    .line 303
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 353
    const-string v2, "activateUiccCard"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    const/4 v0, -0x2

    .line 381
    :goto_0
    return v0

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already activated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 366
    if-nez v1, :cond_2

    .line 367
    const/4 v0, -0x1

    .line 375
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 376
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 369
    :cond_2
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 371
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 371
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 378
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public deactivateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deactivateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 387
    const-string v2, "deactivateUiccCard"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    const/4 v0, -0x2

    .line 414
    :goto_0
    return v0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] already in deactive state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 399
    if-nez v1, :cond_2

    .line 400
    const/4 v0, -0x1

    .line 408
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deactivation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 409
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 402
    :cond_2
    sget-object v3, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 404
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 411
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 322
    const/4 v0, -0x1

    .line 325
    .local v0, "currentStatus":I
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    const/4 v0, 0x1

    .line 330
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 332
    return v0

    .line 327
    :cond_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    goto :goto_0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 336
    const/4 v0, -0x1

    .line 339
    .local v0, "userPref":I
    sget v1, Lcom/qti/internal/telephony/UiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const/4 v0, 0x1

    .line 346
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getUiccCardProvisioningUserPreference pref["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 347
    return v0

    .line 341
    :cond_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget-object v2, Lcom/qti/internal/telephony/UiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mProvisionStatus:[Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v0

    .line 344
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: hit default case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    const-string v4, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 158
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_0

    .line 160
    :cond_1
    const-string v4, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 161
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->updateIccAvailability(I)V

    .line 162
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_0

    .line 166
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v4, "EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 169
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 170
    .local v1, "isServiceReady":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->queryAllUiccProvisionInfo()V

    goto :goto_0

    .line 175
    .end local v1    # "isServiceReady":Z
    :cond_2
    const-string v4, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v4, "EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 182
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 183
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 185
    :cond_3
    const-string v4, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MANUAL_PROVISION_STATUS_CHANGED, pref["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 191
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 192
    .local v3, "slotId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 193
    .local v2, "newProvisionState":I
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 197
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Lcom/qti/internal/telephony/UiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/qti/internal/telephony/UiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
