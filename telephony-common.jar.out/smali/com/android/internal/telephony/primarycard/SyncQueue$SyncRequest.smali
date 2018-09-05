.class public abstract Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/primarycard/SyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncRequest"
.end annotation


# instance fields
.field private final mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/primarycard/SyncQueue;)V
    .locals 0
    .param p1, "queue"    # Lcom/android/internal/telephony/primarycard/SyncQueue;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    .line 46
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->clear()V

    .line 62
    return-void
.end method

.method protected final end()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/primarycard/SyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->start()V

    goto :goto_0
.end method

.method public loop()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/primarycard/SyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/primarycard/SyncQueue;->add(Lcom/android/internal/telephony/primarycard/SyncQueue$SyncRequest;)Z

    .line 68
    :cond_0
    return-void
.end method

.method protected abstract start()V
.end method
