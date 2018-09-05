.class public abstract Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/extension/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/extension/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/extension/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.extension.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_execCommand:I = 0xa

.field static final TRANSACTION_getFpName:I = 0x8

.field static final TRANSACTION_getIds:I = 0x7

.field static final TRANSACTION_invokeCmd:I = 0x6

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_release:I = 0x3

.field static final TRANSACTION_sendCommand:I = 0x9

.field static final TRANSACTION_setCameraType:I = 0x5

.field static final TRANSACTION_startIdentify:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/extension/IFingerprintService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/fingerprint/extension/IFingerprintService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->open(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I

    move-result v7

    .line 52
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 54
    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v7    # "_result":I
    :sswitch_2
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 62
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v2

    .line 63
    .local v2, "_arg1":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->cancel(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;)I

    move-result v7

    .line 64
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 66
    goto :goto_0

    .line 70
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v7    # "_result":I
    :sswitch_3
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->release(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I

    move-result v7

    .line 74
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 76
    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v7    # "_result":I
    :sswitch_4
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg1":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 88
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 90
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->startIdentify(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;[IJI)I

    move-result v7

    .line 92
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 94
    goto :goto_0

    .line 98
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":I
    .end local v7    # "_result":I
    :sswitch_5
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    .line 102
    .local v1, "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->setCameraType(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)I

    move-result v7

    .line 104
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :sswitch_6
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 114
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->invokeCmd([BI)[B

    move-result-object v7

    .line 116
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v8

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v7    # "_result":[B
    :sswitch_7
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    .line 126
    .local v1, "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->getIds(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)[I

    move-result-object v7

    .line 128
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v8

    .line 130
    goto/16 :goto_0

    .line 134
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":[I
    :sswitch_8
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    .line 138
    .restart local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->getFpName(Landroid/hardware/fingerprint/extension/IFingerprintClient;II)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 144
    goto/16 :goto_0

    .line 148
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/extension/IFingerprintClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->sendCommand(I)I

    move-result v7

    .line 152
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 154
    goto/16 :goto_0

    .line 158
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_a
    const-string v0, "android.hardware.fingerprint.extension.IFingerprintService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 164
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->execCommand(I[BI)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 167
    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
