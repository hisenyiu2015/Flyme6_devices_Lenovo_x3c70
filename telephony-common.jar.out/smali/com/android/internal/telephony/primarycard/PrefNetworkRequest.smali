.class public Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
.super Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
    }
.end annotation


# static fields
.field private static final EVENT_GET_PREF_NETWORK_DONE:I = 0x2

.field private static final EVENT_SET_PREF_NETWORK_DONE:I = 0x1

.field private static final EVENT_START_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "pref_network_request"

.field private static final sSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mBootup:Z

.field private final mCallback:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIsMBNEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-direct {v0}, Lcom/android/internal/telephony/primarycard/SyncQueue;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->sSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLandroid/os/Message;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .param p3, "networkMode"    # I
    .param p4, "bootup"    # Z
    .param p5, "callback"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    sget-object v2, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->sSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;-><init>(Lcom/android/internal/telephony/primarycard/SyncQueue;)V

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mBootup:Z

    .line 68
    const-string v2, "persist.radio.enable_mbn"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mIsMBNEnable:Z

    .line 70
    new-instance v2, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;-><init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mContext:Landroid/content/Context;

    .line 154
    iput-object p5, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    .line 156
    iput-boolean p4, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mBootup:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->clear()V

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    .line 163
    iget-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mIsMBNEnable:Z

    if-eqz v2, :cond_1

    .line 164
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->getSimAppType(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "simapp":Ljava/lang/String;
    const-string v2, "CSIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RUIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    :cond_0
    const/16 p3, 0x16

    .line 171
    .end local v1    # "simapp":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eq p3, v5, :cond_5

    .line 172
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_5

    .line 173
    if-eq v0, p2, :cond_2

    .line 175
    iget-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mIsMBNEnable:Z

    if-eqz v2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v3, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    const/16 v4, 0x14

    invoke-direct {v3, p0, v0, v4, v6}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;IILcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "index":I
    .restart local v1    # "simapp":Ljava/lang/String;
    :cond_3
    const/16 p3, 0x14

    goto :goto_0

    .line 178
    .end local v1    # "simapp":Ljava/lang/String;
    .restart local v0    # "index":I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v3, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v3, p0, v0, v5, v6}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;IILcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 186
    .end local v0    # "index":I
    :cond_5
    if-ltz p2, :cond_6

    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p2, v2, :cond_6

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    new-instance v3, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    invoke-direct {v3, p0, p2, p3, v6}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;IILcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->handleSetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->handleGetPreferredNetwork(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->request(I)V

    return-void
.end method

.method private handleGetPreferredNetwork(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 115
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 116
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .line 117
    .local v1, "command":Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 118
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 119
    .local v3, "modemNetworkMode":I
    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    .line 121
    .end local v3    # "modemNetworkMode":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get perferred network for slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 123
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->request(I)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private handleSetPreferredNetwork(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 132
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 133
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .line 134
    .local v1, "command":Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 137
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 144
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->request(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->end()V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "PrimaryCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_network_request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private request(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x1

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .line 101
    .local v0, "command":Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save network mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to DB first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 103
    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->savePrefNetworkInSetting(II)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactive card:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mBootup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;Z)V

    .line 111
    return-void
.end method

.method private response(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, "can\'t response the result, replyTo and target are all null!"

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePrefNetworkInSetting(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 206
    .local v0, "subContrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 207
    .local v1, "subId":[I
    aget v2, v1, v5

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 217
    return-void
.end method


# virtual methods
.method protected start()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "no command sent"

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->response(Landroid/os/Message;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->end()V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .line 198
    .local v0, "command":Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to set network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I
    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->logd(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
