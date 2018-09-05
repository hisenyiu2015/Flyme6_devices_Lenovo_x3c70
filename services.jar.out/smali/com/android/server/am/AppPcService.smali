.class public Lcom/android/server/am/AppPcService;
.super Lcom/android/internal/app/IAppPcService$Stub;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources;,
        Lcom/android/server/am/AppPcService$FirewallRule;,
        Lcom/android/server/am/AppPcService$FirewallRuleSet;,
        Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;,
        Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;,
        Lcom/android/server/am/AppPcService$PermControlService;,
        Lcom/android/server/am/AppPcService$LongDistancePrefix;,
        Lcom/android/server/am/AppPcService$PmInstallApkMsg;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET:Ljava/lang/String; = "android.appwidget.action"

.field private static final ACTION_TELEPHONY:Ljava/lang/String; = "android.provider.Telephony"

.field private static final APPPCSERVICE_VERSION:Ljava/lang/String; = "201604121745"

.field private static final BLACKNUM_NUMBER:Ljava/lang/String; = "number"

.field private static final BLACKNUM_TYPE:Ljava/lang/String; = "type"

.field private static final BLACKNUM_TYPE_AD:I = 0x1

.field private static final BLACKNUM_TYPE_BLACKLIST:I = -0x2

.field private static final BLACKNUM_TYPE_CUSTOM:I = -0x1

.field private static final BLACKNUM_TYPE_EXPRESS:I = 0x4

.field private static final BLACKNUM_TYPE_FRAUD:I = 0x3

.field private static final BLACKNUM_TYPE_HARASSMENT:I = 0x2

.field private static final BLACKNUM_TYPE_INSURANCE_FINANCE:I = 0x7

.field private static final BLACKNUM_TYPE_NORMAL:I = 0x0

.field private static final BLACKNUM_TYPE_REALTOR:I = 0x6

.field private static final BLACKNUM_TYPE_TAKEOUT:I = 0x5

.field private static final BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

.field public static final DEBUG:Z

.field private static final E2E_SYSTEM_URI:Landroid/net/Uri;

.field private static final E2E_SYSTEM_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

.field private static final E2E_URI:Landroid/net/Uri;

.field private static final E2E_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

.field private static final EXTRA_SECURITY_INTENT:Ljava/lang/String; = "security_intent"

.field private static final EXTRA_SECURITY_PACKAGE:Ljava/lang/String; = "security_package"

.field private static final EXTRA_SECURITY_TOKEN:Ljava/lang/String; = "security_token"

.field private static final HARASS_CALL_CHECK_URI:Landroid/net/Uri;

.field private static final HARASS_CALL_CHECK_URI_STRING:Ljava/lang/String; = "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

.field public static final INCOMING_TYPE:I = 0x1

.field private static final INSTRUCTION_SMS_LENGTH:I = 0x9

.field private static final INSTRUCTION_SMS_PASSWORD_LENGTH:I = 0x6

.field private static final KEY_ACCOUNT_COMP_NAME:Ljava/lang/String; = "account_comp_name"

.field private static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MSG_BASE:I = 0x1

.field private static final MSG_PM_INSTALL_APK:I = 0x9

.field private static final MSG_SEND_ORDERED_BROADCAST_AS_USER:I = 0x7

.field private static final MSG_SET_APPLICATION_ENABLED_SETTING:I = 0x3

.field private static final MSG_SET_NOTIFICATIONS_ENABLED_FOR_PACKAGE:I = 0x4

.field private static final MSG_SET_UID_POLICY:I = 0x5

.field private static final MSG_START_ACTIVITY_FOR_RESULT:I = 0x6

.field private static final MSG_STOP_SERVICE:I = 0x2

.field private static final PRE_SECURITY_APP_LOCK:Ljava/lang/String; = "security_app_lock"

.field public static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "Security_AppPcService"

.field private static final mNotInRunningControlSCode:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSwitchCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecurityPkg:Ljava/lang/String;


