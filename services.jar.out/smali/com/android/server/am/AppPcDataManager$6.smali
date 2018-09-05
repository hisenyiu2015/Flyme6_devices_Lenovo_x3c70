.class Lcom/android/server/am/AppPcDataManager$6;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 281
    const/4 v15, 0x0

    .line 283
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$1100()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 284
    if-eqz v15, :cond_12

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v33

    monitor-enter v33
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 287
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    if-eqz v15, :cond_0

    .line 393
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->clear()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->clear()V

    .line 291
    const-string v32, "package"

    move-object/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 292
    .local v24, "packageColumnIndex":I
    const-string v32, "permission"

    move-object/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 293
    .local v29, "permissionColumnIndex":I
    const-string v32, "permission_status"

    move-object/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 294
    .local v30, "permissionStatusColumnIndex":I
    const-string v32, "modify"

    move-object/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 295
    .local v23, "modifyColumnIndex":I
    const-string v32, "extra_data_1"

    move-object/from16 v0, v32

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 297
    .local v12, "backgroundStatusColumnIndex":I
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v31, "pkgPerms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    move/from16 v0, v29

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "permissionName":Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v13

    .line 301
    .local v13, "code":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v0, v13, :cond_3

    invoke-static {v6}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 338
    :cond_3
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 339
    :cond_4
    const-string v10, "apppc_servive_is_first_boot"

    .line 341
    .local v10, "KEY_SETTINGS_NAME":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v34, "apppc_servive_is_first_boot"

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 342
    .local v21, "isFirstBoot":I
    const/16 v32, 0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 343
    const-string v32, "Security/AppPcDataManager"

    const-string v34, "first boot init perm"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const/16 v34, 0x1000

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v25

    .line 345
    .local v25, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    .line 346
    .local v20, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v32, v0

    const/16 v34, 0x16

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_5

    .line 348
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/HashMap;

    .line 349
    .local v28, "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v28, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    .line 352
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v27, v11, v19

    .line 353
    .local v27, "permName":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 354
    .local v7, "status":Ljava/lang/Integer;
    if-nez v7, :cond_d

    .line 352
    :cond_6
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 306
    .end local v7    # "status":Ljava/lang/Integer;
    .end local v10    # "KEY_SETTINGS_NAME":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v21    # "isFirstBoot":I
    .end local v22    # "len$":I
    .end local v25    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v27    # "permName":Ljava/lang/String;
    .end local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "packageName":Ljava/lang/String;
    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 308
    .local v7, "status":I
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 309
    .local v8, "modify":I
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v9

    .line 310
    .local v9, "backgroundStatus":I
    new-instance v4, Lcom/lenovo/common/AppPcPermissionItem;

    invoke-direct/range {v4 .. v9}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 311
    .local v4, "item":Lcom/lenovo/common/AppPcPermissionItem;
    if-nez v8, :cond_9

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 314
    .local v14, "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v14, :cond_8

    .line 315
    new-instance v14, Ljava/util/HashMap;

    .end local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 316
    .restart local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 322
    .restart local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v14, :cond_a

    .line 323
    new-instance v14, Ljava/util/HashMap;

    .end local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 324
    .restart local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v32, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    const-string v32, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 332
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/HashMap;

    .line 333
    .restart local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v28, :cond_b

    .line 334
    new-instance v28, Ljava/util/HashMap;

    .end local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 335
    .restart local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 386
    .end local v4    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "status":I
    .end local v8    # "modify":I
    .end local v9    # "backgroundStatus":I
    .end local v12    # "backgroundStatusColumnIndex":I
    .end local v13    # "code":I
    .end local v14    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v23    # "modifyColumnIndex":I
    .end local v24    # "packageColumnIndex":I
    .end local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "permissionColumnIndex":I
    .end local v30    # "permissionStatusColumnIndex":I
    .end local v31    # "pkgPerms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v32

    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v32
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 388
    :catch_0
    move-exception v16

    .line 389
    .local v16, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v32, "Security/AppPcDataManager"

    const-string v33, "startSyncSystemPermissionMaps error"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 392
    if-eqz v15, :cond_c

    .line 393
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    # setter for: Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;
    invoke-static/range {v32 .. v33}, Lcom/android/server/am/AppPcDataManager;->access$1602(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 357
    .restart local v6    # "permissionName":Ljava/lang/String;
    .local v7, "status":Ljava/lang/Integer;
    .restart local v10    # "KEY_SETTINGS_NAME":Ljava/lang/String;
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v12    # "backgroundStatusColumnIndex":I
    .restart local v13    # "code":I
    .restart local v19    # "i$":I
    .restart local v20    # "info":Landroid/content/pm/PackageInfo;
    .restart local v21    # "isFirstBoot":I
    .restart local v22    # "len$":I
    .restart local v23    # "modifyColumnIndex":I
    .restart local v24    # "packageColumnIndex":I
    .restart local v25    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v27    # "permName":Ljava/lang/String;
    .restart local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v29    # "permissionColumnIndex":I
    .restart local v30    # "permissionStatusColumnIndex":I
    .restart local v31    # "pkgPerms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v26

    .line 358
    .local v26, "permInfo":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v36 .. v36}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getUserId()I

    move-result v36

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v17

    .line 363
    .local v17, "flags":I
    and-int/lit8 v32, v17, 0x10

    if-nez v32, :cond_6

    and-int/lit8 v32, v17, 0x4

    if-nez v32, :cond_6

    .line 367
    const/16 v32, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 369
    const-string v32, "Security/AppPcDataManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "init perm allow pkg="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " permName="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move/from16 v3, v35

    # invokes: Lcom/android/server/am/AppPcDataManager;->grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppPcDataManager;->access$1400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 371
    :cond_e
    const/16 v32, -0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 373
    const-string v32, "Security/AppPcDataManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "init perm refuse pkg="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " permName="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move/from16 v3, v35

    # invokes: Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppPcDataManager;->access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 377
    :cond_f
    const-string v32, "Security/AppPcDataManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "init perm ask pkg="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " permName="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move/from16 v3, v35

    # invokes: Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppPcDataManager;->access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 384
    .end local v7    # "status":Ljava/lang/Integer;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v19    # "i$":I
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "len$":I
    .end local v26    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v27    # "permName":Ljava/lang/String;
    .end local v28    # "permStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static/range {v32 .. v32}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v34, "apppc_servive_is_first_boot"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    .end local v25    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_11
    monitor-exit v33
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v10    # "KEY_SETTINGS_NAME":Ljava/lang/String;
    .end local v12    # "backgroundStatusColumnIndex":I
    .end local v13    # "code":I
    .end local v21    # "isFirstBoot":I
    .end local v23    # "modifyColumnIndex":I
    .end local v24    # "packageColumnIndex":I
    .end local v29    # "permissionColumnIndex":I
    .end local v30    # "permissionStatusColumnIndex":I
    .end local v31    # "pkgPerms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_12
    if-eqz v15, :cond_c

    .line 393
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 392
    :catchall_1
    move-exception v32

    if-eqz v15, :cond_13

    .line 393
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v32
.end method
