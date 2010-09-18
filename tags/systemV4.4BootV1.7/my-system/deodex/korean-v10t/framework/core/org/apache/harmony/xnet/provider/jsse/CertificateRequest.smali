.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateRequest.java"


# static fields
.field public static final DSS_FIXED_DH:B = 0x4t

.field public static final DSS_SIGN:B = 0x2t

.field public static final RSA_FIXED_DH:B = 0x3t

.field public static final RSA_SIGN:B = 0x1t


# instance fields
.field certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

.field final certificate_types:[B

.field private encoded_principals:[[B

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 10
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 106
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v3

    .line 107
    .local v3, size:I
    new-array v5, v3, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 108
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 109
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 110
    new-array v5, v3, [Ljavax/security/auth/x500/X500Principal;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, totalPrincipalsLength:I
    const/4 v1, 0x0

    .line 113
    .local v1, principalLength:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 114
    .local v2, principals:Ljava/util/Vector;
    :goto_20
    if-ge v4, v3, :cond_32

    .line 115
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v1

    .line 116
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v5, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v4, 0x2

    .line 118
    add-int/2addr v4, v1

    goto :goto_20

    .line 120
    :cond_32
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljavax/security/auth/x500/X500Principal;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3b
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v5, v5

    if-ge v0, v5, :cond_4d

    .line 122
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/security/auth/x500/X500Principal;

    aput-object v5, v6, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 124
    :cond_4d
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    .line 125
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    if-eq v5, p2, :cond_60

    .line 126
    const/16 v5, 0x32

    const-string v6, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 130
    :cond_60
    return-void
.end method

.method public constructor <init>([B[Ljava/security/cert/X509Certificate;)V
    .registers 7
    .parameter "certificate_types"
    .parameter "accepted"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 79
    if-nez p2, :cond_c

    .line 80
    const/16 v2, 0x50

    const-string v3, "CertificateRequest: array of certificate authority certificates is null"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 83
    :cond_c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, totalPrincipalsLength:I
    array-length v2, p2

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 87
    array-length v2, p2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v2, p2

    if-ge v0, v2, :cond_3e

    .line 89
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    aput-object v3, v2, v0

    .line 90
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 91
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 94
    :cond_3e
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->length:I

    .line 95
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 160
    const/16 v0, 0xd

    return v0
.end method

.method public getTypesAsString()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    if-nez v1, :cond_3e

    .line 168
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v1, v1, v0

    packed-switch v1, :pswitch_data_42

    .line 184
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    .line 169
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 172
    :pswitch_22
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    const-string v2, "RSA"

    aput-object v2, v1, v0

    goto :goto_1f

    .line 175
    :pswitch_29
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    const-string v2, "DSA"

    aput-object v2, v1, v0

    goto :goto_1f

    .line 178
    :pswitch_30
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    const-string v2, "DH_RSA"

    aput-object v2, v1, v0

    goto :goto_1f

    .line 181
    :pswitch_37
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    const-string v2, "DH_DSA"

    aput-object v2, v1, v0

    goto :goto_1f

    .line 189
    .end local v0           #i:I
    :cond_3e
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    return-object v1

    .line 170
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_22
        :pswitch_29
        :pswitch_30
        :pswitch_37
    .end packed-switch
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 141
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 143
    :cond_17
    const/4 v0, 0x0

    .line 144
    .local v0, authoritiesLength:I
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 145
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 147
    :cond_29
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 148
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 149
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 150
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 152
    :cond_46
    return-void
.end method
