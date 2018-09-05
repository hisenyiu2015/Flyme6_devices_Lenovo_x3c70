.class public Lcom/lenovo/datamining/hook/HookSystemProperties;
.super Ljava/lang/Object;
.source "HookSystemProperties.java"


# static fields
.field public static final DEFAULT_BACKGROUND_DATA:Ljava/lang/String; = "false"

.field public static final PROPERTY_BACKGROUND_DATA:Ljava/lang/String; = "persist.sys.backgrounddata"

.field public static final PROVIDER_BACKGROUND_DATA:Ljava/lang/String; = "sds_background_data"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v3, "persist.sys.backgrounddata"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 26
    .local v2, "obj":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    .local v0, "data":Landroid/os/Parcel;
    const v3, 0x5f535052

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "obj":Landroid/os/IBinder;
    :cond_0
    return-void

    .line 30
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "obj":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Avatar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HookSystemProperties.set() e -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
