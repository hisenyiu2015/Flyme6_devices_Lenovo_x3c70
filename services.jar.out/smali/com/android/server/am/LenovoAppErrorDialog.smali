.class final Lcom/android/server/am/LenovoAppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "LenovoAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_FEEDBACK:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v3, Lcom/android/server/am/LenovoAppErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/LenovoAppErrorDialog$1;-><init>(Lcom/android/server/am/LenovoAppErrorDialog;)V

    iput-object v3, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 55
    iput-object p4, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 56
    iput-object p3, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 58
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "name":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 60
    const v3, 0x104037a

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LenovoAppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/LenovoAppErrorDialog;->setCancelable(Z)V

    .line 74
    const/4 v3, -0x2

    const v4, 0x1040381

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/LenovoAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 78
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 79
    const v3, 0x1040382

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v8, v3, v4}, Lcom/android/server/am/LenovoAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 100
    :goto_1
    const v3, 0x1040379

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LenovoAppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/LenovoAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 102
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/am/LenovoAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    iget-boolean v3, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/server/am/LenovoAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v6, 0x493e0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void

    .line 64
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "name":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 65
    .restart local v1    # "name":Ljava/lang/CharSequence;
    const v3, 0x104037b

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LenovoAppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 83
    :cond_2
    const v3, 0x9090043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v8, v3, v4}, Lcom/android/server/am/LenovoAppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/LenovoAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LenovoAppErrorDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LenovoAppErrorDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LenovoAppErrorDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/LenovoAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LenovoAppErrorDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/LenovoAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LenovoAppErrorDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/am/LenovoAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 150
    return-void
.end method
