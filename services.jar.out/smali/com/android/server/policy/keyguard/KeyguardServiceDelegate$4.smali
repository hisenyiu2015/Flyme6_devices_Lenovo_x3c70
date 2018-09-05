.class Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$4;
.super Landroid/os/Handler;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$4;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 443
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 449
    :goto_0
    return-void

    .line 445
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$4;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$4;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->reconnectKeyguard(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$600(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/content/Context;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$4;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    # invokes: Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->reconnectKeyguardDelayed()V
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
