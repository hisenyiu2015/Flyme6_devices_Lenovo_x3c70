.class public Lcom/android/server/displayeffect/DisplayEffectService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

.field private mDisplayEffectInitThread:Landroid/os/HandlerThread;

.field public mMode:I

.field private mNativePointer:J

.field public mOldMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSetttingMode:I

.field private mSupportedDisplayEffect:[Ljava/lang/String;

.field private mSupportedMode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "DisplayEffectService"

    sput-object v0, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    .line 43
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    .line 44
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->init_native()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    .line 68
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/android/server/displayeffect/DisplayEffectController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/displayeffect/DisplayEffectController;-><init>(Landroid/content/Context;Lcom/android/server/displayeffect/DisplayEffectService;)V

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/displayeffect/DisplayEffectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/displayeffect/DisplayEffectService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/displayeffect/DisplayEffectService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/displayeffect/DisplayEffectService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/displayeffect/DisplayEffectService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->initDisplayEffect(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/displayeffect/DisplayEffectService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 480
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMode mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_display_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 482
    .local v0, "curMode":I
    if-ne p1, v0, :cond_1

    .line 483
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "Cur mode is set mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    :goto_0
    return v1

    .line 485
    :cond_1
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 487
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private native finalize_native(J)V
.end method

.method private native getCurrentLevel_native(JI)I
.end method

.method private native getLcdBl_native(J)I
.end method

.method private native getMode_native(J)I
.end method

.method private native getSupportedDisplayEffect_native(J)[Ljava/lang/String;
.end method

.method private native getSupportedMaxLevel_native(JI)I
.end method

.method private native getSupportedMode_native(J)[Ljava/lang/String;
.end method

.method private getTopApp()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 510
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 512
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 513
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    .line 514
    :cond_0
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "Top activity is null..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    .line 517
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 519
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "Get Top Activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDisplayEffect(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 99
    const-string v2, "android"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "setModeResult":I
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDisplayEffect set mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 103
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 104
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 106
    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 113
    :cond_0
    return-void

    .line 107
    :cond_1
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffect()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native init_native()J
.end method

.method private native setDisplayEffectLevel_native(JII)I
.end method

.method private native setLcdBl_native(JI)I
.end method

.method private native setMode_native(JI)I
.end method


# virtual methods
.method checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    const-string v2, "lenovo.permission.MODIFY_DISPAY_EFFECT_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 470
    const/4 v1, 0x1

    .line 476
    :goto_0
    return v1

    .line 472
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Effect Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->finalize_native(J)V

    .line 118
    invoke-super {p0}, Landroid/app/IDisplayEffectManager$Stub;->finalize()V

    .line 119
    return-void
.end method

.method public getCurrentLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->getCurrentLevel_native(JI)I

    move-result v0

    .line 169
    .local v0, "currentLevel":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCurrentLevel Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 191
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getMode_native(J)I

    move-result v0

    .line 192
    .local v0, "getModeResult":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMode Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedDisplayEffect_native(J)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "supportedDisplayEffect":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 138
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSupportedDisplayEffect Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "GetSupportedDisplayEffect is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayEffect":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedMaxLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 162
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMaxLevel_native(JI)I

    move-result v0

    .line 163
    .local v0, "supportedMaxLevel":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetSupportedMaxLevel Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMode_native(J)[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "supportedDisplayMode":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 152
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSupportedMode Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "GetSupportedMode is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayMode":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public saveState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    return-void

    .line 502
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setDisplayEffect()V
    .locals 6

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "level":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffectLevel(II)I

    move-result v2

    .line 127
    .local v2, "result":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 128
    sget-object v3, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v4, "Set display effect level failure."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "level":I
    .end local v2    # "result":I
    :cond_1
    return-void
.end method

.method public setDisplayEffectLevel(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 174
    const-string v2, "setDisplayEffectLevel()"

    invoke-virtual {p0, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    const/4 v1, -0x3

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffectLevel_native(JII)I

    move-result v1

    .line 178
    .local v1, "setDisplayEffectLevelResult":I
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetDisplayEffectLevel Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 182
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0, v0, p2}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)I
    .locals 7
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->checkMode(I)Z

    move-result v0

    .line 291
    .local v0, "bo":Z
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "SetMode check unsuccessfully"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v3, -0x4

    .line 328
    :goto_0
    return v3

    .line 296
    :cond_0
    const-string v4, "com.lenovo.screensettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    if-ne p1, v4, :cond_1

    .line 297
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "screensettings set mode unsuccessfully."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_1
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_mode"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 303
    .local v1, "mCurrentmode":I
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetMode Mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v4, "com.lenovo.gallery"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.lenovo.scg"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    :cond_3
    const/4 v4, 0x7

    if-eq p1, v4, :cond_4

    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    .line 307
    :cond_4
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "setmode to 8"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 p1, 0x8

    .line 311
    :cond_5
    const/4 v2, 0x0

    .line 312
    .local v2, "newModeOwnerPid":I
    const/4 v3, -0x1

    .line 314
    .local v3, "setModeResult":I
    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 315
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v2

    .line 316
    if-eqz v2, :cond_7

    .line 317
    const/4 v3, 0x1

    .line 319
    const-string v4, "com.lenovo.screensettings"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    .line 321
    const-string v4, "display_mode"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 323
    :cond_6
    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    iget v6, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v4, v6, :cond_7

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_7

    .line 324
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    iget v6, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    invoke-virtual {v4, v6, p3}, Lcom/android/server/displayeffect/DisplayEffectController;->modeChange(ILjava/lang/String;)V

    .line 327
    :cond_7
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 18
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v9, 0x0

    .line 333
    .local v9, "newModeOwnerPid":I
    if-nez p2, :cond_0

    .line 334
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "setModeInt() called with null binder."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 412
    .end local v9    # "newModeOwnerPid":I
    .local v10, "newModeOwnerPid":I
    :goto_0
    return v10

    .line 338
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_0
    const/4 v6, 0x0

    .line 339
    .local v6, "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 340
    .local v8, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 341
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .line 342
    .local v5, "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    invoke-virtual {v5}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v15

    move/from16 v0, p3

    if-ne v15, v0, :cond_1

    .line 343
    move-object v6, v5

    .line 344
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 346
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v6, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :cond_2
    :goto_1
    const/4 v13, -0x1

    .line 357
    .local v13, "status":I
    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "display_mode"

    const/16 v17, -0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 359
    .local v12, "settingMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/displayeffect/DisplayEffectService;->getTopApp()Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, "packagename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 361
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    invoke-virtual {v15}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "tmpPackagename":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    check-cast v6, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .line 365
    .restart local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 366
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 361
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 347
    .end local v7    # "i":I
    .end local v11    # "packagename":Ljava/lang/String;
    .end local v12    # "settingMode":I
    .end local v13    # "status":I
    .end local v14    # "tmpPackagename":Ljava/lang/String;
    .restart local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :catch_0
    move-exception v4

    .line 349
    .local v4, "e":Ljava/util/NoSuchElementException;
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "nosuchElement"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 368
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    .end local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    .restart local v7    # "i":I
    .restart local v11    # "packagename":Ljava/lang/String;
    .restart local v12    # "settingMode":I
    .restart local v13    # "status":I
    .restart local v14    # "tmpPackagename":Ljava/lang/String;
    :cond_4
    move/from16 p1, v12

    goto :goto_3

    .line 372
    .end local v7    # "i":I
    .end local v14    # "tmpPackagename":Ljava/lang/String;
    :cond_5
    move/from16 p1, v12

    .line 387
    .end local v11    # "packagename":Ljava/lang/String;
    .end local v12    # "settingMode":I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v13

    .line 389
    const/4 v15, -0x1

    if-lt v13, v15, :cond_c

    .line 391
    const/4 v13, 0x1

    .line 401
    :cond_7
    :goto_5
    const/4 v15, 0x1

    if-eq v13, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 403
    :cond_8
    const/4 v15, 0x1

    if-ne v13, v15, :cond_9

    .line 404
    const/4 v15, -0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_9

    .line 405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 406
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "setMode() different from INVALID_MODE with empty mode client stack."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    move v10, v9

    .line 412
    .end local v9    # "newModeOwnerPid":I
    .restart local v10    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 375
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_a
    if-nez v6, :cond_b

    .line 376
    new-instance v6, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .end local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;-><init>(Lcom/android/server/displayeffect/DisplayEffectService;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 379
    .restart local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :cond_b
    :try_start_1
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "linkToDeath pid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " packageName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_4

    .line 381
    :catch_1
    move-exception v4

    .line 382
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setMode() could not link to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " binder death."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 393
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v6, :cond_7

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 395
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_5

    .line 399
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 408
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    invoke-virtual {v15}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v9

    goto/16 :goto_6
.end method

.method setModeToNative(ILjava/lang/String;)I
    .locals 7
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x5

    .line 242
    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    iput v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    .line 245
    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-ne v3, v5, :cond_1

    :cond_0
    if-eq p1, v6, :cond_1

    if-ne p1, v5, :cond_3

    :cond_1
    if-eq p1, v6, :cond_2

    if-ne p1, v5, :cond_5

    :cond_2
    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v3, v5, :cond_5

    .line 251
    :cond_3
    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-ne v3, v5, :cond_9

    :cond_4
    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_9

    .line 253
    const/4 v3, 0x0

    const-string v4, "/sys/devices/soc.0/f9967000.i2c/i2c-11/11-0036/backlight/lm36923/mode"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/displayeffect/DisplayEffectService;->writeSysFile(ZLjava/lang/String;)V

    .line 262
    :cond_5
    :goto_0
    if-eq p1, v6, :cond_6

    const-string v3, "android"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v3, v6, :cond_7

    :cond_6
    if-eq p1, v5, :cond_b

    const-string v3, "android"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "com.lenovo.screensettings"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-ne v3, v5, :cond_b

    .line 264
    :cond_7
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "mCurrentmode":I
    const/4 v1, 0x1

    .line 267
    .local v1, "result":I
    iget v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    iput v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 268
    const-string v2, "current_display_mode"

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 269
    const-string v2, "com.lenovo.screensettings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    if-ne v0, v5, :cond_a

    .line 270
    iput v5, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    .line 286
    .end local v0    # "mCurrentmode":I
    :cond_8
    :goto_1
    return v1

    .line 257
    .end local v1    # "result":I
    :cond_9
    const/4 v3, 0x1

    const-string v4, "/sys/devices/soc.0/f9967000.i2c/i2c-11/11-0036/backlight/lm36923/mode"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/displayeffect/DisplayEffectService;->writeSysFile(ZLjava/lang/String;)V

    goto :goto_0

    .line 273
    .restart local v0    # "mCurrentmode":I
    .restart local v1    # "result":I
    :cond_a
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    goto :goto_1

    .line 277
    .end local v0    # "mCurrentmode":I
    .end local v1    # "result":I
    :cond_b
    iget-wide v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    const/16 v3, 0x14

    if-ne p1, v3, :cond_c

    :goto_2
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->setMode_native(JI)I

    move-result v1

    .line 278
    .restart local v1    # "result":I
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetModeToNative mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OldMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 282
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 283
    const-string v2, "current_display_mode"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    goto :goto_1

    .end local v1    # "result":I
    :cond_c
    move v2, p1

    .line 277
    goto :goto_2
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 74
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DisplayEffectInit"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectInitThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/displayeffect/DisplayEffectService$1;

    invoke-direct {v1, p0}, Lcom/android/server/displayeffect/DisplayEffectService$1;-><init>(Lcom/android/server/displayeffect/DisplayEffectService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    invoke-virtual {v1}, Lcom/android/server/displayeffect/DisplayEffectController;->systemReady()V

    .line 96
    return-void
.end method

.method writeSysFile(ZLjava/lang/String;)V
    .locals 10
    .param p1, "values"    # Z
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v7, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Write Sys File,FilePath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 204
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 206
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v6, v7

    .line 209
    .local v6, "targetvalue":B
    sget-object v7, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "targetvalue1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p1, :cond_2

    .line 212
    or-int/lit8 v7, v6, 0x4

    int-to-byte v6, v7

    .line 214
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 222
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 223
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    if-eqz v5, :cond_4

    .line 231
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 236
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 218
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    and-int/lit16 v7, v6, 0xfb

    int-to-byte v6, v7

    .line 220
    const/4 v7, 0x1

    :try_start_4
    new-array v7, v7, [B

    const/4 v8, 0x0

    aput-byte v6, v7, v8

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 224
    .end local v6    # "targetvalue":B
    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 225
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    if-eqz v4, :cond_0

    .line 231
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "targetvalue":B
    :catch_2
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 236
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "targetvalue":B
    :catch_3
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 229
    if-eqz v4, :cond_0

    .line 231
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 233
    :catch_4
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_3

    .line 231
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 236
    :cond_3
    :goto_5
    throw v7

    .line 233
    :catch_5
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 226
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 224
    :catch_8
    move-exception v0

    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "targetvalue":B
    :cond_4
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
