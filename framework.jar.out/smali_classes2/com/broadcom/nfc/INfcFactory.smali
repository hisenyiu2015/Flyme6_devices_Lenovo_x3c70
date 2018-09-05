.class public interface abstract Lcom/broadcom/nfc/INfcFactory;
.super Ljava/lang/Object;
.source "INfcFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/nfc/INfcFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBrcmSecureElementInterface()Lcom/broadcom/nfc/INfcBrcmSecureElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfigInterface()Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDtaInterface()Lcom/broadcom/nfc/INfcAdapterDta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
