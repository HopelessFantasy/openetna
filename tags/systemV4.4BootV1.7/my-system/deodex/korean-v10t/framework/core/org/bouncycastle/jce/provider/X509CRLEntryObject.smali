.class public Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private isIndirect:Z

.field private previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V
    .registers 5
    .parameter "c"
    .parameter "isIndirect"
    .parameter "previousCertificateIssuer"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 65
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 66
    iput-boolean p2, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    .line 67
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 68
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .parameter "critical"

    .prologue
    .line 122
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 124
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_31

    .line 126
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 129
    .local v0, e:Ljava/util/Enumeration;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 131
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 132
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 134
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_11

    .line 136
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2f
    move-object v5, v4

    .line 143
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v4           #set:Ljava/util/Set;
    :goto_30
    return-object v5

    :cond_31
    const/4 v5, 0x0

    goto :goto_30
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 8

    .prologue
    .line 87
    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    if-nez v4, :cond_6

    .line 89
    const/4 v4, 0x0

    .line 106
    :goto_5
    return-object v4

    .line 92
    :cond_6
    sget-object v4, Lorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    .local v1, ext:[B
    if-nez v1, :cond_15

    .line 95
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_5

    .line 100
    :cond_15
    :try_start_15
    invoke-static {v1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 102
    .local v3, names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    array-length v4, v3

    if-ge v2, v4, :cond_60

    .line 104
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5d

    .line 106
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_41} :catch_42

    goto :goto_5

    .line 112
    .end local v2           #i:I
    .end local v3           #names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot extract certificate issuer CRL entry extension "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v3       #names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 109
    :cond_60
    :try_start_60
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot extract directory name from certificate issuer CRL entry extension"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_68} :catch_42
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_14

    move-result-object v3

    return-object v3

    .line 192
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 194
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 158
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 160
    .local v2, exts:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3b

    .line 162
    new-instance v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 164
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3b

    .line 168
    :try_start_13
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result-object v3

    .line 177
    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_1b
    return-object v3

    .line 170
    .restart local v1       #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :catch_1c
    move-exception v3

    move-object v0, v3

    .line 172
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 77
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 79
    const/4 v1, 0x1

    .line 82
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, nl:Ljava/lang/String;
    const-string v6, "      userCertificate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v6, "       revocationDate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v3

    .line 223
    .local v3, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v3, :cond_5c

    .line 225
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 226
    .local v1, e:Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 228
    const-string v6, "   crlEntryExtensions:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :goto_48
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 232
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 233
    .local v5, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v2

    .line 234
    .local v2, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_48

    .line 239
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v5           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
