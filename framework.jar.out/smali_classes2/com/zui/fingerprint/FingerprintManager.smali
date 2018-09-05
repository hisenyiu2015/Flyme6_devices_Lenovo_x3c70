.class public Lcom/zui/fingerprint/FingerprintManager;
.super Lcom/zui/fingerprint/FingerprintConstant;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;,
        Lcom/zui/fingerprint/FingerprintManager$EventHandler;,
        Lcom/zui/fingerprint/FingerprintManager$GuidedData;,
        Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;,
        Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    }
.end annotation


# static fields
.field private static mbOpenResult:Z


# instance fields
.field private mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

.field private mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

.field private mEnrolUserData:I

.field private mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

.field private mFingerListener:Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;

.field private mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

.field private mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

.field private mIdentifyUserData:I

.field private mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/fingerprint/FingerprintManager;->mbOpenResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintConstant;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    .line 30
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 32
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    .line 33
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 34
    iput-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mFingerListener:Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;

    .line 35
    iput v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    .line 36
    iput v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 418
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->getService()I

    .line 419
    return-void
.end method

.method private PackGuidedData([I)Z
    .locals 14
    .param p1, "enrolInfo"    # [I

    .prologue
    .line 158
    array-length v2, p1

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    .line 160
    const-string v2, "PackGuidedData enrolInfo is not 17"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 164
    :cond_0
    const/4 v2, 0x0

    aget v12, p1, v2

    .line 165
    .local v12, "progress":I
    const-string v2, "PackGuidedData progress = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v12}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setProgress(I)V

    .line 168
    new-instance v0, Lcom/zui/fingerprint/RectParcelable;

    const/4 v2, 0x1

    aget v1, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    aget v5, p1, v5

    const/4 v6, 0x6

    aget v6, p1, v6

    const/4 v7, 0x7

    aget v7, p1, v7

    const/16 v8, 0x8

    aget v8, p1, v8

    invoke-direct/range {v0 .. v8}, Lcom/zui/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 169
    .local v0, "lastTouch":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData lastTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setLastTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 172
    new-instance v1, Lcom/zui/fingerprint/RectParcelable;

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    const/16 v5, 0xc

    aget v5, p1, v5

    const/16 v6, 0xd

    aget v6, p1, v6

    const/16 v7, 0xe

    aget v7, p1, v7

    const/16 v8, 0xf

    aget v8, p1, v8

    const/16 v9, 0x10

    aget v9, p1, v9

    invoke-direct/range {v1 .. v9}, Lcom/zui/fingerprint/RectParcelable;-><init>(IIIIIIII)V

    .line 173
    .local v1, "nextTouch":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData nextTouch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v1}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->setNextTouch(Lcom/zui/fingerprint/RectParcelable;)V

    .line 176
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2, v0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->addMaskList(Lcom/zui/fingerprint/RectParcelable;)V

    .line 178
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-virtual {v2}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->getMaskList()Ljava/util/ArrayList;

    move-result-object v11

    .line 179
    .local v11, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zui/fingerprint/RectParcelable;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    .line 181
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/fingerprint/RectParcelable;

    .line 182
    .local v13, "temp":Lcom/zui/fingerprint/RectParcelable;
    const-string v2, "PackGuidedData guidedMaskList %d: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Lcom/zui/fingerprint/RectParcelable;->getRectString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 185
    .end local v13    # "temp":Lcom/zui/fingerprint/RectParcelable;
    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/fingerprint/FingerprintManager;[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;
    .param p1, "x1"    # [I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/zui/fingerprint/FingerprintManager;->PackGuidedData([I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$GuidedData;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zui/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I

    return v0
.end method

.method static synthetic access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/fingerprint/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    return v0
.end method

.method static synthetic access$600(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mFingerListener:Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/zui/fingerprint/FingerprintManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    return-object v0
.end method

.method private closeFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 770
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FingerprintManger closeFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 772
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    const/16 v4, 0x34

    array-length v5, v0

    invoke-interface {v3, v4, v0, v5}, Landroid/hardware/fingerprint/extension/IFingerprintService;->execCommand(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    const/4 v2, 0x1

    .end local v0    # "bytes":[B
    :goto_0
    return v2

    .line 774
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 692
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 694
    const-string v7, "copyDir srcDir %s not exists!"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :goto_0
    return v5

    .line 698
    :cond_0
    invoke-direct {p0, p2}, Lcom/zui/fingerprint/FingerprintManager;->mkDir(Ljava/lang/String;)Z

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 701
    .local v2, "srcFileArray":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 702
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 704
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "tempSrc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "tempDest":Ljava/lang/String;
    const-string v7, "copyDir is directory, src = %s dest = %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object v3, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-direct {p0, v4, v3}, Lcom/zui/fingerprint/FingerprintManager;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 701
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    .end local v3    # "tempDest":Ljava/lang/String;
    .end local v4    # "tempSrc":Ljava/lang/String;
    :cond_1
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 711
    .restart local v4    # "tempSrc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .restart local v3    # "tempDest":Ljava/lang/String;
    const-string v7, "copyDir is file, src = %s dest = %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v5

    aput-object v3, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    invoke-direct {p0, v4, v3}, Lcom/zui/fingerprint/FingerprintManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .end local v3    # "tempDest":Ljava/lang/String;
    .end local v4    # "tempSrc":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 716
    goto/16 :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srcFileName"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .prologue
    .line 783
    const/4 v4, 0x0

    .line 785
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/zui/fingerprint/FingerprintManager;->openFile(Ljava/lang/String;)Z

    .line 786
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 789
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 792
    invoke-direct {p0, v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->writeContent([BI)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 795
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 796
    .end local v0    # "buffer":[B
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 799
    if-eqz v4, :cond_0

    .line 800
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 801
    const/4 v4, 0x0

    .line 807
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 794
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-direct {p0, p2}, Lcom/zui/fingerprint/FingerprintManager;->closeFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 799
    if-eqz v5, :cond_3

    .line 800
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 801
    const/4 v4, 0x0

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 803
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 804
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 806
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 803
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 804
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 798
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 799
    :goto_3
    if-eqz v4, :cond_2

    .line 800
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 801
    const/4 v4, 0x0

    .line 805
    :cond_2
    :goto_4
    throw v6

    .line 803
    :catch_3
    move-exception v3

    .line 804
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 798
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 795
    .end local v0    # "buffer":[B
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getService()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 313
    const-string v9, "FingerprintManger getService enter"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    const/4 v7, 0x0

    .line 318
    .local v7, "service":Landroid/os/IBinder;
    :try_start_0
    const-string v9, "android.os.ServiceManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 319
    .local v8, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "getService"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 320
    .local v3, "getService":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ExtensionFingerprint"

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v7, v0

    .line 321
    if-nez v7, :cond_0

    .line 323
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "FingerprintManager getService return null Exception"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v8    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "FingerprintManager get service Exception"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    .restart local v8    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    new-instance v1, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;

    invoke-direct {v1, p0, v7}, Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;-><init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/IBinder;)V

    .line 329
    .local v1, "deathHandler":Lcom/zui/fingerprint/FingerprintManager$BinderDeathHandler;
    const/4 v9, 0x0

    invoke-interface {v7, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    invoke-static {v7}, Landroid/hardware/fingerprint/extension/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/extension/IFingerprintService;

    move-result-object v9

    iput-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    .line 339
    iget-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    if-nez v9, :cond_1

    .line 341
    const-string v9, "get serviceimpl interface is failed"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "get serviceimpl interface is failed"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 345
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 346
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_2

    .line 348
    const-string v9, "FingerprintManger looper is null"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "FingerprintManager looper is null"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 352
    :cond_2
    new-instance v4, Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    invoke-direct {v4, p0, v5}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;-><init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    .line 353
    .local v4, "handler":Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    iput-object v4, p0, Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    .line 354
    new-instance v9, Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    invoke-direct {v9, p0}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;-><init>(Lcom/zui/fingerprint/FingerprintManager;)V

    iput-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    .line 356
    const-string v9, "FingerprintManger IFingerprintClient before"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    new-instance v9, Lcom/zui/fingerprint/FingerprintManager$1;

    invoke-direct {v9, p0}, Lcom/zui/fingerprint/FingerprintManager$1;-><init>(Lcom/zui/fingerprint/FingerprintManager;)V

    iput-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    .line 392
    :try_start_2
    const-string v9, "FingerprintManger getService open before"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v9, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v10, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-interface {v9, v10}, Landroid/hardware/fingerprint/extension/IFingerprintService;->open(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I

    move-result v6

    .line 394
    .local v6, "openResult":I
    const-string v9, "FingerprintManger getService open %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    const/16 v9, 0x64

    if-eq v6, v9, :cond_3

    .line 397
    const/4 v9, 0x0

    sput-boolean v9, Lcom/zui/fingerprint/FingerprintManager;->mbOpenResult:Z

    .line 398
    const-string v9, "FingerprintManager serviceimpl open failed"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "FingerprintManager serviceimpl open failed"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 409
    .end local v6    # "openResult":I
    :catch_1
    move-exception v2

    .line 411
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 412
    new-instance v9, Lcom/zui/fingerprint/FingerprintException;

    const-string v10, "FingerprintManager serviceimpl open Exception"

    invoke-direct {v9, v10}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 403
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "openResult":I
    :cond_3
    const/4 v9, 0x1

    :try_start_3
    sput-boolean v9, Lcom/zui/fingerprint/FingerprintManager;->mbOpenResult:Z

    .line 404
    const-string v9, "FingerprintManager serviceimpl open success!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 407
    return v6
.end method

.method private gobalCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    if-nez v0, :cond_0

    .line 425
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "binder is null, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/extension/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    const-string v0, "FingerprintManger get service failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "service binder is died, please reopen FingerprintManager!"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    return-void
.end method

.method private mkDir(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 724
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FingerprintManger mkDir = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 726
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    const/16 v4, 0x36

    array-length v5, v0

    invoke-interface {v3, v4, v0, v5}, Landroid/hardware/fingerprint/extension/IFingerprintService;->execCommand(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    const/4 v2, 0x1

    .end local v0    # "bytes":[B
    :goto_0
    return v2

    .line 728
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static open()Lcom/zui/fingerprint/FingerprintManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "mInst":Lcom/zui/fingerprint/FingerprintManager;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 290
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 292
    new-instance v1, Lcom/zui/fingerprint/FingerprintManager;

    .end local v1    # "mInst":Lcom/zui/fingerprint/FingerprintManager;
    invoke-direct {v1}, Lcom/zui/fingerprint/FingerprintManager;-><init>()V

    .line 293
    .restart local v1    # "mInst":Lcom/zui/fingerprint/FingerprintManager;
    sget-boolean v2, Lcom/zui/fingerprint/FingerprintManager;->mbOpenResult:Z

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "FingerprintManger open success!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    .end local v1    # "mInst":Lcom/zui/fingerprint/FingerprintManager;
    :goto_0
    return-object v1

    .line 300
    .restart local v1    # "mInst":Lcom/zui/fingerprint/FingerprintManager;
    :cond_0
    const-string v2, "FingerprintManger open failed return null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    :cond_1
    const-string v2, "FingerprintManger getMainLooper is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "current getMainLooper is null"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private openFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 740
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FingerprintManger copenfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zui/fingerprint/FingerprintManager;->logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 742
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    const/16 v4, 0x33

    array-length v5, v0

    invoke-interface {v3, v4, v0, v5}, Landroid/hardware/fingerprint/extension/IFingerprintService;->execCommand(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    const/4 v2, 0x1

    .end local v0    # "bytes":[B
    :goto_0
    return v2

    .line 744
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeContent([BI)Z
    .locals 3
    .param p1, "param"    # [B
    .param p2, "len"    # I

    .prologue
    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    const/16 v2, 0x37

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/fingerprint/extension/IFingerprintService;->execCommand(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 761
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 480
    const-string v2, "FingerprintManger cancel"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 483
    const/16 v1, 0x65

    .line 486
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-interface {v2, v3, v4}, Landroid/hardware/fingerprint/extension/IFingerprintService;->cancel(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 491
    const-string v2, "FingerprintManger cancel failed!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager cancel Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public factoryTest()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 624
    const-string v1, "FingerprintManger factoryTest"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 626
    const/16 v0, 0x65

    .line 628
    .local v0, "result":I
    return v0
.end method

.method public getFpIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 545
    const-string v2, "FingerprintManger getFpIds"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 548
    const/4 v1, 0x0

    .line 551
    .local v1, "result":[I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintManger getFpIds userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/fingerprint/extension/IFingerprintService;->getIds(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 561
    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 557
    const-string v2, "FingerprintManger getIds failed,RemoteException!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getIds Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 6
    .param p1, "fingerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 573
    const-string v2, "FingerprintManger getFpName"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 576
    const-string v1, ""

    .line 579
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Landroid/hardware/fingerprint/extension/IFingerprintService;->getFpName(Landroid/hardware/fingerprint/extension/IFingerprintClient;II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 587
    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 584
    const-string v2, "FingerprintManger getFpName failed,RemoteException!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager getFpName Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public imageQuality()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    .line 639
    const-string v1, "FingerprintManger imageQuality"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 641
    const/16 v0, 0x65

    .line 643
    .local v0, "result":I
    return v0
.end method

.method public invokeCmd([B)[B
    .locals 5
    .param p1, "param"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 655
    const-string v2, "FingerprintManger invokeCmd"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    new-array v1, v4, [B

    .line 661
    .local v1, "result":[B
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/hardware/fingerprint/extension/IFingerprintService;->invokeCmd([BI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 670
    return-object v1

    .line 663
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 666
    const-string v2, "FingerprintManger invokeCmd failed!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    throw v0
.end method

.method public release()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 437
    const-string v2, "FingerprintManger release"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    const/16 v1, 0x65

    .line 441
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    invoke-interface {v2}, Landroid/hardware/fingerprint/extension/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/extension/IFingerprintService;->release(Landroid/hardware/fingerprint/extension/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    .line 454
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 449
    const-string v2, "FingerprintManger release failed!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager release Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendCommand(I)I
    .locals 5
    .param p1, "command"    # I

    .prologue
    const/4 v4, 0x0

    .line 599
    const-string v2, "FingerprintManger sendCommand"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    const/4 v1, -0x1

    .line 605
    .local v1, "result":I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintManger sendCommand command is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/extension/IFingerprintService;->sendCommand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 613
    :goto_0
    return v1

    .line 608
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 611
    const-string v2, "FingerprintManger sendCommand failed,RemoteException!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCameraType(I)I
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 459
    const-string v2, "FingerprintManger setCameraType"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    const/16 v1, 0x65

    .line 463
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    invoke-interface {v2}, Landroid/hardware/fingerprint/extension/IFingerprintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    invoke-interface {v2, v3, p1}, Landroid/hardware/fingerprint/extension/IFingerprintService;->setCameraType(Landroid/hardware/fingerprint/extension/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    :cond_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    const-string v2, "FingerprintManger setCameraType failed!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    new-instance v2, Lcom/zui/fingerprint/FingerprintException;

    const-string v3, "FingerprintManager setCameraType Exception"

    invoke-direct {v2, v3}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public starFpManager(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 681
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.zui.fingerprintsettings"

    .line 683
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "com.zui.fingerprintsettings.FpSettingsActivity"

    .line 684
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 685
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 687
    const/16 v3, 0x64

    return v3
.end method

.method public startIdentify(Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;I[II)I
    .locals 10
    .param p1, "identifyListener"    # Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zui/fingerprint/FingerprintException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 511
    const-string v0, "FingerprintManger startIdentify"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-direct {p0}, Lcom/zui/fingerprint/FingerprintManager;->gobalCheck()V

    .line 514
    if-nez p1, :cond_0

    .line 516
    const-string v0, "FingerprintManger identifyListener is null"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "FingerprintManger identifyListener is null"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    .line 521
    iput p4, p0, Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I

    .line 523
    const/16 v8, 0x65

    .line 526
    .local v8, "result":I
    :try_start_0
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/extension/IFingerprintService;

    iget-object v1, p0, Lcom/zui/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;

    int-to-long v4, p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/extension/IFingerprintService;->startIdentify(Landroid/os/IBinder;Landroid/hardware/fingerprint/extension/IFingerprintClient;[IJI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 534
    return v8

    .line 528
    :catch_0
    move-exception v7

    .line 530
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 531
    const-string v0, "FingerprintManger startIdentify failed,RemoteException!"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    new-instance v0, Lcom/zui/fingerprint/FingerprintException;

    const-string v1, "FingerprintManager startIdentify Exception"

    invoke-direct {v0, v1}, Lcom/zui/fingerprint/FingerprintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTA(Ljava/lang/String;)V
    .locals 3
    .param p1, "taPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTA copyDir enter taPath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    const-string v0, "/data/qsapp"

    invoke-direct {p0, p1, v0}, Lcom/zui/fingerprint/FingerprintManager;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 650
    const-string v0, "updateTA copyDir end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zui/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    return-void
.end method
