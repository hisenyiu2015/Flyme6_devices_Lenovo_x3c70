.class public Lcom/lenovo/romui/hook/RomUI_HookPhoneWindowManager;
.super Ljava/lang/Object;
.source "RomUI_HookPhoneWindowManager.java"


# static fields
.field public static final PRIVATE_FLAG_ROMUI_USING_THEME_DEVICEDEFAULT:I = 0x20000000

.field public static final STATUS_BAR_ROMUI_USING_THEME_DEVICEDEFAULT:I = 0x40

.field private static final TAG:Ljava/lang/String; = "RomUI_HookPhoneWindowManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 3
    .param p0, "transWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 37
    .local v0, "isUsingThemeDeviceDefault":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    or-int/lit8 p2, p2, 0x40

    .line 47
    .end local v0    # "isUsingThemeDeviceDefault":Z
    :cond_0
    :goto_1
    return p2

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    .restart local v0    # "isUsingThemeDeviceDefault":Z
    :cond_2
    and-int/lit8 p2, p2, -0x41

    goto :goto_1
.end method
