.class public Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;
.super Ljava/lang/Object;
.source "RomUI_HookPhoneWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRomUI_isUseThemeDeviceDefault:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/content/Context;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_isUseThemeDeviceDefault:I

    .line 23
    iput-object p1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    .line 24
    iput-object p2, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public setThemeDeviceDefaultFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    iget-object v1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    const v2, 0x9010002

    invoke-static {v1, v2}, Lcom/lenovo/romui/RomUI;->getDataFromAttribute(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_isUseThemeDeviceDefault:I

    .line 38
    const/4 v0, 0x1

    .line 40
    .local v0, "USING_THEME_DEVICEDEFAULT":I
    iget v1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_isUseThemeDeviceDefault:I

    if-ne v3, v1, :cond_0

    .line 41
    const-string v1, "wangcy9"

    const-string v2, "using Theme.DeviceDefault / Theme.DeviceDefault.Light"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->romUI_setUseThemeDeviceDefault(Z)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "wangcy9"

    const-string v2, "not using Theme.DeviceDefault / Theme.DeviceDefault.Light"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->romUI_setUseThemeDeviceDefault(Z)V

    goto :goto_0
.end method
