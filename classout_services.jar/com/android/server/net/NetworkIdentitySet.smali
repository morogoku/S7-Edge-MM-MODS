.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 12
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 43
    .local v9, "version":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 44
    .local v8, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, v8, :cond_3e

    .line 45
    const/4 v0, 0x1

    if-gt v9, v0, :cond_14

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 48
    :cond_14
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 49
    .local v1, "type":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 50
    .local v2, "subType":I
    invoke-static {p1}, readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v0, 0x3

    if-lt v9, v0, :cond_3a

    .line 53
    invoke-static {p1}, readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "networkId":Ljava/lang/String;
    :goto_27
    const/4 v0, 0x2

    if-lt v9, v0, :cond_3c

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    .line 64
    .local v7, "roaming":Z
    :goto_2e
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 55
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v7    # "roaming":Z
    :cond_3a
    const/4 v4, 0x0

    .restart local v4    # "networkId":Ljava/lang/String;
    goto :goto_27

    .line 61
    :cond_3c
    const/4 v7, 0x0

    .restart local v7    # "roaming":Z
    goto :goto_2e

    .line 66
    .end local v1    # "type":I
    .end local v2    # "subType":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v7    # "roaming":Z
    :cond_3e
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_a

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    :goto_9
    return-void

    .line 85
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_9
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .registers 5
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 99
    invoke-virtual {p0}, isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    .line 104
    :goto_7
    return v2

    .line 100
    :cond_8
    invoke-virtual {p1}, isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_7

    .line 102
    :cond_10
    invoke-virtual {p0}, iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 103
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 104
    .local v0, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v1, v0}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    return v0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {p0}, size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 72
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 78
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :cond_3f
    return-void
.end method
