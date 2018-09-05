.class Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;
.super Ljava/lang/Object;
.source "PrefNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefNetworkSetCommand"
.end annotation


# instance fields
.field private final mPrefNetwork:I

.field private final mSlot:I

.field final synthetic this$0:Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;II)V
    .locals 0
    .param p2, "slot"    # I
    .param p3, "prefNetwork"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->this$0:Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    .line 95
    iput p3, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;IILcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;-><init>(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mPrefNetwork:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest$PrefNetworkSetCommand;->mSlot:I

    return v0
.end method
