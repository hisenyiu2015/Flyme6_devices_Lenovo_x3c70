.class Lcom/android/server/displayeffect/DisplayEffectService$1;
.super Ljava/lang/Object;
.source "DisplayEffectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/displayeffect/DisplayEffectService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/DisplayEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/displayeffect/DisplayEffectService;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 81
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/displayeffect/DisplayEffectService;->access$000(Lcom/android/server/displayeffect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_mode"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, "initDisplayMode":I
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-virtual {v4}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMode()[Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/displayeffect/DisplayEffectService;->access$102(Lcom/android/server/displayeffect/DisplayEffectService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-virtual {v4}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/displayeffect/DisplayEffectService;->access$202(Lcom/android/server/displayeffect/DisplayEffectService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/displayeffect/DisplayEffectService;->access$200(Lcom/android/server/displayeffect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/displayeffect/DisplayEffectService;->access$200(Lcom/android/server/displayeffect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/displayeffect/DisplayEffectService;->access$200(Lcom/android/server/displayeffect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-virtual {v3, v0}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMaxLevel(I)I

    move-result v2

    .line 89
    .local v2, "result":I
    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/displayeffect/DisplayEffectService;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSupportedMaxLevel Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "result":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService$1;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # invokes: Lcom/android/server/displayeffect/DisplayEffectService;->initDisplayEffect(I)V
    invoke-static {v3, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->access$400(Lcom/android/server/displayeffect/DisplayEffectService;I)V

    .line 92
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
