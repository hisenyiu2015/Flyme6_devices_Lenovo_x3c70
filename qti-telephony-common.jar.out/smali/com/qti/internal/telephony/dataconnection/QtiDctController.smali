.class public Lcom/qti/internal/telephony/dataconnection/QtiDctController;
.super Lcom/android/internal/telephony/dataconnection/DctController;
.source "QtiDctController.java"


# static fields
.field private static final DCTCONTROLLER_EVENT_BASE:I = 0xc8

.field private static final EVENT_CONNECT_RESPONSE:I = 0xc9


# instance fields
.field private final ACTIVE:I

.field private final ALLOW_DATA_RETRY_DELAY:I

.field private final DO_CONNECT_ON_PHONEID:I

.field private final DO_DISCONNECT_ON_ACTIVE_PHONEID:I

.field private final DO_DISCONNECT_ON_PHONEID:I

.field private final FALSE:I

.field private final INACTIVE:I

.field private final MANUAL_DDS_SWITCH_DSDA:I

.field private final MANUAL_DDS_SWITCH_DSDS:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private final MODEM_DATA_CAPABILITY_UNKNOWN:I

.field private final MODEM_DUAL_DATA_CAPABLE:I

.field private final MODEM_SINGLE_DATA_CAPABLE:I

.field private final NOP:I

.field private final ON_DEMAND_REQ_DSDA:I

.field private final ON_DEMAND_REQ_DSDS:I

.field private final OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

.field private final TRUE:I

