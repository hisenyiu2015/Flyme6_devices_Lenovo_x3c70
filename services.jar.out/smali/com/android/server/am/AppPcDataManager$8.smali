.class Lcom/android/server/am/AppPcDataManager$8;
.super Ljava/lang/Thread;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    iput-object p2, p0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 616
    const/4 v11, 0x0

    .line 617
    .local v11, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissionsInternal(Ljava/lang/String;)V
    invoke-static {v6, v0}, Lcom/android/server/am/AppPcDataManager;->access$2400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 620
    .local v20, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    const/16 v21, 0x1002

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 622
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    invoke-static {v6, v0}, Lcom/android/server/am/AppPcDataManager;->access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v13

    .line 623
    .local v13, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v6

    if-gtz v6, :cond_2

    .line 700
    :cond_0
    if-eqz v11, :cond_1

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 705
    .end local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .line 627
    .restart local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v14, "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 629
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    :try_start_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/common/AppPcPermissionItem;

    .line 631
    .local v2, "item":Lcom/lenovo/common/AppPcPermissionItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 635
    .local v10, "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v10, :cond_3

    .line 636
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 637
    .restart local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_3
    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 645
    .local v19, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    if-nez v19, :cond_4

    .line 646
    new-instance v19, Ljava/util/HashMap;

    .end local v19    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 647
    .restart local v19    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_4
    invoke-virtual {v2}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 652
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v10    # "codeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 653
    :catchall_1
    move-exception v6

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 697
    .end local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v14    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 700
    if-eqz v11, :cond_5

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$2200(Lcom/android/server/am/AppPcDataManager;)V

    goto/16 :goto_0

    .line 652
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v14    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 653
    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 655
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$2000()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "package=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v6, v21

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 657
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 658
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v6

    if-eqz v6, :cond_7

    .line 700
    if-eqz v11, :cond_1

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 661
    :cond_7
    :try_start_9
    const-string v6, "package"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 662
    .local v15, "packageColumnIndex":I
    const-string v6, "permission"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 663
    .local v17, "permissionColumnIndex":I
    const-string v6, "permission_status"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 664
    .local v18, "permissionStatusColumnIndex":I
    const-string v6, "extra_data_1"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 666
    .local v8, "backgroundStatusColumnIndex":I
    :cond_8
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "permissionName":Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v9

    .line 670
    .local v9, "code":I
    const/4 v6, -0x1

    if-eq v6, v9, :cond_9

    invoke-static {v4}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 690
    :cond_9
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 695
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v8    # "backgroundStatusColumnIndex":I
    .end local v9    # "code":I
    .end local v15    # "packageColumnIndex":I
    .end local v17    # "permissionColumnIndex":I
    .end local v18    # "permissionStatusColumnIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    new-instance v21, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    invoke-static {v6, v0}, Lcom/android/server/am/AppPcDataManager;->access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 700
    if-eqz v11, :cond_5

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 675
    .restart local v4    # "permissionName":Ljava/lang/String;
    .restart local v8    # "backgroundStatusColumnIndex":I
    .restart local v9    # "code":I
    .restart local v15    # "packageColumnIndex":I
    .restart local v17    # "permissionColumnIndex":I
    .restart local v18    # "permissionStatusColumnIndex":I
    :cond_b
    :try_start_a
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 680
    .local v5, "status":I
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v7

    .line 682
    .local v7, "backgroundStatus":I
    new-instance v2, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 688
    .restart local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    .line 689
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 700
    .end local v2    # "item":Lcom/lenovo/common/AppPcPermissionItem;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "status":I
    .end local v7    # "backgroundStatus":I
    .end local v8    # "backgroundStatusColumnIndex":I
    .end local v9    # "code":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v14    # "notInDbItemsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lenovo/common/AppPcPermissionItem;>;"
    .end local v15    # "packageColumnIndex":I
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "permissionColumnIndex":I
    .end local v18    # "permissionStatusColumnIndex":I
    :catchall_2
    move-exception v6

    if-eqz v11, :cond_c

    .line 701
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v6
.end method
