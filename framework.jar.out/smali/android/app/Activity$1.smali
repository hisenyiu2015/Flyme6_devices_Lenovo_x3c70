.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->initTintAndIconTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 4979
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4981
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->getTintAndIconThemeColors()V
    invoke-static {v0}, Landroid/app/Activity;->access$200(Landroid/app/Activity;)V

    .line 4982
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarTint:Z
    invoke-static {v0}, Landroid/app/Activity;->access$300(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4983
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v0}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4984
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4985
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v1}, Landroid/app/Activity;->access$500(I)Z

    move-result v1

    # invokes: Landroid/app/Activity;->setLightStatusBar(Z)V
    invoke-static {v0, v1}, Landroid/app/Activity;->access$600(Landroid/app/Activity;Z)V

    .line 4996
    :cond_0
    :goto_0
    return-void

    .line 4988
    :cond_1
    const-string v0, "Fail to get the tint color"

    # invokes: Landroid/app/Activity;->tintLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/app/Activity;->access$700(Ljava/lang/String;)V

    .line 4989
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    const/4 v1, 0x0

    # invokes: Landroid/app/Activity;->setFlags(Z)V
    invoke-static {v0, v1}, Landroid/app/Activity;->access$800(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 4991
    :cond_2
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z
    invoke-static {v0}, Landroid/app/Activity;->access$900(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4992
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v0}, Landroid/app/Activity;->access$1000(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4993
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v1}, Landroid/app/Activity;->access$1000(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v1}, Landroid/app/Activity;->access$500(I)Z

    move-result v1

    # invokes: Landroid/app/Activity;->setLightStatusBar(Z)V
    invoke-static {v0, v1}, Landroid/app/Activity;->access$600(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
