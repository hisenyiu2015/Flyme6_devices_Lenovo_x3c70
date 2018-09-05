.class public Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;
.super Ljava/util/ArrayList;
.source "IINList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/primarycard/IINList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;, "Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->mComparator:Ljava/util/Comparator;

    .line 100
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;, "Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->mComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    .line 105
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 107
    invoke-super {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    const/4 v1, 0x1

    .line 112
    .end local v0    # "index":I
    :goto_1
    return v1

    .line 105
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "index":I
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method
