.class Lcom/android/server/am/AppPcDataManager$7;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->startSyncUserPermissions()V
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
    .line 465
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 468
    const/4 v11, 0x0

    .line 470
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 471
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 473
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 474
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x1002

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 476
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v18, "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 478
    .local v15, "info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    if-eqz v11, :cond_1

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 564
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v18    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 482
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    .restart local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v18    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    invoke-static {v6, v15}, Lcom/android/server/am/AppPcDataManager;->access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v17

    .line 483
    .local v17, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 485
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v25

    monitor-enter v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 486
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/common/AppPcPermissionItem;

    .line 487
    .local v2, "item":Lcom/lenovo/common/AppPcPermissionItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 491
    .local v10, "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v10, :cond_3

    .line 492
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 493
    .restart local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_3
    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    .line 501
    .local v22, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v22, :cond_4

    .line 502
    new-instance v22, Ljava/util/HashMap;

    .end local v22    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 503
    .restart local v22    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_4
    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 508
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v22    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 509
    :catchall_1
    move-exception v6

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 554
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v18    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 555
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "Security/AppPcDataManager"

    const-string v24, "startSyncUserPermissions error"

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 558
    if-eqz v11, :cond_5

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$2200(Lcom/android/server/am/AppPcDataManager;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    # setter for: Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;
    invoke-static {v6, v0}, Lcom/android/server/am/AppPcDataManager;->access$2302(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_1

    .line 508
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    .restart local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v18    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 509
    :try_start_8
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 514
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    :cond_7
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$2000()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 515
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 516
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v6

    if-eqz v6, :cond_8

    .line 558
    if-eqz v11, :cond_1

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 519
    :cond_8
    :try_start_a
    const-string v6, "package"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 520
    .local v19, "packageColumnIndex":I
    const-string v6, "permission"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 521
    .local v20, "permissionColumnIndex":I
    const-string v6, "permission_status"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 522
    .local v21, "permissionStatusColumnIndex":I
    const-string v6, "extra_data_1"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 524
    .local v8, "backgroundStatusColumnIndex":I
    :cond_9
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "permissionName":Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v9

    .line 528
    .local v9, "code":I
    const/4 v6, -0x1

    if-eq v6, v9, :cond_a

    invoke-static {v4}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 548
    :cond_a
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 553
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v8    # "backgroundStatusColumnIndex":I
    .end local v9    # "code":I
    .end local v19    # "packageColumnIndex":I
    .end local v20    # "permissionColumnIndex":I
    .end local v21    # "permissionStatusColumnIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    invoke-static {v6, v0}, Lcom/android/server/am/AppPcDataManager;->access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 558
    if-eqz v11, :cond_5

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 533
    .restart local v4    # "permissionName":Ljava/lang/String;
    .restart local v8    # "backgroundStatusColumnIndex":I
    .restart local v9    # "code":I
    .restart local v19    # "packageColumnIndex":I
    .restart local v20    # "permissionColumnIndex":I
    .restart local v21    # "permissionStatusColumnIndex":I
    :cond_c
    :try_start_b
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 538
    .local v5, "status":I
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v7

    .line 540
    .local v7, "backgroundStatus":I
    new-instance v2, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 546
    .restart local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 558
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v7    # "backgroundStatus":I
    .end local v8    # "backgroundStatusColumnIndex":I
    .end local v9    # "code":I
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v18    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v19    # "packageColumnIndex":I
    .end local v20    # "permissionColumnIndex":I
    .end local v21    # "permissionStatusColumnIndex":I
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v6

    if-eqz v11, :cond_d

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v6
.end method
