.class public interface abstract Lcom/android/server/fingerprint/IAlipayFPCallBack;
.super Ljava/lang/Object;
.source "IAlipayFPCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
