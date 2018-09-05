.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 333
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    .line 334
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    const/16 v4, 0x1f4

    if-ne p1, v4, :cond_1

    .line 353
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/16 v4, 0x258

    if-ne p1, v4, :cond_0

    .line 355
    sget-object v4, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v4, v4, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 356
    .local v1, "r":Landroid/content/ContentResolver;
    const-string v4, "backup_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 360
    .local v0, "areEnabled":Z
    :goto_1
    :try_start_0
    sget-object v4, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/backup/BackupManagerService;->SYSPROP_DEBUG_BACKUP:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "areEnabled":Z
    :cond_4
    move v0, v3

    .line 356
    goto :goto_1
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 338
    const-string v2, "backup"

    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 341
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 342
    .local v0, "cachePD":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const-wide/32 v4, 0x9600000

    invoke-static {v2, v4, v5}, Lcom/android/server/backup/BackupStrogeUtils;->ensureAvailableSpace(Ljava/io/FileDescriptor;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "cachePD":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
