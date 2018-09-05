.class Lcom/android/server/policy/PhoneWindowManager$27;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 7494
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$27;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x52

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7497
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$27;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 7498
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$27;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;II)V

    .line 7499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$27;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 7500
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$27;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7501
    return-void
.end method
