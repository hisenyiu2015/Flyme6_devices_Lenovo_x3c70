.class public abstract Lcom/android/internal/app/IAppPcService$Stub;
.super Landroid/os/Binder;
.source "IAppPcService.java"

# interfaces
.implements Lcom/android/internal/app/IAppPcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppPcService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppPcService"

.field static final TRANSACTION_accessLockPattern:I = 0x21

.field static final TRANSACTION_addBlockedCallLog:I = 0x10

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xd

.field static final TRANSACTION_changeAppPcPermissionBackgroundStatus:I = 0x20

.field static final TRANSACTION_changeAppPcPermissionStatus:I = 0x1f

.field static final TRANSACTION_checkAppLock:I = 0x5

.field static final TRANSACTION_checkAppLockForTask:I = 0x6

.field static final TRANSACTION_checkAutoStart:I = 0x4

.field static final TRANSACTION_checkIncomingCall:I = 0x16

.field static final TRANSACTION_checkMMSPushIntent:I = 0x12

.field static final TRANSACTION_checkOperation:I = 0x2

.field static final TRANSACTION_checkOperationAsync:I = 0x3

.field static final TRANSACTION_checkOperationAsyncBySwitchCode:I = 0x22

.field static final TRANSACTION_checkSMSIntent:I = 0x11

.field static final TRANSACTION_clearCheckHistorys:I = 0x15

.field static final TRANSACTION_getAppPcPermissionItemsByCode:I = 0x1d

.field static final TRANSACTION_getAppPcPermissionItemsByPackageName:I = 0x1e

.field static final TRANSACTION_getCheckHistorys:I = 0x14

.field static final TRANSACTION_inWhiteList:I = 0x1

.field static final TRANSACTION_isBlacklistNumber:I = 0xf

.field static final TRANSACTION_maybeNetworkBlock:I = 0xe

.field static final TRANSACTION_pmInstallApk:I = 0x13

.field static final TRANSACTION_pmInstallApkWithCode:I = 0x17

.field static final TRANSACTION_registerAppPcPermCheckCallback:I = 0x18

.field static final TRANSACTION_registerPermissionListener:I = 0x1b

.field static final TRANSACTION_sendOrderedBroadcastAsUser:I = 0x9

.field static final TRANSACTION_setAppPermissionResult:I = 0x1a

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x8

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_setUidPolicy:I = 0xb

.field static final TRANSACTION_startActivityForResult:I = 0xc

.field static final TRANSACTION_stopService:I = 0x7

.field static final TRANSACTION_unregisterAppPcPermCheckCallback:I = 0x19

