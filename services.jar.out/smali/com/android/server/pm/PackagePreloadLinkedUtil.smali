.class public Lcom/android/server/pm/PackagePreloadLinkedUtil;
.super Ljava/lang/Object;
.source "PackagePreloadLinkedUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LAST_PRELOAD_INFO_FILE:Ljava/lang/String; = "/cache/lastpreload"

.field private static final OPEN_FIRSTBOOT_PRELOAD_LINKED:Z = false

.field private static final SYSTEM_PRELOAD_DIR:Ljava/lang/String; = "/system/preload/"

.field private static final TAG:Ljava/lang/String; = "PackagePreloadLinkedUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLinkNewApp([Ljava/io/File;)V
    .locals 9
    .param p1, "newappfiles"    # [Ljava/io/File;

    .prologue
    .line 120
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp new apps size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_2

    .line 122
    move-object v1, p1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 123
    .local v0, "app":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 122
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ln -s /system/preload/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /data/app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->doExcute(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v0    # "app":Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private doExcute(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 141
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 142
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const/4 v2, 0x1

    .line 148
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;
    .locals 7
    .param p1, "apps"    # [Ljava/lang/String;
    .param p2, "isFirstboot"    # Z

    .prologue
    .line 77
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare new link preload app lists isFirstboot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "preloadappfiles":[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/preload/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "preloaddir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 104
    :goto_1
    return-object v4

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;-><init>(Lcom/android/server/pm/PackagePreloadLinkedUtil;Ljava/util/ArrayList;)V

    .line 100
    .local v0, "newnamefilter":Ljava/io/FilenameFilter;
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 104
    .end local v0    # "newnamefilter":Ljava/io/FilenameFilter;
    .end local v1    # "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 110
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 111
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 112
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "fil"    # Ljava/io/File;

    .prologue
    .line 152
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 153
    .local v0, "afile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 155
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/16 v6, 0xa

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 165
    .local v4, "lastpreloadlinkinfo":Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 167
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "lastpreloadlinkinfo":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    return-object v4

    .line 160
    :catch_0
    move-exception v6

    .line 165
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "Failed to readFile"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 162
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 160
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 174
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 175
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 182
    :goto_1
    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 181
    :cond_1
    if-ne v0, p3, :cond_2

    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 184
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public startSystemPreloadUpgrade(ZZ)V
    .locals 9
    .param p1, "isFirstboot"    # Z
    .param p2, "isUpgrade"    # Z

    .prologue
    .line 40
    const-string v6, "vold.decrypt"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "decrypt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 43
    .local v0, "bDecrypt":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    :cond_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 51
    :cond_1
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "no need to start link new preload app to /data/app/ "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 50
    :cond_2
    if-nez v0, :cond_1

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "lastPreapplist":[Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v6, "/cache/lastpreload"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "lastpreloadF":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 60
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "cur":Ljava/lang/String;
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read lastpreload cache app cur: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz v1, :cond_3

    .line 63
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_3
    if-eqz p1, :cond_4

    :cond_4
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v5

    .line 70
    .local v5, "newappfiles":[Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->createLinkNewApp([Ljava/io/File;)V

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 73
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "complete linked new preload app, del lastpreload file:  /cache/lastpreload"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v1    # "cur":Ljava/lang/String;
    .end local v5    # "newappfiles":[Ljava/io/File;
    :cond_5
    if-eqz p1, :cond_6

    .line 66
    :cond_6
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "do not link new preload app cause old preload info noexist"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
