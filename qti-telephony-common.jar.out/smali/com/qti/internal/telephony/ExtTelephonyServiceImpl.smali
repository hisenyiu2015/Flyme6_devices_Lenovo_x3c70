.class public Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lcom/android/internal/telephony/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 51
    const-string v0, "init constructor "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-direct {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 56
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v1, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 39
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v1

    return-object v0

    .line 37
    :cond_0
    const-string v0, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method public getPhoneIdForECall()I
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall()I

    move-result v0

    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    return v0
.end method

.method public getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    return-object v0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 109
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 95
    return-void
.end method
