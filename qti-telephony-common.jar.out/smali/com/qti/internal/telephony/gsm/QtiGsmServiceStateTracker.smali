.class public Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "QtiGsmServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiGsmSST"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 51
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 52
    const-string v1, "rat"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 53
    const-string v1, "rac"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 58
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 60
    new-instance v1, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;-><init>(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v1, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic access$102(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method private enableBackgroundData()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method


# virtual methods
.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 15
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 92
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v12, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    if-eq v11, v12, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_5

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v11, v11, Lcom/android/internal/telephony/CommandException;

    if-eqz v11, :cond_2

    .line 99
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/internal/telephony/CommandException;

    check-cast v11, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 102
    :cond_2
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v11, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 108
    :cond_3
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v3, v11, :cond_4

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 204
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v12, 0x0

    aget v13, v11, v12

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v12

    .line 205
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-nez v11, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->updateRoamingState()V

    .line 207
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v12, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v11, v12}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 113
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 193
    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v4

    .line 200
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 117
    .local v7, "states":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 118
    .local v10, "type":I
    const/4 v6, 0x4

    .line 119
    .local v6, "regState":I
    const/4 v11, -0x1

    iput v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 120
    const/4 v11, 0x1

    iput v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 121
    array-length v11, v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v11, :cond_9

    .line 123
    const/4 v11, 0x0

    :try_start_2
    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 127
    array-length v11, v7

    const/4 v12, 0x4

    if-lt v11, v12, :cond_6

    const/4 v11, 0x3

    aget-object v11, v7, v11

    if-eqz v11, :cond_6

    .line 128
    const/4 v11, 0x3

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 130
    :cond_6
    array-length v11, v7

    const/4 v12, 0x5

    if-lt v11, v12, :cond_7

    const/4 v11, 0x3

    if-ne v6, v11, :cond_7

    .line 132
    const/4 v11, 0x4

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 135
    :cond_7
    array-length v11, v7

    const/4 v12, 0x6

    if-lt v11, v12, :cond_8

    .line 136
    const/4 v11, 0x5

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 139
    :cond_8
    array-length v11, v7

    const/4 v12, 0x7

    if-lt v11, v12, :cond_9

    .line 140
    const/4 v11, 0x6

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 141
    .local v9, "tac":I
    const-string v11, "QtiGsmSST"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updated TAC:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", old TAC:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    if-eq v11, v9, :cond_9

    .line 144
    iput v9, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 145
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v9    # "tac":I
    :cond_9
    :goto_2
    :try_start_3
    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    .line 153
    .local v2, "dataRegState":I
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 154
    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mDataRoaming:Z

    .line 155
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v10}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 157
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " regState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dataRadioTechnology="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    .end local v2    # "dataRegState":I
    :catch_1
    move-exception v4

    .line 149
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error parsing GprsRegistrationState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "regState":I
    .end local v7    # "states":[Ljava/lang/String;
    .end local v10    # "type":I
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 169
    .local v5, "opNames":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v11, v5

    const/4 v12, 0x3

    if-lt v11, v12, :cond_4

    .line 171
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "brandOverride":Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_b

    .line 175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 176
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v11, v1, v1, v12}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    .end local v1    # "brandOverride":Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 178
    .restart local v1    # "brandOverride":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "config_plmn_name_override_enabled"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, "strOperatorLong":Ljava/lang/String;
    const-string v11, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    invoke-virtual {p0, v11}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 183
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v12, 0x1

    aget-object v12, v5, v12

    const/4 v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v11, v8, v12, v13}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    .end local v8    # "strOperatorLong":Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v12, 0x0

    aget-object v12, v5, v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x2

    aget-object v14, v5, v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "QtiGsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method protected pollStateDone()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 215
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 217
    .local v0, "hasLacChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    .line 221
    :cond_0
    return-void

    .line 215
    .end local v0    # "hasLacChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
