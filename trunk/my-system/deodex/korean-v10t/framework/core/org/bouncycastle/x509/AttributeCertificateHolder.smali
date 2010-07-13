.class public Lorg/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field final holder:Lorg/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 9
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_3
    invoke-static {p1}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_21

    move-result-object v1

    .line 86
    .local v1, name:Lorg/bouncycastle/jce/X509Principal;
    new-instance v2, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v3, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v2, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 87
    return-void

    .line 81
    .end local v1           #name:Lorg/bouncycastle/jce/X509Principal;
    :catch_21
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .parameter "principal"

    .prologue
    .line 98
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/jce/X509Principal;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "issuerName"
    .parameter "serialNumber"

    .prologue
    .line 68
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    .line 69
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509Principal;)V
    .registers 4
    .parameter "principal"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .registers 8
    .parameter "issuerName"
    .parameter "serialNumber"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 62
    return-void
.end method

.method private generateGeneralNames(Lorg/bouncycastle/jce/X509Principal;)Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 5
    .parameter "principal"

    .prologue
    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method private getNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .registers 7
    .parameter "names"

    .prologue
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    array-length v3, p1

    if-eq v1, v3, :cond_34

    .line 139
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    .line 143
    :try_start_13
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_27} :catch_2a

    .line 137
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 145
    :catch_2a
    move-exception v3

    move-object v0, v3

    .line 147
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    :cond_34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .registers 6
    .parameter "names"

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, v2

    if-eq v0, v3, :cond_1f

    .line 163
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_1c

    .line 165
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 169
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/Principal;

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method private matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 108
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 110
    .local v2, names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_5
    array-length v3, v2

    if-eq v1, v3, :cond_2c

    .line 112
    aget-object v0, v2, v1

    .line 114
    .local v0, gn:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 118
    :try_start_11
    new-instance v3, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Lorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_28

    move-result v3

    if-eqz v3, :cond_29

    .line 120
    const/4 v3, 0x1

    .line 129
    .end local v0           #gn:Lorg/bouncycastle/asn1/x509/GeneralName;
    :goto_27
    return v3

    .line 123
    .restart local v0       #gn:Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_28
    move-exception v3

    .line 110
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 129
    .end local v0           #gn:Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_27
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 222
    new-instance v0, Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 184
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getIssuer()[Ljava/security/Principal;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 196
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 199
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 214
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 9
    .parameter "cert"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    instance-of v3, p1, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_8

    move v3, v5

    .line 261
    :goto_7
    return v3

    .line 235
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 239
    .local v2, x509Cert:Ljava/security/cert/X509Certificate;
    :try_start_c
    iget-object v3, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 241
    iget-object v3, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v2}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v3, v6

    goto :goto_7

    :cond_42
    move v3, v5

    goto :goto_7

    .line 245
    :cond_44
    iget-object v3, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 247
    invoke-static {v2}, Lorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/jce/X509Principal;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    :try_end_59
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_59} :catch_5e

    move-result v3

    if-eqz v3, :cond_62

    move v3, v6

    .line 249
    goto :goto_7

    .line 253
    :catch_5e
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    move v3, v5

    .line 255
    goto :goto_7

    .end local v1           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_62
    move v3, v5

    .line 261
    goto :goto_7
.end method
