.class Lcom/android/server/policy/GlobalActions$1$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$1;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$1;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1$1;->this$1:Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1$1;->this$1:Lcom/android/server/policy/GlobalActions$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirModeConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1$1;->this$1:Lcom/android/server/policy/GlobalActions$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;Z)V

    .line 315
    return-void
.end method