.field private mAllowDataFailure:[I

.field private final mDcSwitchStateMachineActionTable:[[I

.field private final mDdsSwitchActionTable:[[I

.field private mPreviousPhoneId:I


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 6
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 37
    const/16 v0, 0x7530

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ALLOW_DATA_RETRY_DELAY:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MAX_CONNECT_FAILURE_COUNT:I

    .line 40
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DATA_CAPABILITY_UNKNOWN:I

    .line 41
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_SINGLE_DATA_CAPABLE:I

    .line 42
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MODEM_DUAL_DATA_CAPABLE:I

    .line 43
    const-string v0, "persist.radio.msim.data.cap"

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

    .line 45
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDS:I

    .line 46
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->MANUAL_DDS_SWITCH_DSDA:I

    .line 47
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDS:I

    .line 48
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ON_DEMAND_REQ_DSDA:I

    .line 50
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_CONNECT_ON_PHONEID:I

    .line 51
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_PHONEID:I

    .line 52
    iput v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->DO_DISCONNECT_ON_ACTIVE_PHONEID:I

    .line 53
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->NOP:I

    .line 74
    new-array v0, v1, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    .line 98
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    .line 104
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->TRUE:I

    .line 105
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->FALSE:I

    .line 107
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->INACTIVE:I

    .line 108
    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->ACTIVE:I

    .line 110
    iput v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 115
    const-string v0, "QtiDctController"

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->LOG_TAG:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    .line 117
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 98
    :array_3
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V

    return-void
.end method

.method private doConnect(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doConnect phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doConnect: phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not provisioned, bail out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 165
    .local v0, "ddsSubId":I
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 170
    .local v2, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    if-ne v3, p1, :cond_2

    iget v3, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 172
    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 173
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v3, v3, p1

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)I

    goto :goto_0
.end method

.method private doDisconnectAll(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDisconnectAll phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 217
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    .line 218
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 229
    const-string v1, "Active phone is CDMA, fake DETACH"

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    .line 232
    :cond_0
    return-void
.end method

.method private doDsdaCleanUp(I)V
    .locals 7
    .param p1, "activePhoneId"    # I

    .prologue
    .line 190
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "anyRequestExecutingOnOtherSub":Z
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v2

    .line 194
    .local v2, "nonActivePhoneId":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 196
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 199
    .local v3, "phoneId":I
    if-ne v3, v2, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 205
    .end local v3    # "phoneId":I
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 207
    iget-object v5, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v5

    if-nez v5, :cond_2

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDsdaCleanup on phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    .line 212
    :cond_2
    return-void
.end method

.method private enforceDds(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 385
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 389
    :cond_0
    return-void
.end method

.method private getConnectFailureCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method private getDcSwitchStateMachineActivityState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDetachingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getNonActivePhoneId(I)I
    .locals 2
    .param p1, "activePhoneId"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v1, :cond_1

    .line 182
    if-eq v0, p1, :cond_0

    .line 186
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 181
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    .line 393
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 394
    .local v1, "defaultDds":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 395
    .local v0, "ddsPhoneId":I
    if-eq p1, v0, :cond_1

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enforce DDS setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    .line 410
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->reset()V

    .line 411
    return-void

    .line 400
    :cond_1
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DDS switch retries exhausted, reverting back DDS to phoneId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 403
    iget v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->enforceDds(I)V

    goto :goto_0
.end method

.method private handleDdsSwitch(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDdsSwitchActionTable:[[I

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, p1

    .line 268
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSimultaneousReq(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getNonActivePhoneId(I)I

    move-result v0

    .line 321
    .local v0, "otherPhoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processAction(I)V

    .line 325
    return-void
.end method

.method private identifyUsecase(IIII)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "activePhoneId"    # I
    .param p3, "ddsPhoneId"    # I
    .param p4, "maxDataCap"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddsPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxDataCap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 240
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-ne p2, p1, :cond_2

    .line 241
    :cond_0
    if-ne p4, v1, :cond_1

    .line 242
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 262
    :goto_0
    return v0

    .line 245
    :cond_1
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_2
    if-ne p4, v1, :cond_4

    .line 249
    const-string v1, "Modem is DSDA-Data capable."

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 251
    if-ne p1, p3, :cond_3

    .line 252
    const-string v0, "DDS switch request identified"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 253
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_3
    const-string v1, "Ondemand PS request on non-dds identified"

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_4
    const-string v0, "Modem is DSDS-Data capable."

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 261
    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPreviousPhoneId:I

    move v0, v1

    .line 262
    goto :goto_0
.end method

.method private incConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 377
    return-void
.end method

.method private isReqPresentForPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 286
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 289
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectExecPhone requestInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 290
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 291
    const/4 v2, 0x0

    .line 294
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 443
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 446
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 448
    .local v0, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 450
    return v0

    .line 446
    .end local v0    # "status":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 120
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new QtiDctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onConnectResponse(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "asyncResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 414
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->incConnectFailureCount(I)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data failed on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failureCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getConnectFailureCount(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleConnectMaxFailure(I)V

    .line 440
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v0, "Scheduling retry connect/allow_data"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;

    invoke-direct {v0, p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;-><init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow_data success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->resetConnectFailureCount(I)V

    goto :goto_0
.end method

.method private processAction(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getDcSwitchStateMachineActivityState(I)I

    move-result v2

    .line 300
    .local v2, "state":I
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isReqPresentForPhoneId(I)I

    move-result v1

    .line 302
    .local v1, "anyReqPresent":I
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchStateMachineActionTable:[[I

    aget-object v3, v3, v2

    aget v0, v3, v1

    .line 304
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doConnect(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->doDisconnectAll(I)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 373
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->handleMessage(Landroid/os/Message;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v1, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onConnectResponse(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method public informDdsToRil(I)V
    .locals 5
    .param p1, "ddsSubId"    # I

    .prologue
    .line 457
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 459
    .local v0, "ddsPhoneId":I
    if-ltz v0, :cond_2

    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v0, v3, :cond_2

    .line 460
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    .line 461
    .local v2, "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    const-string v3, "Oem hook service is not ready yet"

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 473
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mPhoneNum:I

    if-ge v1, v3, :cond_0

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil rild= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DDS phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2, v0, v1}, Lcom/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    .end local v1    # "i":I
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InformDdsToRil dds phoneId is invalid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onProcessRequest()V
    .locals 9

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I

    move-result v5

    .line 331
    .local v5, "phoneId":I
    const/4 v0, -0x1

    .line 332
    .local v0, "activePhoneId":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 333
    .local v2, "defaultDds":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 334
    .local v1, "ddsPhoneId":I
    const-string v7, "persist.radio.msim.data.cap"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "maxDataCap":I
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onProcessRequest: ddsSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 343
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v7

    if-nez v7, :cond_2

    .line 344
    move v0, v3

    .line 349
    :cond_1
    invoke-direct {p0, v5, v0, v1, v4}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->identifyUsecase(IIII)I

    move-result v6

    .line 351
    .local v6, "usecase":I
    packed-switch v6, :pswitch_data_0

    .line 367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled usecase = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v6    # "usecase":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 353
    .restart local v6    # "usecase":I
    :pswitch_0
    const-string v7, "MANUAL_DDS_SWITCH_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 355
    :pswitch_1
    const-string v7, "MANUAL_DDS_SWITCH_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 357
    :pswitch_2
    const-string v7, "ON_DEMAND_REQ_DSDS"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v5, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleDdsSwitch(II)V

    goto :goto_0

    .line 362
    :pswitch_3
    const-string v7, "ON_DEMAND_REQ_DSDA"

    invoke-static {v7}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->handleSimultaneousReq(I)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onSettingsChanged()V
    .locals 4

    .prologue
    .line 130
    const-string v2, "onSettingsChanged"

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 133
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 134
    .local v0, "ddsPhoneId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->isUiccProvisioned(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 137
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChanged()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddsSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
