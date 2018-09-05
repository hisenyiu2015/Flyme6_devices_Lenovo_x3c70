.class public Lcom/lenovo/log/PowerLog;
.super Ljava/lang/Object;
.source "PowerLog.java"


# static fields
.field public static final BATTERY_LOG:Ljava/lang/String; = "batterystate"

.field public static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final DATE_FORMAT2:Ljava/text/DateFormat;

.field private static final LOG_PATH:Ljava/lang/String; = "/data/local/log/aplog/"

.field private static final MAX_FILE_NUM:I = 0x5

.field private static final MAX_FILE_SIZE:I = 0x80000

.field public static final POWER_LOG:Ljava/lang/String; = "wklog"

.field public static final SLEEP_LOG:Ljava/lang/String; = "sleeplog"

.field private static final TAG:Ljava/lang/String; = "PowerLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/log/PowerLog;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/log/PowerLog;->DATE_FORMAT2:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/local/log/aplog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/log/PowerLog;->DATE_FORMAT2:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/lenovo/log/LeFileUtils;->createFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBatteryState()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 66
    const-string v7, "battery"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 67
    .local v2, "batteryService":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v3

    .line 70
    :cond_1
    const/4 v4, 0x0

    .line 71
    .local v4, "dumpBatteryFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 72
    .local v0, "batteryOutputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 76
    .local v3, "batteryState":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/local/log/aplog/batterystatetmp.txt"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .local v5, "dumpBatteryFile":Ljava/io/File;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .local v1, "batteryOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 79
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 80
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 90
    if-eqz v1, :cond_2

    .line 92
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 97
    :cond_2
    :goto_1
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 98
    const-string v7, "PowerLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpbattery file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto :goto_0

    .line 93
    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 94
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "PowerLog"

    const-string v8, "failed to close dumpbattery output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 83
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "PowerLog"

    const-string v8, "Not Found=/data/local/log/aplog/batterystate.txt"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz v0, :cond_3

    .line 92
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 97
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    const-string v7, "PowerLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpbattery file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 94
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "PowerLog"

    const-string v8, "failed to close dumpbattery output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 85
    .local v6, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_6
    const-string v7, "PowerLog"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    if-eqz v0, :cond_4

    .line 92
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 97
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    const-string v7, "PowerLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpbattery file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v6

    .line 94
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "PowerLog"

    const-string v8, "failed to close dumpbattery output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 86
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 87
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v7, "PowerLog"

    const-string v8, "IOException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 90
    if-eqz v0, :cond_5

    .line 92
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 97
    :cond_5
    :goto_7
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    const-string v7, "PowerLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpbattery file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :catch_6
    move-exception v6

    .line 94
    const-string v7, "PowerLog"

    const-string v8, "failed to close dumpbattery output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 90
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v0, :cond_6

    .line 92
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 97
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 98
    const-string v8, "PowerLog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpbattery file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v7

    .line 93
    :catch_7
    move-exception v6

    .line 94
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v8, "PowerLog"

    const-string v9, "failed to close dumpbattery output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 90
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto :goto_8

    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto :goto_8

    .line 86
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto :goto_6

    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_9
    move-exception v6

    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto :goto_6

    .line 84
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_b
    move-exception v6

    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto/16 :goto_4

    .line 82
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_c
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :catch_d
    move-exception v6

    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "dumpBatteryFile":Ljava/io/File;
    .restart local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "dumpBatteryFile":Ljava/io/File;
    :cond_8
    move-object v0, v1

    .end local v1    # "batteryOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "batteryOutputStream":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "dumpBatteryFile":Ljava/io/File;
    .restart local v4    # "dumpBatteryFile":Ljava/io/File;
    goto/16 :goto_0
.end method


# virtual methods
.method public updatePowerLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 35
    move-object v3, p2

    .line 36
    .local v3, "string":Ljava/lang/String;
    const-string v5, "/data/local/log/aplog/"

    invoke-static {v5, p1}, Lcom/lenovo/log/LeFileUtils;->queryFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 38
    :cond_0
    array-length v5, v0

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "newFileName":Ljava/lang/String;
    :goto_1
    array-length v5, v0

    if-nez v5, :cond_4

    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/log/PowerLog;->createFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_1
    :goto_2
    const-string v5, "batterystate"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/lenovo/log/PowerLog;->getBatteryState()Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_2
    if-eqz v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/log/aplog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_3
    if-eqz v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/log/PowerLog;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    :goto_4
    invoke-static {v3, v1}, Lcom/lenovo/log/LeFileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "newFileName":Ljava/lang/String;
    :cond_3
    move-object v1, v4

    .line 38
    goto :goto_1

    .line 42
    .restart local v1    # "newFileName":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/log/aplog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/log/LeFileUtils;->getFileSize(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, 0x80000

    if-lt v5, v6, :cond_5

    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/log/PowerLog;->createFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_5
    array-length v5, v0

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    .line 46
    array-length v5, v0

    add-int/lit8 v2, v5, -0x5

    .line 47
    .local v2, "removeSize":I
    invoke-static {v0, v2}, Lcom/lenovo/log/LeFileUtils;->deleteFile([Ljava/io/File;I)Z

    goto :goto_2

    .end local v2    # "removeSize":I
    :cond_6
    move-object v1, v4

    .line 53
    goto :goto_3

    :cond_7
    move-object v3, v4

    .line 54
    goto :goto_4
.end method
