.class Lcom/android/server/policy/GlobalActions$VRToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1670
    const v1, 0x1080443

    const v2, 0x1080442

    const v3, 0x1040082

    const v4, 0x1040084

    const v5, 0x1040083

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1675
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1678
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->getSplitStatus()I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2200(Lcom/android/server/policy/GlobalActions;)I

    move-result v2

    .line 1679
    .local v2, "status":I
    if-eqz v2, :cond_1

    move v1, v3

    .line 1680
    .local v1, "state":Z
    :goto_0
    if-ne p1, v1, :cond_2

    .line 1696
    :cond_0
    :goto_1
    return-void

    .end local v1    # "state":Z
    :cond_1
    move v1, v4

    .line 1679
    goto :goto_0

    .line 1683
    .restart local v1    # "state":Z
    :cond_2
    const-string v5, "sys.globalsinglehand.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1684
    .local v0, "singleHandisOn":Z
    if-nez v0, :cond_0

    .line 1687
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v6, "com.snailvr.manager"

    # invokes: Lcom/android/server/policy/GlobalActions;->isAppOnForeground(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/server/policy/GlobalActions;->access$2300(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1690
    if-nez v2, :cond_3

    .line 1691
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v4, v3}, Lcom/android/server/policy/GlobalActions;->access$2400(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_1

    .line 1692
    :cond_3
    if-ne v2, v3, :cond_0

    .line 1693
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$2400(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1709
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 2

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->getSplitStatus()I
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$2200(Lcom/android/server/policy/GlobalActions;)I

    move-result v0

    .line 1700
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 1701
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1703
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$VRToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method
