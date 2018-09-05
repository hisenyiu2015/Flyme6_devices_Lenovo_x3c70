.class final Lcom/android/server/backup/BackupStrogeUtils$1;
.super Ljava/lang/Object;
.source "BackupStrogeUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupStrogeUtils;->freeCacheStorage(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;
    .param p2, "rhs"    # Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .prologue
    .line 146
    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    # getter for: Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->file:Ljava/io/File;
    invoke-static {p2}, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;->access$000(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupStrogeUtils$1;->compare(Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;Lcom/android/server/backup/BackupStrogeUtils$ConcreteFile;)I

    move-result v0

    return v0
.end method
