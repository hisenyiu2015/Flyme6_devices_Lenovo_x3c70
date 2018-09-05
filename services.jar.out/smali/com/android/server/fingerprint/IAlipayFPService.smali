.class public interface abstract Lcom/android/server/fingerprint/IAlipayFPService;
.super Ljava/lang/Object;
.source "IAlipayFPService.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cloud.test.IAlipayFPService"

.field public static final TRANSACTION_ON_INVOKETACMD:I = 0x8

.field public static final TRANSACTION_ON_ON_CANCEL:I = 0x4

.field public static final TRANSACTION_ON_OPEN:I = 0x2

.field public static final TRANSACTION_ON_RELEASE:I = 0x3

.field public static final TRANSACTION_ON_SENDCOMMAND:I = 0x5

.field public static final TRANSACTION_ON_STARTIDENTIFY:I = 0x7

.field public static final TRANSACTION_ON_SYNCIDSANDNAMES:I = 0x6

.field public static final TRANSACTION_ON_UPDATETA:I = 0x9


# virtual methods
.method public abstract SyncIdsAndNames([I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeTACmd(Landroid/content/Context;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract open()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract release()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startIdentify(Lcom/android/server/fingerprint/IAlipayFPCallBack;[III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateTA(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
