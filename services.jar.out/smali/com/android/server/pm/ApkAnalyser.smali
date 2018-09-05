.class public Lcom/android/server/pm/ApkAnalyser;
.super Ljava/lang/Object;
.source "ApkAnalyser.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ApkAnalyser"

    sput-object v0, Lcom/android/server/pm/ApkAnalyser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHas32BitLibInAssets(Ljava/lang/String;)Z
    .locals 11
    .param p0, "ApkPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 30
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 31
    .local v6, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 32
    .local v2, "enumeration":Ljava/util/Enumeration;
    const/4 v5, 0x0

    .line 33
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 34
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 35
    .restart local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 36
    invoke-virtual {v6, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 37
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x5

    new-array v0, v9, [B

    .line 38
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 39
    const/4 v9, 0x4

    aget-byte v4, v0, v9

    .line 40
    .local v4, "is32not64":I
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 41
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    if-ne v4, v7, :cond_1

    .line 56
    .end local v0    # "bytes":[B
    .end local v2    # "enumeration":Ljava/util/Enumeration;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "is32not64":I
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    return v7

    .restart local v0    # "bytes":[B
    .restart local v2    # "enumeration":Ljava/util/Enumeration;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "is32not64":I
    .restart local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    move v7, v8

    .line 45
    goto :goto_0

    .line 49
    .end local v0    # "bytes":[B
    .end local v2    # "enumeration":Ljava/util/Enumeration;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "is32not64":I
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V

    .end local v1    # "e":Ljava/util/zip/ZipException;
    :cond_2
    :goto_1
    move v7, v8

    .line 56
    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
