.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient canonicalName:Ljava/lang/String;

.field private transient dn:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_11

    .line 105
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "auth.2C"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_11
    :try_start_11
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 116
    return-void

    .line 110
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.2B"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 114
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    if-nez p1, :cond_11

    .line 132
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "auth.00"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_11
    :try_start_11
    new-instance v2, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_19

    .line 142
    return-void

    .line 136
    :catch_19
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.2D"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    throw v1
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "name"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_11

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "auth.00"

    invoke-static {v3}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_11
    :try_start_11
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 89
    return-void

    .line 83
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.2B"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    throw v1
.end method

.method private declared-synchronized getCanonicalName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 148
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "CANONICAL"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    .line 150
    :cond_f
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 147
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 236
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    .line 237
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 232
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 156
    if-ne p0, p1, :cond_4

    .line 157
    const/4 v2, 0x1

    .line 164
    :goto_3
    return v2

    .line 159
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 160
    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    .line 162
    :cond_12
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    move-object v1, v0

    .line 164
    .local v1, principal:Ljavax/security/auth/x500/X500Principal;
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    .line 176
    .local v1, src:[B
    array-length v2, v1

    new-array v0, v2, [B

    .line 177
    .local v0, dst:[B
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC2253"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "format"

    .prologue
    .line 212
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 213
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 221
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC1779"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
