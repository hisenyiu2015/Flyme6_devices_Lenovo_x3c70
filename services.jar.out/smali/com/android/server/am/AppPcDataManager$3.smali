.class Lcom/android/server/am/AppPcDataManager$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcDataManager;
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
    .line 147
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 152
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "packageName":Ljava/lang/String;
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 155
    .local v3, "isReplacing":Z
    iget-object v8, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v8, v5, v3}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    .line 182
    .end local v3    # "isReplacing":Z
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 158
    .restart local v3    # "isReplacing":Z
    if-nez v3, :cond_0

    .line 162
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 163
    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V
    invoke-static {v8, v5}, Lcom/android/server/am/AppPcDataManager;->access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v3    # "isReplacing":Z
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v8, v5, v10}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 167
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "pkgList":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 170
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 171
    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v8, v5, v10}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgList":[Ljava/lang/String;
    :cond_4
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 175
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "pkgList":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 177
    move-object v1, v6

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 178
    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V
    invoke-static {v8, v5}, Lcom/android/server/am/AppPcDataManager;->access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
