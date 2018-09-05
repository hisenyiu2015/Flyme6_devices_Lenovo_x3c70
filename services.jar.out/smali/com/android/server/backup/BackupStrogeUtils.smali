.class public Lcom/android/server/backup/BackupStrogeUtils;
.super Ljava/lang/Object;
.source "BackupStrogeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    }
.end annotation


# static fields
.field private static final DIRECTORY_CACHE_RUNNING:Ljava/lang/String; = "partial_downloads"

.field private static final FILE_CACHE_SWITCH_SD:Ljava/lang/String; = "switch_sd"

.field private static final FILE_OTA_RESULT:Ljava/lang/String; = "updateResult"

.field public static final FORCE_SPACE:J = 0x9600000L

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MIN_DELETE_AGE:J = 0x5265c00L

.field private static final RESERVED_BYTES:J = 0x2000000L

.field private static final TAG:Ljava/lang/String; = "BackupStrogeUtils"

.field private static sExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupStrogeUtils;->sExcludeList:Ljava/util/List;

    .line 75
    sget-object v0, Lcom/android/server/backup/BackupStrogeUtils;->sExcludeList:Ljava/util/List;

    const-string v1, "updateResult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/backup/BackupStrogeUtils;->sExcludeList:Ljava/util/List;

    const-string v1, "switch_sd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static ensureAvailableSpace(Ljava/io/FileDescriptor;J)Z
    .locals 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 94
    invoke-static {p0}, Lcom/android/server/backup/BackupStrogeUtils;->getAvailableBytes(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 95
    .local v0, "availBytes":J
    cmp-long v8, v0, p1

    if-ltz v8, :cond_1

    .line 97
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " there is already has enough space bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", availBytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return v7

    .line 105
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v8

    iget-wide v4, v8, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v4, "dev":J
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/backup/BackupStrogeUtils;->getDeviceId(Ljava/io/File;)J

    move-result-wide v2

    .line 112
    .local v2, "cacheDev":J
    cmp-long v8, v4, v2

    if-nez v8, :cond_2

    .line 114
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " freeCacheStorage bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p1, p2}, Lcom/android/server/backup/BackupStrogeUtils;->freeCacheStorage(J)V

    .line 119
    :cond_2
    invoke-static {p0}, Lcom/android/server/backup/BackupStrogeUtils;->getAvailableBytes(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 120
    cmp-long v8, v0, p1

    if-gez v8, :cond_0

    .line 121
    const-string v7, "BackupStrogeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not enough free space; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requested, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " available"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v7, 0x0

    goto :goto_0

    .line 106
    .end local v2    # "cacheDev":J
    .end local v4    # "dev":J
    :catch_0
    move-exception v6

    .line 107
    .local v6, "e":Landroid/system/ErrnoException;
    invoke-virtual {v6}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private static freeCacheStorage(J)V
    .locals 12
    .param p0, "bytes"    # J

    .prologue
    .line 136
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " freeCacheStorage Start bytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "partial_downloads"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/android/server/backup/BackupStrogeUtils;->listFilesRecursive(Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 141
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;>;"
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " freeCacheStorage Found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " on cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v8, Lcom/android/server/backup/BackupStrogeUtils$1;

    invoke-direct {v8}, Lcom/android/server/backup/BackupStrogeUtils$1;-><init>()V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 151
    .local v6, "now":J
    sget-object v0, Lcom/android/server/backup/BackupStrogeUtils;->sExcludeList:Ljava/util/List;

    .line 152
    .local v0, "excludelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .line 153
    .local v1, "file":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-gtz v8, :cond_1

    .line 167
    .end local v1    # "file":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    :cond_0
    const-string v8, "BackupStrogeUtils"

    const-string v9, " freeCacheStorage End "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 155
    .restart local v1    # "file":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    :cond_1
    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 156
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Skipping recently modified "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Skipping del exclute file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_3
    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 162
    .local v4, "len":J
    const-string v8, "BackupStrogeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to reclaim "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sub-long/2addr p0, v4

    .line 164
    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method private static getAvailableBytes(Ljava/io/FileDescriptor;)J
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 245
    .local v1, "stat":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x2000000

    sub-long/2addr v2, v4

    return-wide v2

    .line 246
    .end local v1    # "stat":Landroid/system/StructStatVfs;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 248
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private static getDeviceId(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-wide v2

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/system/ErrnoException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private static listFilesRecursive(Ljava/io/File;Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p0, "startDir"    # Ljava/io/File;
    .param p1, "exclude"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 179
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v4, "dirs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v4, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v9, "BackupStrogeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " listFilesRecursive start uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 183
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 184
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 187
    .local v2, "children":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 189
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    .line 190
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 191
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 194
    :try_start_0
    new-instance v5, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;-><init>(Ljava/io/File;Lcom/android/server/backup/BackupStrogeUtils$1;)V

    .line 195
    .local v5, "file":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    const-string v9, "BackupStrogeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " listFilesRecursive file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " file.stat.st_uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;
    invoke-static {v5}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$200(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Landroid/system/StructStat;

    move-result-object v11

    iget v11, v11, Landroid/system/StructStat;->st_uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v9, -0x1

    if-eq p2, v9, :cond_3

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->stat:Landroid/system/StructStat;
    invoke-static {v5}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$200(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Landroid/system/StructStat;

    move-result-object v9

    iget v9, v9, Landroid/system/StructStat;->st_uid:I

    if-ne v9, p2, :cond_1

    .line 197
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    .end local v5    # "file":Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 204
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "children":[Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    return-object v6
.end method
