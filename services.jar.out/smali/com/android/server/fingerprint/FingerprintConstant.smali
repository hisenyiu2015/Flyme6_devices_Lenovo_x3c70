.class public Lcom/android/server/fingerprint/FingerprintConstant;
.super Ljava/lang/Object;
.source "FingerprintConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintConstant$IFingerListener;
    }
.end annotation


# static fields
.field public static final APPTYPE_ALIPAY:I = 0x1

.field public static final APPTYPE_BLACK_UNLOCK:I = 0x3

.field public static final APPTYPE_CAMERA:I = 0x64

.field public static final APPTYPE_FIDO:I = 0x2

.field public static final APPTYPE_UPAY:I = 0x4

.field public static final CLOSEFILE_ACTION:I = 0x34

.field public static final CMD_RESULT_FAIL:I = -0x1

.field public static final CMD_RESULT_OK:I = 0x0

.field public static final CREATEDIR_ACTION:I = 0x36

.field public static final CREATEFILE_ACTION:I = 0x33

.field public static final DELETEFILE_ACTION:I = 0x35

.field public static final MAX_ID_NUM:I = 0xa

.field public static final MSG_ENROL_PROGRESS:I = 0x3e9

.field public static final MSG_ENROL_RESULT:I = 0x3ea

.field public static final MSG_ENROL_STATUS:I = 0x3eb

.field public static final MSG_FINGER_UP:I = 0x3ef

.field public static final MSG_IDENTIFY_RESULT:I = 0x3ed

.field public static final MSG_IDENTIFY_STATUS:I = 0x3ee

.field public static final NAME_MAX_LENGTH:I = 0x80

.field public static final PACKAGE_NAME_ALIPAY:Ljava/lang/String; = "com.alipay.security.mobile.authenticator"

.field public static final PACKAGE_NAME_CAMERA:Ljava/lang/String; = "com.lenovo.scg"

.field public static final PACKAGE_NAME_SYSTEM_UID:Ljava/lang/String; = "android.uid.system:1000"

.field public static final PACKAGE_NAME_TEST:Ljava/lang/String; = "com.cloud.test"

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_ENROL_IMAGE_POOR:I = 0x75

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_FILESYSTEM_ERROR:I = 0x77

.field public static final RESULT_FINGER_ENROLED:I = 0x7c

.field public static final RESULT_HANDLE_DIED_ERROR:I = 0x7b

.field public static final RESULT_MEMORY_ERROR:I = 0x79

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_ENROLLED:I = 0x72

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_NUMBER_ERROR:I = 0x78

.field public static final RESULT_PARAM_ERROR:I = 0x76

.field public static final RESULT_PERMISSION_LIMIT:I = 0x7d

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TEMP_DATA_ERROR:I = 0x7a

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final RUNNING_CAMERA:I = 0x1f7

.field public static final RUNNING_ENROLING:I = 0x1f5

.field public static final RUNNING_IDENTIFYING:I = 0x1f6

.field public static final RUNNING_NONE:I = 0x1f4

.field public static final SERVICE_NAME:Ljava/lang/String; = "fm_fingerprint_service"

.field public static final STATUS_FINGER_DOWN:I = 0x4

.field public static final STATUS_FINGER_UP:I = 0x5

.field public static final STATUS_IMAGE_POOR:I = 0x6

.field public static final STATUS_INPUTTING:I = 0x2

.field public static final STATUS_INPUT_COMPLETED:I = 0x3

.field public static final STATUS_WAITING_FOR_INPUT:I = 0x1

.field public static final TRANSCONTENT_ACTION:I = 0x37


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "log":Ljava/lang/String;
    const-string v1, "WatchdataFP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public static varargs loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "log":Ljava/lang/String;
    const-string v1, "WatchdataFP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static varargs logi(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "log":Ljava/lang/String;
    const-string v1, "WatchdataFP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
