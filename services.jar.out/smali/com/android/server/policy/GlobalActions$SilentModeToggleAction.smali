.class Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1157
    const v1, 0x9020064

    const v2, 0x9020063

    const v3, 0x1040130

    const v4, 0x1040131

    const v5, 0x1040132

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1164
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->setMute(Z)V

    .line 1211
    return-void
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ringtone"

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1193
    return-void

    .line 1191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 3

    .prologue
    const v2, 0x9020064

    .line 1169
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1173
    .local v0, "ringerMode":I
    if-nez v0, :cond_0

    .line 1174
    iput v2, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    .line 1183
    :goto_0
    return-void

    .line 1176
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1177
    const v1, 0x902007a

    iput v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0

    .line 1180
    :cond_1
    iput v2, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0
.end method
