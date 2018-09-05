.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .locals 1
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3345
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3346
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 3347
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    .line 3348
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 3349
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 3350
    iput p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    .line 3351
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    .line 3352
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    .line 3353
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3358
    :try_start_0
    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3360
    .local v5, "output":Landroid/app/backup/FullBackupDataOutput;
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    if-eqz v0, :cond_1

    .line 3361
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 3362
    .local v7, "writeWidgetData":Z
    :goto_0
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing manifest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1100(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    .line 3364
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3368
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3371
    if-eqz v7, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1200(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    .line 3373
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3377
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3381
    .end local v7    # "writeWidgetData":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    if-eqz v0, :cond_2

    .line 3382
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    invoke-static {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1300(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    .line 3385
    :cond_2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupManagerService Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/backup/BackupManagerService;->writeLogEvents(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1400(Ljava/lang/String;)V

    .line 3391
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3392
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3400
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 3403
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :goto_1
    return-void

    .line 3361
    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3393
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :catch_0
    move-exception v6

    .line 3394
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3400
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3401
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3395
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 3396
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3400
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 3401
    :catch_3
    move-exception v0

    goto :goto_1

    .line 3399
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 3400
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 3401
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2

    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :catch_5
    move-exception v0

    goto :goto_1
.end method
