.class public Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
.super Ljava/lang/Object;
.source "IINList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/primarycard/IINList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IINInfo"
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public mode:I

.field public network:I

.field public pattern:Ljava/util/regex/Pattern;

.field public priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/android/internal/telephony/primarycard/IINList$IINInfo;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    .locals 2
    .param p0, "iinInfo"    # Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;-><init>()V

    .line 76
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    .line 77
    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    iput v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    .line 78
    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    iput v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    .line 81
    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    iput v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
