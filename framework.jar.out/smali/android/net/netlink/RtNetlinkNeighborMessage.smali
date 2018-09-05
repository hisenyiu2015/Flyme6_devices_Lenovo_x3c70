.class public Landroid/net/netlink/RtNetlinkNeighborMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "RtNetlinkNeighborMessage.java"


# static fields
.field public static final NDA_CACHEINFO:S = 0x3s

.field public static final NDA_DST:S = 0x1s

.field public static final NDA_IFINDEX:S = 0x8s

.field public static final NDA_LLADDR:S = 0x2s

.field public static final NDA_MASTER:S = 0x9s

.field public static final NDA_PORT:S = 0x6s

.field public static final NDA_PROBES:S = 0x4s

.field public static final NDA_UNSPEC:S = 0x0s

.field public static final NDA_VLAN:S = 0x5s

.field public static final NDA_VNI:S = 0x7s


# instance fields
.field private mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

.field private mDestination:Ljava/net/InetAddress;

.field private mLinkLayerAddr:[B

.field private mNdmsg:Landroid/net/netlink/StructNdMsg;

.field private mNumProbes:I


# direct methods
.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 2
    .param p1, "header"    # Landroid/net/netlink/StructNlMsgHdr;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 177
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 178
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 179
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 181
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 182
    return-void
.end method

.method private static findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 3
    .param p0, "attrType"    # S
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 58
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 60
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-nez v0, :cond_1

    .line 71
    .end local v0    # "nlAttr":Landroid/net/netlink/StructNlAttr;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 63
    .restart local v0    # "nlAttr":Landroid/net/netlink/StructNlAttr;
    :cond_1
    iget-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    if-ne v1, p0, :cond_2

    .line 64
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static newGetNeighborsRequest(I)[B
    .locals 7
    .param p0, "seqNo"    # I

    .prologue
    const/16 v6, 0x1c

    .line 123
    const/16 v2, 0x1c

    .line 124
    .local v2, "length":I
    new-array v1, v6, [B

    .line 125
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    new-instance v4, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v4}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 129
    .local v4, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    iput v6, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 130
    const/16 v5, 0x1e

    iput-short v5, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 131
    const/16 v5, 0x301

    iput-short v5, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 132
    iput p0, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 133
    invoke-virtual {v4, v0}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 135
    new-instance v3, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v3}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .line 136
    .local v3, "ndmsg":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {v3, v0}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 138
    return-object v1
.end method

.method public static newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B
    .locals 6
    .param p0, "seqNo"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "nudState"    # S
    .param p3, "ifIndex"    # I
    .param p4, "llAddr"    # [B

    .prologue
    .line 147
    new-instance v3, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v3}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 148
    .local v3, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    const/16 v4, 0x1c

    iput-short v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 149
    const/16 v4, 0x105

    iput-short v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 150
    iput p0, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 152
    new-instance v2, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v2, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 153
    .local v2, "msg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    new-instance v4, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v4}, Landroid/net/netlink/StructNdMsg;-><init>()V

    iput-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 154
    iget-object v5, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    :goto_0
    int-to-byte v4, v4

    iput-byte v4, v5, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 156
    iget-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput p3, v4, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 157
    iget-object v4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput-short p2, v4, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 158
    iput-object p1, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 159
    iput-object p4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 161
    invoke-virtual {v2}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getRequiredSpace()I

    move-result v4

    new-array v1, v4, [B

    .line 162
    .local v1, "bytes":[B
    array-length v4, v1

    iput v4, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 163
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v2, v0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->pack(Ljava/nio/ByteBuffer;)V

    .line 166
    return-object v1

    .line 154
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    :cond_0
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_0
.end method

.method private static packNlAttr(S[BLjava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "nlType"    # S
    .param p1, "nlValue"    # [B
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 220
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 221
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    iput-short p0, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 222
    iput-object p1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 223
    iget-object v1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 224
    invoke-virtual {v0, p2}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 225
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;
    .locals 6
    .param p0, "header"    # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 75
    new-instance v3, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v3, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 77
    .local v3, "neighMsg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    invoke-static {p1}, Landroid/net/netlink/StructNdMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;

    move-result-object v5

    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 78
    iget-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v5, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 116
    .end local v3    # "neighMsg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    :goto_0
    return-object v3

    .line 83
    .restart local v3    # "neighMsg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 84
    .local v0, "baseOffset":I
    const/4 v5, 0x1

    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    .line 85
    .local v4, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 89
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    const/4 v5, 0x2

    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    iget-object v5, v4, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 95
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    const/4 v5, 0x4

    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_3

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/netlink/StructNlAttr;->getValueAsInt(I)I

    move-result v5

    iput v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 101
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    const/4 v5, 0x3

    invoke-static {v5, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/StructNdaCacheInfo;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;

    move-result-object v5

    iput-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 107
    :cond_4
    const/16 v2, 0x1c

    .line 108
    .local v2, "kMinConsumed":I
    iget-object v5, v3, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iget v5, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    add-int/lit8 v5, v5, -0x1c

    invoke-static {v5}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    .line 110
    .local v1, "kAdditionalSpace":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v1, :cond_5

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 113
    :cond_5
    add-int v5, v0, v1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public getCacheInfo()Landroid/net/netlink/StructNdaCacheInfo;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    return-object v0
.end method

.method public getDestination()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLinkLayerAddress()[B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    return-object v0
.end method

.method public getNdHeader()Landroid/net/netlink/StructNdMsg;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    return-object v0
.end method

.method public getProbes()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    return v0
.end method

.method public getRequiredSpace()I
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0x1c

    .line 206
    .local v0, "spaceRequired":I
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_1
    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 229
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 231
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-static {v0, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 237
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 242
    .local v0, "ipLiteral":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RtNetlinkNeighborMessage{ nlmsghdr{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ndmsg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "destination{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "linklayeraddr{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "probes{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cacheinfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    .end local v0    # "ipLiteral":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    .restart local v0    # "ipLiteral":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v1}, Landroid/net/netlink/StructNdMsg;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    invoke-virtual {v1}, Landroid/net/netlink/StructNdaCacheInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
