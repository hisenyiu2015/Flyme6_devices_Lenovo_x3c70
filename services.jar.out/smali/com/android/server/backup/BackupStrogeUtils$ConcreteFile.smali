.class Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
.super Ljava/lang/Object;
.source "BackupStrogeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupStrogeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcreteFile"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final stat:Landroid/system/StructStat;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/android/server/backup/BackupStrogeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Lcom/android/server/backup/BackupStrogeUtils$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Landroid/system/StructStat;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 230
    instance-of v2, p1, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 231
    check-cast v0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .line 232
    .local v0, "f":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    iget-object v2, v0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v2, v2, Landroid/system/StructStat;->st_dev:J

    iget-object v4, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v4, v4, Landroid/system/StructStat;->st_dev:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v2, v2, Landroid/system/StructStat;->st_ino:J

    iget-object v4, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v4, v4, Landroid/system/StructStat;->st_ino:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 234
    .end local v0    # "f":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v2, v1, Landroid/system/StructStat;->st_dev:J

    iget-object v1, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v4, v1, Landroid/system/StructStat;->st_dev:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit8 v0, v1, 0x1f

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v2, v2, Landroid/system/StructStat;->st_ino:J

    iget-object v4, p0, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;

    iget-wide v4, v4, Landroid/system/StructStat;->st_ino:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 225
    return v0
.end method
