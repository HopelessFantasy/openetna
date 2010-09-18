.class public Ljava/security/cert/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field private final caName:Ljava/lang/String;

.field private final caPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private final caPublicKey:Ljava/security/PublicKey;

.field private final nameConstraints:[B

.field private final trustedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .registers 8
    .parameter "caName"
    .parameter "caPublicKey"
    .parameter "nameConstraints"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_13

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.5D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_13
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 118
    if-nez p2, :cond_23

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.5E"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_23
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    .line 123
    if-eqz p3, :cond_4b

    .line 124
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    .line 125
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    .line 132
    :goto_37
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4e

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.5F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_4b
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_37

    .line 139
    :cond_4e
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 7
    .parameter "trustedCert"
    .parameter "nameConstraints"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_13

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.5C"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_13
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 78
    if-eqz p2, :cond_2e

    .line 79
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    .line 80
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    .line 86
    :goto_27
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 88
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    .line 89
    return-void

    .line 84
    :cond_2e
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_27
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V
    .registers 8
    .parameter "caPrincipal"
    .parameter "caPublicKey"
    .parameter "nameConstraints"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-nez p1, :cond_13

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.60"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_13
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 168
    if-nez p2, :cond_23

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.5E"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_23
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    .line 173
    if-eqz p3, :cond_40

    .line 174
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    .line 175
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    .line 182
    :goto_37
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    .line 183
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    .line 184
    return-void

    .line 179
    :cond_40
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_37
.end method

.method private processNameConstraints()V
    .registers 4

    .prologue
    .line 292
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 296
    return-void

    .line 293
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getCA()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public final getCAName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCAPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getNameConstraints()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    if-nez v1, :cond_7

    .line 194
    const/4 v1, 0x0

    .line 199
    :goto_6
    return-object v1

    .line 196
    :cond_7
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 197
    .local v0, ret:[B
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 199
    goto :goto_6
.end method

.method public final getTrustedCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "\n"

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TrustAnchor: [\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1c

    .line 259
    const-string v1, "Trusted CA certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 261
    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :cond_1c
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_2f

    .line 264
    const-string v1, "Trusted CA Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 266
    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    :cond_2f
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_42

    .line 269
    const-string v1, "Trusted CA Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 271
    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_42
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    if-eqz v1, :cond_56

    .line 275
    const-string v1, "Name Constraints:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    const-string v2, "    "

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :cond_56
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