.field static final TRANSACTION_unregisterPermissionListener:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IAppPcService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppPcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.IAppPcService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IAppPcService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IAppPcService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/app/IAppPcService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppPcService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 578
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->inWhiteList(ILjava/lang/String;II)Z

    move-result v10

    .line 57
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v10, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_2
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcCallback;

    move-result-object v6

    .line 72
    .local v6, "_arg3":Lcom/android/internal/app/IAppPcCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkOperation(IIILcom/android/internal/app/IAppPcCallback;)I

    move-result v10

    .line 73
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcCallback;
    .end local v10    # "_result":I
    :sswitch_3
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 87
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkOperationAsync(ILjava/lang/String;II)Z

    move-result v10

    .line 89
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v10, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 95
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_4
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 103
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v10, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 104
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 109
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_5
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 118
    .local v3, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 124
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 125
    .local v10, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v10, :cond_5

    .line 127
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_6
    if-eqz v4, :cond_6

    .line 134
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 115
    .end local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_4

    .line 122
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/Intent;
    goto :goto_5

    .line 131
    .restart local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 144
    .end local v3    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_6
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 150
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 156
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 157
    .local v10, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v10, :cond_8

    .line 159
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    :goto_9
    if-eqz v5, :cond_9

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 154
    .end local v5    # "_arg2":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/Intent;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/Intent;
    goto :goto_8

    .line 163
    .restart local v10    # "_result":Landroid/content/Intent;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 170
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 176
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Landroid/content/Intent;
    .end local v10    # "_result":Landroid/content/Intent;
    :sswitch_7
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 179
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 184
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->stopService(Landroid/content/Intent;)Z

    move-result v10

    .line 185
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v10, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 182
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_b

    .line 186
    .restart local v10    # "_result":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 191
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_8
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_9
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 207
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 213
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 214
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 220
    .local v4, "_arg1":Landroid/os/UserHandle;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v6

    .line 224
    .local v6, "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 226
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 229
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .local v9, "_arg6":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v2, p0

    .line 234
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/app/IAppPcService$Stub;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 210
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":Landroid/os/UserHandle;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Landroid/os/Bundle;
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_d

    .line 217
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/UserHandle;
    goto :goto_e

    .line 232
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/Bundle;
    goto :goto_f

    .line 240
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":Landroid/os/UserHandle;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Landroid/os/Bundle;
    :sswitch_a
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v5, 0x1

    .line 247
    .local v5, "_arg2":Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v5    # "_arg2":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .line 253
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->setUidPolicy(II)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 264
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_c
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 267
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 273
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 270
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_arg1":I
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_11

    .line 280
    .end local v3    # "_arg0":Landroid/content/Intent;
    :sswitch_d
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v10

    .line 286
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v10, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 287
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 292
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_e
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->maybeNetworkBlock(I)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 301
    .end local v3    # "_arg0":I
    :sswitch_f
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v10

    .line 305
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v10, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 306
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 311
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_10
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 319
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v3

    move v13, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 322
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/app/IAppPcService$Stub;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg2":J
    :sswitch_11
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 331
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 336
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->checkSMSIntent(Landroid/content/Intent;)Z

    move-result v10

    .line 337
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v10, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    if-eqz v3, :cond_15

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 334
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_14

    .line 338
    .restart local v10    # "_result":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 344
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 350
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_12
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 355
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 360
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/IAppPcService$Stub;->checkMMSPushIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v10

    .line 361
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v10, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    if-eqz v4, :cond_18

    .line 364
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 370
    :goto_19
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 358
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/Intent;
    goto :goto_17

    .line 362
    .restart local v10    # "_result":Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 368
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 374
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_13
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 380
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->pmInstallApk(IILjava/lang/String;)I

    move-result v10

    .line 382
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 388
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_14
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppPcService$Stub;->getCheckHistorys()Ljava/util/List;

    move-result-object v18

    .line 390
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 396
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :sswitch_15
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->clearCheckHistorys(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 405
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 408
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 413
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->checkIncomingCall(Landroid/content/Intent;)Z

    move-result v10

    .line 414
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v10, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    if-eqz v3, :cond_1b

    .line 417
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 423
    :goto_1c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 411
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :cond_19
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/Intent;
    goto :goto_1a

    .line 415
    .restart local v10    # "_result":Z
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 421
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 427
    .end local v3    # "_arg0":Landroid/content/Intent;
    .end local v10    # "_result":Z
    :sswitch_17
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 433
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppPcService$Stub;->pmInstallApkWithCode(IILjava/lang/String;)I

    move-result v10

    .line 435
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 441
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_18
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v3

    .line 444
    .local v3, "_arg0":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->registerAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 450
    .end local v3    # "_arg0":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    :sswitch_19
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v3

    .line 453
    .restart local v3    # "_arg0":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->unregisterAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 459
    .end local v3    # "_arg0":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    :sswitch_1a
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 467
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 468
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->setAppPermissionResult(ILjava/lang/String;II)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 474
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_1b
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcPermissionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcPermissionListener;

    move-result-object v3

    .line 477
    .local v3, "_arg0":Lcom/android/internal/app/IAppPcPermissionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->registerPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 483
    .end local v3    # "_arg0":Lcom/android/internal/app/IAppPcPermissionListener;
    :sswitch_1c
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppPcPermissionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppPcPermissionListener;

    move-result-object v3

    .line 486
    .restart local v3    # "_arg0":Lcom/android/internal/app/IAppPcPermissionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->unregisterPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 492
    .end local v3    # "_arg0":Lcom/android/internal/app/IAppPcPermissionListener;
    :sswitch_1d
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 496
    .local v10, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v10, :cond_1c

    .line 498
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    :goto_1d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 502
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 508
    .end local v3    # "_arg0":I
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_1e
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 512
    .restart local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v10, :cond_1d

    .line 514
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    :goto_1e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 518
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 524
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_1f
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 527
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 532
    .local v3, "_arg0":Landroid/os/Bundle;
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->changeAppPcPermissionStatus(Landroid/os/Bundle;)Z

    move-result v10

    .line 533
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v10, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 530
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :cond_1e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_1f

    .line 534
    .restart local v10    # "_result":Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 539
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :sswitch_20
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 542
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 547
    .restart local v3    # "_arg0":Landroid/os/Bundle;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->changeAppPcPermissionBackgroundStatus(Landroid/os/Bundle;)Z

    move-result v10

    .line 548
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v10, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 545
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_21

    .line 549
    .restart local v10    # "_result":Z
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 554
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :sswitch_21
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppPcService$Stub;->accessLockPattern(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 563
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string v2, "com.android.internal.app.IAppPcService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 571
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 572
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/app/IAppPcService$Stub;->checkOperationAsyncBySwitchCode(ILjava/lang/String;II)Z

    move-result v10

    .line 573
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v10, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 574
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
