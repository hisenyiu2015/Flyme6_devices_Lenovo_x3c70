.class Ltheme/content/res/AppIconThemeServices$1$1;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltheme/content/res/AppIconThemeServices$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltheme/content/res/AppIconThemeServices$1;

.field final synthetic val$themePath:Ljava/lang/String;

.field final synthetic val$themeResId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltheme/content/res/AppIconThemeServices$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices$1$1;->this$1:Ltheme/content/res/AppIconThemeServices$1;

    iput-object p2, p0, Ltheme/content/res/AppIconThemeServices$1$1;->val$themePath:Ljava/lang/String;

    iput-object p3, p0, Ltheme/content/res/AppIconThemeServices$1$1;->val$themeResId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices$1$1;->this$1:Ltheme/content/res/AppIconThemeServices$1;

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices$1;->this$0:Ltheme/content/res/AppIconThemeServices;

    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices$1$1;->val$themePath:Ljava/lang/String;

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices$1$1;->val$themeResId:Ljava/lang/String;

    # invokes: Ltheme/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Ltheme/content/res/AppIconThemeServices;->access$000(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