# instance fields
.field private final CHECK_BACKGROUND_GPS_ENABLE:Z

.field private final FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final IS_SECURITY_APP_EXIST:Z

.field private final NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final RECORD_CHECK_HISTORY_ENABLE:Z

.field private final RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

.field private mAppLockInfo:Landroid/content/pm/ActivityInfo;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIAppPcPermCheckCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppPcPermissionListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/IAppPcPermissionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPackageName:Ljava/lang/String;

.field private mNetworkBlockSocketServer:Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v2, 0x1

    const/16 v5, 0xe

    const/4 v1, 0x0

    .line 125
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    .line 279
    const-string v0, "com.lenovo.security"

    sput-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 937
    const-string v0, "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    .line 939
    const-string v0, "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    .line 955
    const-string v0, "content://blocked-mms-sms/block_calllog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    .line 1044
    const-string v0, "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    return-void

    :cond_1
    move v0, v1

    .line 125
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v9, 0x4c4db10

    const v8, 0x4c4b400

    const v7, 0x42c6ba0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    invoke-direct {p0}, Lcom/android/internal/app/IAppPcService$Stub;-><init>()V

    .line 237
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    .line 244
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    .line 257
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    .line 258
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    .line 269
    iput v7, p0, Lcom/android/server/am/AppPcService;->HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 271
    iput v9, p0, Lcom/android/server/am/AppPcService;->NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 273
    iput v8, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

    .line 368
    iput-boolean v5, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    .line 369
    new-instance v3, Lcom/android/server/am/AppPcService$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppPcService$1;-><init>(Lcom/android/server/am/AppPcService;)V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    new-instance v3, Lcom/android/server/am/AppPcService$5;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppPcService$5;-><init>(Lcom/android/server/am/AppPcService;)V

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    .line 329
    const-string v3, "Security_AppPcService"

    const-string v6, "init AppPcService"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    .line 331
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 333
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v6, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v1, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->init()V

    .line 348
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getVersionCodeFromSecurityApp(Landroid/content/Context;)I

    move-result v0

    .line 349
    .local v0, "apkVersionCode":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    .line 351
    if-lt v0, v7, :cond_1

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 352
    if-lt v0, v9, :cond_2

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 353
    if-lt v0, v8, :cond_3

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    .line 354
    iget-boolean v3, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    iput-boolean v3, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    .line 355
    return-void

    .line 335
    .end local v0    # "apkVersionCode":I
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Security_AppPcService"

    const-string v6, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "apkVersionCode":I
    :cond_0
    move v3, v5

    .line 349
    goto :goto_1

    :cond_1
    move v3, v5

    .line 351
    goto :goto_2

    :cond_2
    move v3, v5

    .line 352
    goto :goto_3

    :cond_3
    move v4, v5

    .line 353
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStopService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetApplicationEnabledSetting(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStartActivityForResult(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetUidPolicy(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handlePmInstallApk(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/AppPcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/AppPcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/AppPcService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/AppPcService;)Lcom/android/server/am/AppPcService$PermControlService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    return-object v0
.end method

.method private checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z
    .locals 8
    .param p1, "switchCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "ifCountRecode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 444
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "Security_AppPcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOperationAsyncBySwitchCode packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";switchCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    const/4 v1, -0x1

    if-ne v1, p1, :cond_2

    .line 491
    :cond_1
    :goto_0
    return v0

    .line 451
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v1, :cond_3

    .line 453
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v1, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p2

    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    :cond_3
    const-string v1, "android"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-direct {p0, p2}, Lcom/android/server/am/AppPcService;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 463
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1

    .line 466
    invoke-direct {p0, v6}, Lcom/android/server/am/AppPcService;->isSupportRunningTimePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    .line 467
    .local v7, "isSupportRunning":Z
    if-eqz v7, :cond_5

    sget-object v1, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 468
    if-eqz p1, :cond_4

    if-nez p1, :cond_1

    .line 471
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckBackgroundCase(ILjava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0

    .line 482
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method private checkPermission()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 610
    .local v2, "uid":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 611
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v2, :cond_0

    .line 615
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v4

    .line 611
    goto :goto_0

    .line 612
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 615
    goto :goto_0
.end method

.method private getControllableSystemApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    const-string v0, "/etc/com_lenovo_security/controllable_system_apps"

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService;->parseFileByLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1368
    :goto_0
    return-object v1

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1367
    const-string v1, "Security_AppPcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handlePmInstallApk(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 906
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;

    .line 910
    .local v2, "msgObjectApkMsg":Lcom/android/server/am/AppPcService$PmInstallApkMsg;
    :try_start_0
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .line 911
    .local v5, "socket":Landroid/net/LocalSocket;
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v7, "LenovoSecurityLocalServerSocket"

    invoke-direct {v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 913
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 916
    .local v3, "out":Ljava/io/PrintWriter;
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mPath:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 918
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 919
    .local v1, "input":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 920
    .local v4, "read":I
    const-string v6, "Security_AppPcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V

    .line 922
    iput v4, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 928
    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 929
    :try_start_1
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v7

    .line 932
    .end local v1    # "input":Ljava/io/DataInputStream;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "read":I
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :goto_0
    return-void

    .line 930
    .restart local v1    # "input":Ljava/io/DataInputStream;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    .restart local v4    # "read":I
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 925
    .end local v1    # "input":Ljava/io/DataInputStream;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "read":I
    .end local v5    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 928
    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 929
    :try_start_3
    iget-object v6, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 928
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    iget-object v7, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 929
    :try_start_4
    iget-object v8, v2, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    :catchall_3
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6
.end method

.method private handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 695
    const-string v0, "Security_AppPcService"

    const-string v1, "handleSendOrderedBroadcastAsUser resultReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :try_start_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    .line 699
    .local v10, "param":Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;
    new-instance v4, Lcom/android/server/am/AppPcService$3;

    invoke-direct {v4, p0, v10}, Lcom/android/server/am/AppPcService$3;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)V

    .line 714
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$500(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/content/Intent;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mUser:Landroid/os/UserHandle;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$600(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/UserHandle;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mReceiverPermission:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$700(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialCode:I
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$800(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)I

    move-result v6

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialData:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$900(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialExtras:Landroid/os/Bundle;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$1000(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "param":Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v9

    .line 718
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetApplicationEnabledSetting(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 649
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 650
    .local v3, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 651
    .local v2, "newState":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 652
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v1    # "flags":I
    .end local v2    # "newState":I
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 732
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 733
    .local v3, "pkg":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 734
    .local v4, "uid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_0

    .line 735
    .local v1, "enabled":Z
    :goto_0
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 737
    .local v2, "nm":Landroid/app/INotificationManager;
    invoke-interface {v2, v3, v4, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v1    # "enabled":Z
    .end local v2    # "nm":Landroid/app/INotificationManager;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :goto_1
    return-void

    .line 734
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 738
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleSetUidPolicy(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 753
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 754
    .local v3, "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 755
    .local v2, "policy":I
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 756
    .local v1, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {v1, v3, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v2    # "policy":I
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowNetworkBlockToast(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1274
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1275
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1276
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->permission_block_network:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1278
    .local v3, "msgText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "msgText":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStartActivityForResult(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 772
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 773
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 774
    .local v2, "requestCode":I
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "requestCode":I
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopService(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 632
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 633
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportRunningTimePackage(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1356
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 1357
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseFileByLines(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1324
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 1327
    :cond_0
    const/4 v2, 0x0

    .line 1329
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1334
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1337
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 1338
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1339
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1341
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "Security_AppPcService"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1345
    if-eqz v3, :cond_1

    .line 1346
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 1350
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 1330
    :catch_1
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    .line 1345
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v3, :cond_1

    .line 1346
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1348
    :catch_2
    move-exception v6

    goto :goto_1

    .line 1344
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 1345
    if-eqz v3, :cond_3

    .line 1346
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1348
    :cond_3
    :goto_3
    throw v6

    .local v1, "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method private switchPermissionCode(I)I
    .locals 3
    .param p1, "appOpsCode"    # I

    .prologue
    .line 1377
    sget-object v1, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1378
    .local v0, "switchCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1204
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1205
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1206
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1207
    invoke-static {p1}, Lcom/android/server/am/AppPcService$LongDistancePrefix;->queryLongDistacePrefix(Ljava/lang/String;)I

    move-result v0

    .line 1208
    .local v0, "prefix":I
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1211
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1212
    :cond_1
    const/4 v1, 0x0

    .line 1231
    :goto_0
    return-object v1

    .line 1214
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_5

    .line 1216
    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1217
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    move-object v1, p1

    .line 1231
    goto :goto_0

    .line 1219
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1222
    :cond_5
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1224
    const-string v1, "0086"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1227
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_3

    .line 1229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public accessLockPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 604
    :cond_0
    return-void
.end method

.method public addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "features"    # I
    .param p3, "date"    # J
    .param p5, "accountComponentName"    # Ljava/lang/String;
    .param p6, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 1011
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v1, :cond_0

    .line 1012
    const-string v1, "Security_AppPcService"

    const-string v2, "addBlockedCallLog(): Interception Disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    return-void

    .line 1016
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "Security_AppPcService"

    const-string v2, "addBlockedCallLog() Enter!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string v1, "features"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    cmp-long v1, v4, p3

    if-nez v1, :cond_1

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 1026
    :cond_1
    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1027
    const-string v1, "duration"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    const-string v1, "subscription_component_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v1, "subscription_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v1, "new"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v1, "is_read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    new-instance v1, Lcom/android/server/am/AppPcService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppPcService$4;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$4;->start()V

    goto :goto_0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 781
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v2

    .line 785
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 786
    .local v1, "mAppOps":Landroid/app/AppOpsManager;
    const/16 v3, 0xb

    invoke-virtual {v1, v3, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "mAppOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAppPcPermissionBackgroundStatus(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "item"    # Landroid/os/Bundle;

    .prologue
    .line 897
    const-string v1, "AppPcPermissionItem"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 898
    .local v0, "permItem":Lcom/lenovo/common/AppPcPermissionItem;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    move-result v1

    return v1
.end method

.method public changeAppPcPermissionStatus(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "item"    # Landroid/os/Bundle;

    .prologue
    .line 892
    const-string v1, "AppPcPermissionItem"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 893
    .local v0, "permItem":Lcom/lenovo/common/AppPcPermissionItem;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    move-result v1

    return v1
.end method

.method public checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 9
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 539
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 540
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 541
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_1

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->isAnyAppLockOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppLock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLockPackageName;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 547
    .local v7, "oldUid":I
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 548
    .local v8, "uid":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 549
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppLock oldUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";uid.intValue()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "oldUid":I
    .end local v8    # "uid":Ljava/lang/Integer;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_0
    return-object p1

    .line 553
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "oldUid":I
    .restart local v8    # "uid":Ljava/lang/Integer;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x16

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const-string v0, "security_app_lock"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppLock lock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "security_package"

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v0, "security_intent"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 558
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 559
    iget-object p1, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 561
    :cond_3
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 562
    const-string v0, "security_app_lock"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 575
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->isAnyAppLockOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppLockForTask packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLockPackageName;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-object v6

    .line 583
    :cond_1
    iput-object v6, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x16

    const/4 v5, 0x1

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppLockForTask lock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v6, "securityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v2, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    const-string v0, "security_package"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v0, "security_token"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerApp"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 495
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAutoStart packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callerApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-nez v0, :cond_2

    .line 534
    :cond_1
    :goto_0
    return v5

    .line 500
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 501
    const-string v0, "android.appwidget.action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    const-string v0, "android.provider.Telephony"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 504
    .local v7, "cName":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 505
    .local v8, "defaultSmsPkg":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 506
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 508
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    .end local v7    # "cName":Landroid/content/ComponentName;
    .end local v8    # "defaultSmsPkg":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    .line 513
    if-eqz p2, :cond_6

    .line 514
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 515
    const-string v0, "Security_AppPcService"

    const-string v1, "checkAutoStart the callerApp is the same as the starting App"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;

    move-result-object v9

    .line 519
    .local v9, "topPkg":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAutoStart top visible packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callerApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v9    # "topPkg":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, v3, v3}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x11

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v6

    .line 528
    .local v6, "bAutoStart":Z
    if-eqz v6, :cond_7

    .line 529
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAutoStart granted packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";callerApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v6

    .line 531
    goto/16 :goto_0
.end method

.method public checkIncomingCall(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1054
    iget-boolean v11, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v11, :cond_1

    .line 1055
    const-string v11, "Security_AppPcService"

    const-string v12, "checkIncomingCall(): Interception Disabled!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1097
    :cond_0
    :goto_0
    return v0

    .line 1059
    :cond_1
    const/4 v0, 0x0

    .line 1060
    .local v0, "bRet":Z
    const-string v11, "number"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "number":Ljava/lang/String;
    const-string v11, "features"

    invoke-virtual {p1, v11, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1062
    .local v3, "features":I
    const-string v1, "date"

    const-wide/16 v12, 0x0

    invoke-virtual {p1, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1063
    .local v4, "date":J
    const-string v1, "account_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1064
    .local v7, "accountId":Ljava/lang/String;
    const-string v1, "account_comp_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1066
    .local v6, "accountComponentName":Ljava/lang/String;
    const-string v1, "Security_AppPcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIncomingCall(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v1, :cond_2

    .line 1070
    const/4 v9, 0x0

    .line 1071
    .local v9, "uri":Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1073
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "Security_AppPcService"

    const-string v11, "checkIncomingCall(): FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v1, "number"

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "features"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1077
    const-string v1, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1078
    const-string v1, "account_comp_name"

    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v1, "account_id"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v11, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {v1, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1083
    if-eqz v9, :cond_0

    .line 1084
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1086
    :catch_0
    move-exception v8

    .line 1087
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1091
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 1092
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppPcService;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public checkMMSPushIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1140
    .local v0, "bRet":Z
    iget-boolean v3, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v3, :cond_0

    .line 1141
    const-string v3, "Security_AppPcService"

    const-string v4, "checkMMSPushIntent(): Interception Disabled!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1159
    .end local v0    # "bRet":Z
    .local v1, "bRet":I
    :goto_0
    return v1

    .line 1145
    .end local v1    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_0
    const-string v3, "Security_AppPcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSC MMS Intercept: checkMMSPushIntent(): number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1148
    const-string v3, "Security_AppPcService"

    const-string v4, "LSC MMS Intercept: Is blacklist number!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v4, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .local v2, "newComponentName":Landroid/content/ComponentName;
    const-string v3, "com.lenovo.ideafriend.BLACKLIST.MMS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1154
    const/4 v0, 0x1

    .end local v2    # "newComponentName":Landroid/content/ComponentName;
    :goto_1
    move v1, v0

    .line 1159
    .restart local v1    # "bRet":I
    goto :goto_0

    .line 1156
    .end local v1    # "bRet":I
    :cond_1
    const-string v3, "Security_AppPcService"

    const-string v4, "LSC MMS Intercept: Is Normal number!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkOperation(IIILcom/android/internal/app/IAppPcCallback;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppPcCallback;

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public checkOperationAsync(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/4 v5, 0x1

    .line 396
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "Security_AppPcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOperationAsync packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    const/16 v0, 0x2710

    if-ge p3, v0, :cond_2

    .line 418
    :cond_1
    :goto_0
    return v5

    .line 403
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->switchPermissionCode(I)I

    move-result v1

    .line 404
    .local v1, "switchCode":I
    const/4 v0, -0x1

    if-eq v0, v1, :cond_1

    .line 409
    if-eqz v1, :cond_3

    if-nez v1, :cond_4

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(ILjava/lang/String;II)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 418
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v5

    goto :goto_0
.end method

.method public checkOperationAsyncBySwitchCode(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "switchCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/4 v5, 0x1

    .line 423
    const/16 v0, 0x2710

    if-ge p3, v0, :cond_0

    .line 431
    :goto_0
    return v5

    .line 427
    :cond_0
    if-eqz p1, :cond_1

    if-nez p1, :cond_2

    .line 429
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v5

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 431
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v5

    goto :goto_0
.end method

.method public checkSMSIntent(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1106
    .local v0, "bRet":Z
    iget-boolean v6, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v6, :cond_0

    .line 1107
    const-string v6, "Security_AppPcService"

    const-string v7, "checkSMSIntent(): Interception Disabled!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1132
    .end local v0    # "bRet":Z
    .local v1, "bRet":I
    :goto_0
    return v1

    .line 1111
    .end local v1    # "bRet":I
    .restart local v0    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1112
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 1114
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_3

    .line 1115
    const/4 v6, 0x0

    aget-object v2, v3, v6

    .line 1116
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 1117
    .local v5, "number":Ljava/lang/String;
    const-string v6, "Security_AppPcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sms Intercept: number="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppPcService;->isInstructionSMS([Landroid/telephony/SmsMessage;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1120
    :cond_2
    const-string v6, "Security_AppPcService"

    const-string v7, "Sms Intercept: Is blacklist number or Anti-theft Instruction!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v4, Landroid/content/ComponentName;

    sget-object v6, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string v7, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    .local v4, "newComponentName":Landroid/content/ComponentName;
    const-string v6, "com.lenovo.ideafriend.BLACKLIST.SMS"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1125
    const/4 v0, 0x1

    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v3    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v4    # "newComponentName":Landroid/content/ComponentName;
    .end local v5    # "number":Ljava/lang/String;
    :cond_3
    :goto_1
    move v1, v0

    .line 1132
    .restart local v1    # "bRet":I
    goto :goto_0

    .line 1127
    .end local v1    # "bRet":I
    .restart local v2    # "message":Landroid/telephony/SmsMessage;
    .restart local v3    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_4
    const-string v6, "Security_AppPcService"

    const-string v7, "Sms Intercept: Is Normal number!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->clearCheckHistorys(Ljava/lang/String;)V

    .line 1173
    :cond_0
    return-void
.end method

.method public getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcDataManager;->getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcDataManager;->getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService;->getCheckHistorys()Ljava/util/List;

    move-result-object v0

    .line 1166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inWhiteList(ILjava/lang/String;II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 379
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inWhiteLis packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(Ljava/lang/String;II)Z

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBlacklistNumber(Ljava/lang/String;)Z
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v0, :cond_0

    .line 962
    const-string v0, "Security_AppPcService"

    const-string v2, "isBlacklistNumber(): Interception Disabled!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return v0

    .line 966
    :cond_0
    const/4 v10, 0x0

    .line 967
    .local v10, "mType":I
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 969
    .local v11, "trimedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 970
    const/4 v0, 0x2

    new-array v12, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    aput-object v2, v12, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    aput-object v2, v12, v0

    .line 971
    .local v12, "uirs":[Landroid/net/Uri;
    const/4 v8, 0x0

    .line 973
    .local v8, "found":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v12

    if-ge v9, v0, :cond_4

    if-nez v8, :cond_4

    .line 974
    const/4 v6, 0x0

    .line 975
    .local v6, "cursor":Landroid/database/Cursor;
    aget-object v1, v12, v9

    .line 978
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const-string v3, "number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 984
    if-eqz v6, :cond_1

    .line 985
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 986
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 988
    const/4 v8, 0x1

    goto :goto_2

    .line 994
    :cond_1
    if-eqz v6, :cond_2

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 991
    :catch_0
    move-exception v7

    .line 992
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Security_AppPcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlacklistNumber Query failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    if-eqz v6, :cond_2

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 994
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1001
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "found":Z
    .end local v9    # "i":I
    .end local v12    # "uirs":[Landroid/net/Uri;
    :cond_4
    const/4 v0, -0x2

    if-ne v0, v10, :cond_5

    .line 1002
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1005
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1320
    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstructionSMS([Landroid/telephony/SmsMessage;)Z
    .locals 11
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v7, 0x0

    .line 1238
    iget-boolean v8, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v8, :cond_1

    .line 1239
    const-string v8, "Security_AppPcService"

    const-string v9, "isInstructionSMS(): Interception Disabled!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    :goto_0
    return v7

    .line 1243
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .local v5, "msgBuilder":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1247
    .local v3, "message":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_2

    .line 1248
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1251
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, "messageBody":Ljava/lang/String;
    const-string v8, "Security_AppPcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInstructionSMS(): messageBody="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/16 v8, 0x9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 1254
    const/4 v8, 0x6

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1255
    .local v6, "password":Ljava/lang/String;
    const-string v8, "Security_AppPcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInstructionSMS(): digits="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1258
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1259
    const-string v8, "#xh"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#bf"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#sd"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#bj"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#dw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1264
    :cond_4
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public maybeNetworkBlock(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 795
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-nez v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 799
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;-><init>(Lcom/android/server/am/AppPcService;I)V

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pmInstallApk(IILjava/lang/String;)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 807
    :try_start_0
    const-string v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 809
    .local v0, "AUTHORITY":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pminstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 810
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 811
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "UID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    const-string v4, "PID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    const-string v4, "PATH"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 818
    .end local v0    # "AUTHORITY":Ljava/lang/String;
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "value":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 815
    :catch_0
    move-exception v2

    .line 816
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 823
    :try_start_0
    const-string v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 825
    .local v0, "AUTHORITY":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pminstall2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 826
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "UID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v4, "PID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v4, "PATH"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v4, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 834
    .end local v0    # "AUTHORITY":Ljava/lang/String;
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "value":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 831
    :catch_0
    move-exception v2

    .line 832
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    const v4, 0xffff

    goto :goto_0
.end method

.method public registerAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 840
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    monitor-exit v1

    .line 843
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/app/IAppPcPermissionListener;

    .prologue
    .line 852
    if-nez p1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 856
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 858
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultCallback"    # Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 664
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-nez p4, :cond_0

    .line 667
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser resultCallback = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    const-string v0, "Security_AppPcService"

    const-string v1, "sendOrderedBroadcastAsUser checkPermission = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_1
    new-instance v4, Lcom/android/server/am/AppPcService$2;

    invoke-direct {v4, p0, p4}, Lcom/android/server/am/AppPcService$2;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V

    .line 690
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAppPermissionResult(ILjava/lang/String;II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "result"    # I

    .prologue
    .line 877
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppPermissionResult uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    .line 881
    :cond_0
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 727
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 749
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 768
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 620
    if-nez p1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v1

    .line 623
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 357
    const-string v1, "Security_AppPcService"

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v1, Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppPcService$PermControlService;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    .line 360
    const-string v1, "Security_AppPcService"

    const-string v2, "AppPcService Version:201604121745"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 365
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method

.method public unregisterAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/app/IAppPcPermissionListener;

    .prologue
    .line 863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 864
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    monitor-exit v2

    .line 867
    return-void

    .line 866
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
