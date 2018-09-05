.class Lcom/android/server/SystemServer$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1703
    iget-object v2, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->bootPrecent:I
    invoke-static {v2}, Lcom/android/server/SystemServer;->access$500(Lcom/android/server/SystemServer;)I

    move-result v1

    .line 1704
    .local v1, "percent":I
    :goto_0
    const/16 v2, 0x5a

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->isAddPreCrent:Z
    invoke-static {v2}, Lcom/android/server/SystemServer;->access$600(Lcom/android/server/SystemServer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1705
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BOOT precent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    add-int/lit8 v1, v1, 0x1

    .line 1707
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    .line 1709
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBootPrecent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1714
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
