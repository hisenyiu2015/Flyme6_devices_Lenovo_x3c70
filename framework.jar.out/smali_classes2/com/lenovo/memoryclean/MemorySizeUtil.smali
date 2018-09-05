.class public Lcom/lenovo/memoryclean/MemorySizeUtil;
.super Ljava/lang/Object;
.source "MemorySizeUtil.java"


# static fields
.field static mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 17
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static getAvailMemory(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 63
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 65
    :cond_0
    sget-object v1, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 66
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v1, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    sget-object v1, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getBackgroundProcessMemory(Landroid/app/ActivityManager;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private static getBackgroundProcessMemory(Landroid/app/ActivityManager;)J
    .locals 8
    .param p0, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 116
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_1

    .line 117
    const-wide/16 v0, 0x0

    .line 126
    :cond_0
    return-wide v0

    .line 119
    :cond_1
    const-wide/16 v0, 0x0

    .line 120
    .local v0, "backgroundProcessMemory":J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_2

    .line 123
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {p0, v5}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getMemInfoForPid(Landroid/app/ActivityManager;I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_0
.end method

.method private static getMemInfoForPid(Landroid/app/ActivityManager;I)I
    .locals 6
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pid"    # I

    .prologue
    const/4 v5, 0x0

    .line 135
    const/4 v4, 0x1

    new-array v1, v4, [I

    aput p1, v1, v5

    .line 138
    .local v1, "pids":[I
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 139
    .local v0, "mem":[Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x0

    .line 140
    .local v2, "totalClear":I
    array-length v4, v0

    if-lez v4, :cond_0

    .line 141
    aget-object v4, v0, v5

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 142
    .local v3, "totalPss":I
    if-lez v3, :cond_0

    .line 143
    move v2, v3

    .line 146
    .end local v3    # "totalPss":I
    :cond_0
    return v2
.end method

.method private static getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 73
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 74
    return-object v1
.end method

.method private static getTotalMemory(J)J
    .locals 8
    .param p0, "_totalMemory"    # J

    .prologue
    const-wide/16 v6, 0x200

    const-wide/16 v4, 0x400

    .line 49
    div-long v2, p0, v4

    div-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 50
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 51
    sput-wide v6, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 58
    :cond_0
    :goto_0
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v2

    .line 53
    :cond_1
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    rem-long v0, v2, v4

    .line 54
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 55
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    sub-long/2addr v2, v0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    goto :goto_0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 28
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 29
    .local v0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v2, v3}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(J)J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 31
    .end local v0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :cond_0
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v2
.end method

.method public static getUsageMemory(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x400

    .line 99
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 103
    :cond_0
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    mul-long/2addr v0, v4

    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUsedMemory(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 88
    :cond_0
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
