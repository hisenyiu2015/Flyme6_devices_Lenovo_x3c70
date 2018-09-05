.class public Lcom/lenovo/keyguard/KeyguardCoverAppUtils;
.super Ljava/lang/Object;
.source "KeyguardCoverAppUtils.java"


# static fields
.field private static final COVER_APP_LOCKED:I = 0x1

.field private static final KEYGUARD_COVER_APP_COMPONENT:Ljava/lang/String; = "cover_app_component"

.field private static final KEYGUARD_COVER_APP_DISABLE:Ljava/lang/String; = "disable"

.field private static final KEYGUARD_COVER_APP_LOCK:Ljava/lang/String; = "cover_app_lock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCoverAppLock(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v6

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "cover_app_component"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "coverAppComponentString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "cover_app_lock"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 31
    .local v3, "coverAppLockFlag":I
    if-ne v3, v7, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "disable"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 34
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 35
    .local v1, "coverAppComponentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 36
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 40
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_0

    .line 42
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 43
    goto :goto_0
.end method
