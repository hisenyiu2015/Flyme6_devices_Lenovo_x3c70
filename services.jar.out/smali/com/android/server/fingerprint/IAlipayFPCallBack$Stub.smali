.class public abstract Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;
.super Landroid/os/Binder;
.source "IAlipayFPCallBack.java"

# interfaces
.implements Lcom/android/server/fingerprint/IAlipayFPCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/IAlipayFPCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.fingerprint.IAlipayFPCallBack"

.field static final TRANSACTION_onMessage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 11
    const-string v0, "com.zui.fingerprint.IAlipayFPCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/fingerprint/IAlipayFPCallBack;
    .locals 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-nez p0, :cond_0

    move-object v0, v1

    .line 23
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-string v2, "com.zui.fingerprint.IAlipayFPCallBack"

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 20
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/server/fingerprint/IAlipayFPCallBack;

    if-eqz v2, :cond_1

    .line 21
    check-cast v0, Lcom/android/server/fingerprint/IAlipayFPCallBack;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 23
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 28
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 35
    sparse-switch p1, :sswitch_data_0

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 37
    :sswitch_0
    const-string v4, "com.zui.fingerprint.IAlipayFPCallBack"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :sswitch_1
    const-string v4, "com.zui.fingerprint.IAlipayFPCallBack"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 45
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 48
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;->onMessage(III)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
