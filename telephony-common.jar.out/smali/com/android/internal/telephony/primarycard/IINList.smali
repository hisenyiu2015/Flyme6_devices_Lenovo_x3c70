.class public Lcom/android/internal/telephony/primarycard/IINList;
.super Ljava/lang/Object;
.source "IINList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;,
        Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "IIN_LIST"

.field private static instance:Lcom/android/internal/telephony/primarycard/IINList;

.field public static packageName:Ljava/lang/String;


# instance fields
.field private final iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue",
            "<",
            "Lcom/android/internal/telephony/primarycard/IINList$IINInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final iinSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "com.android.frameworks.telresources"

    sput-object v0, Lcom/android/internal/telephony/primarycard/IINList;->packageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    new-instance v1, Lcom/android/internal/telephony/primarycard/IINList$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/primarycard/IINList$1;-><init>(Lcom/android/internal/telephony/primarycard/IINList;)V

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/IINList;->loadIINSpnMap()V

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/IINList;->loadIINConfigs()V

    .line 132
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const-class v1, Lcom/android/internal/telephony/primarycard/IINList;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/internal/telephony/primarycard/IINList;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/primarycard/IINList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    .line 139
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/IINList;->instance:Lcom/android/internal/telephony/primarycard/IINList;

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadIINConfigs()V
    .locals 8

    .prologue
    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v5}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->clear()V

    .line 226
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/primarycard/IINList;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 227
    .local v4, "r":Landroid/content/res/Resources;
    if-nez v4, :cond_0

    .line 228
    const-string v5, "IIN_LIST"

    const-string v6, "res is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    const-string v5, "iins_conf"

    const-string v6, "xml"

    sget-object v7, Lcom/android/internal/telephony/primarycard/IINList;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, "id":I
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 232
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string v5, "iins"

    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 233
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 234
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 235
    new-instance v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;-><init>()V

    .line 236
    .local v2, "iinInfo":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    const/4 v5, 0x0

    const-string v6, "pattern"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    .line 237
    const/4 v5, 0x0

    const-string v6, "app_type"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    .line 238
    const/4 v5, 0x0

    const-string v6, "priority"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    .line 239
    const/4 v5, 0x0

    const-string v6, "network"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    .line 241
    const/4 v5, 0x0

    const-string v6, "mode"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    .line 243
    iget-object v5, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v2    # "iinInfo":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load iins_conf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :try_start_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iins loaded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V

    .line 258
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_2
    return-void

    .line 249
    .restart local v1    # "id":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 253
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v5, "IIN_LIST"

    const-string v6, "loadIINConfigs:  NameNotFoundException!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "id":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 253
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private loadIINSpnMap()V
    .locals 9

    .prologue
    .line 189
    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 191
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/primarycard/IINList;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 192
    .local v4, "r":Landroid/content/res/Resources;
    if-nez v4, :cond_0

    .line 193
    const-string v6, "IIN_LIST"

    const-string v7, "res is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const-string v6, "iins"

    const-string v7, "xml"

    sget-object v8, Lcom/android/internal/telephony/primarycard/IINList;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "id":I
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 198
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string v6, "iins"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 199
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 200
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 201
    const/4 v6, 0x0

    const-string v7, "iin"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "iin":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "spn"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "spn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    iget-object v6, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v2    # "iin":Ljava/lang/String;
    .end local v5    # "spn":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 212
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 215
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iinSpnMap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/primarycard/IINList;->logd(Ljava/lang/String;)V

    .line 221
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_2
    return-void

    .line 212
    .restart local v1    # "id":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 217
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "IIN_LIST"

    const-string v7, "loadIINSpnMap:  NameNotFoundException!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "id":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 217
    .end local v1    # "id":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "IIN_LIST"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method


# virtual methods
.method public getHighestPriority()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    iget v0, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v2, 0x0

    .line 160
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinConfigs:Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;

    invoke-virtual {v3}, Lcom/android/internal/telephony/primarycard/IINList$PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    .line 164
    .local v1, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->app:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->from(Lcom/android/internal/telephony/primarycard/IINList$IINInfo;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public getIINMode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 185
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->mode:I

    goto :goto_0
.end method

.method public getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 180
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->network:I

    goto :goto_0
.end method

.method public getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/primarycard/IINList$IINInfo;

    move-result-object v0

    .line 175
    .local v0, "iin":Lcom/android/internal/telephony/primarycard/IINList$IINInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/primarycard/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 152
    :cond_1
    :goto_0
    return-object v0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "spn":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/IINList;->iinSpnMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "spn":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "spn":Ljava/lang/String;
    goto :goto_0
.end method
