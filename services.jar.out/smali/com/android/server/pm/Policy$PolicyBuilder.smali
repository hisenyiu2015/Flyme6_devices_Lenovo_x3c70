.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStanza:Z

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 793
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v0

    .line 797
    :cond_1
    const-string v1, "\\A[\\.\\w]+\\z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 770
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid seinfo value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 775
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 776
    .local v1, "pkgValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    const-string v0, "Conflicting seinfo value found"

    .line 778
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-object p0
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "cert"    # Ljava/lang/String;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signature value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 717
    return-object p0
.end method

.method public build()Lcom/android/server/pm/Policy;
    .locals 4

    .prologue
    .line 831
    new-instance v1, Lcom/android/server/pm/Policy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V

    .line 833
    .local v1, "p":Lcom/android/server/pm/Policy;
    # getter for: Lcom/android/server/pm/Policy;->mDefaultStanza:Z
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$500(Lcom/android/server/pm/Policy;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    # getter for: Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 835
    const-string v0, "Missing global seinfo tag with default stanza."

    .line 836
    .local v0, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$700(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    const-string v0, "Certs not allowed with default stanza."

    .line 840
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 842
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$800(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 843
    const-string v0, "Inner package mappings not allowed with default stanza."

    .line 844
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$700(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 848
    const-string v0, "Missing certs with signer tag. Expecting at least one."

    .line 849
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v0    # "err":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    # getter for: Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/pm/Policy;->access$800(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 852
    const-string v0, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    .line 854
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v0    # "err":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 858
    :cond_5
    return-object v1
.end method

.method public setAsDefaultPolicy()Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z

    .line 697
    return-object p0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid seinfo value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    const-string v0, "Duplicate seinfo tag found"

    .line 742
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 746
    return-object p0
.end method
