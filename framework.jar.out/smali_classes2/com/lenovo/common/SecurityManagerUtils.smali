.class public Lcom/lenovo/common/SecurityManagerUtils;
.super Ljava/lang/Object;
.source "SecurityManagerUtils.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z = true

.field private static final PRE_SECURITY_QUICK_START:Ljava/lang/String; = "security_quick_start"

.field private static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "SecurityManagerUtils"

.field private static sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppLock(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "caller"    # Landroid/app/IApplicationThread;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 113
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 122
    .end local v1    # "mAppPcService":Lcom/android/internal/app/IAppPcService;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-object p1

    .line 116
    .restart local v1    # "mAppPcService":Lcom/android/internal/app/IAppPcService;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppLockForTask(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v3

    .line 152
    .local v3, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "activityIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 156
    const-string v4, "security_quick_start"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    const-string v4, "SecurityManagerUtils"

    const-string v5, "checkAppLockForTasksecurity_quick_start"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/IAppPcService;->accessLockPattern(Ljava/lang/String;)V

    .line 170
    .end local v0    # "activityIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "activityIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService;->checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SecurityManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppLockForTask"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppOpsPermission(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v3

    .line 129
    :cond_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, "opCode":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 133
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 134
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 136
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, p0, p1, v4}, Lcom/android/internal/app/IAppPcService;->checkOperationAsync(ILjava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const/4 v3, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SecurityManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppOpsPermission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkAppPcPermission(Ljava/lang/String;III)Z
    .locals 5
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "permCode"    # I

    .prologue
    .line 173
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 174
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v1, p3, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 181
    :goto_0
    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAppPcPermission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callerApp"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 99
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAutoStart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkIncomingCall(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 73
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/app/IAppPcService;->checkIncomingCall(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIncomingCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getServiceInstance()Lcom/android/internal/app/IAppPcService;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    if-nez v1, :cond_0

    .line 53
    const-string v1, "lenovopermission"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppPcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    sput-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    .line 56
    :cond_0
    sget-object v1, Lcom/lenovo/common/SecurityManagerUtils;->sAppPcServiceInstance:Lcom/android/internal/app/IAppPcService;

    return-object v1
.end method

.method public static isSendingTrafficPermittedByLenovoSecurity(I)Z
    .locals 4
    .param p0, "opType"    # I

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const-string v0, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppPcPermission(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public static pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 5
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/lenovo/common/SecurityManagerUtils;->getServiceInstance()Lcom/android/internal/app/IAppPcService;

    move-result-object v1

    .line 86
    .local v1, "mAppPcService":Lcom/android/internal/app/IAppPcService;
    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IAppPcService;->pmInstallApkWithCode(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pmInstallApkWithCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const v2, 0xffff

    goto :goto_0
.end method
