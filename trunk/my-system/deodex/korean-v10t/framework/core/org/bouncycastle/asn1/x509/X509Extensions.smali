.class public Lorg/bouncycastle/asn1/x509/X509Extensions;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Extensions.java"


# static fields
.field public static final AuthorityInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BiometricInfo:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLDistributionPoints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLNumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificateIssuer:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificatePolicies:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DeltaCRLIndicator:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ExtendedKeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final FreshestCRL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InhibitAnyPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InstructionCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InvalidityDate:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuerAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuingDistributionPoint:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final KeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NameConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyMappings:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PrivateKeyUsagePeriod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final QCStatements:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectDirectoryAttributes:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private table:Lorg/bouncycastle/asn1/OrderedTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 106
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 111
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 126
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 131
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 136
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 141
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 146
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 151
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 156
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 3
    .parameter "extensions"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 7
    .parameter "ordering"
    .parameter "extensions"

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 159
    new-instance v3, Lorg/bouncycastle/asn1/OrderedTable;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    .line 249
    if-nez p1, :cond_28

    .line 251
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 259
    .local v0, e:Ljava/util/Enumeration;
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 261
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 262
    .local v2, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/X509Extension;

    .line 263
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3, v2, v1}, Lorg/bouncycastle/asn1/OrderedTable;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    goto :goto_10

    .line 255
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_28
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0       #e:Ljava/util/Enumeration;
    goto :goto_10

    .line 266
    :cond_2d
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 8
    .parameter "objectIDs"
    .parameter "values"

    .prologue
    .line 277
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 159
    new-instance v4, Lorg/bouncycastle/asn1/OrderedTable;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    .line 278
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 281
    .local v1, e:Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 283
    .local v0, count:I
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 285
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 286
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/X509Extension;

    .line 288
    .local v2, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v4, v3, v2}, Lorg/bouncycastle/asn1/OrderedTable;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 290
    goto :goto_f

    .line 292
    .end local v2           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_29
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 12
    .parameter "seq"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 159
    new-instance v5, Lorg/bouncycastle/asn1/OrderedTable;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    .line 198
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 200
    .local v0, e:Ljava/util/Enumeration;
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 202
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 205
    .local v2, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    .line 206
    .local v3, sSize:I
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 209
    .local v1, key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    .line 211
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v5

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 222
    .local v4, value:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_41
    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v5, v1, v4}, Lorg/bouncycastle/asn1/OrderedTable;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    goto :goto_11

    .line 213
    .end local v4           #value:Lorg/bouncycastle/asn1/x509/X509Extension;
    :cond_47
    if-ne v3, v9, :cond_57

    .line 215
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    .restart local v4       #value:Lorg/bouncycastle/asn1/x509/X509Extension;
    goto :goto_41

    .line 219
    .end local v4           #value:Lorg/bouncycastle/asn1/x509/X509Extension;
    :cond_57
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad sequence size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    .end local v1           #key:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v2           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3           #sSize:I
    :cond_70
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 4
    .parameter "obj"

    .prologue
    .line 172
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v0, :cond_a

    .line 174
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/X509Extensions;

    .end local p0
    move-object v0, p0

    .line 184
    :goto_9
    return-object v0

    .line 177
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 179
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509Extensions;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 182
    .restart local p0
    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_25

    .line 184
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    goto :goto_9

    .line 187
    .restart local p0
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 166
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const/4 v7, 0x0

    .line 373
    instance-of v6, p1, Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-nez v6, :cond_7

    move v6, v7

    .line 401
    :goto_6
    return v6

    .line 378
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-object v5, v0

    .line 381
    .local v5, other:Lorg/bouncycastle/asn1/x509/X509Extensions;
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 382
    .local v1, e1:Ljava/util/Enumeration;
    iget-object v6, v5, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 385
    .local v2, e2:Ljava/util/Enumeration;
    :cond_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 387
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, o1:Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 390
    .local v4, o2:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    move v6, v7

    .line 392
    goto :goto_6

    .line 396
    .end local v3           #o1:Ljava/lang/Object;
    .end local v4           #o2:Ljava/lang/Object;
    :cond_33
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_41

    :cond_3f
    move v6, v7

    .line 398
    goto :goto_6

    .line 401
    :cond_41
    const/4 v6, 0x1

    goto :goto_6
.end method

.method public getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;
    .registers 3
    .parameter "oid"

    .prologue
    .line 314
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/OrderedTable;->get(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/x509/X509Extension;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 358
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/OrderedTable;->size()I

    move-result v2

    .line 359
    .local v2, size:I
    const/4 v0, 0x0

    .line 361
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_23

    .line 362
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/OrderedTable;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 363
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/OrderedTable;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 367
    :cond_23
    return v0
.end method

.method public oids()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 8

    .prologue
    .line 331
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/OrderedTable;->size()I

    move-result v3

    .line 332
    .local v3, size:I
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 334
    .local v5, vec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v3, :cond_41

    .line 335
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/OrderedTable;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 336
    .local v2, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509Extensions;->table:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/OrderedTable;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Extension;

    .line 337
    .local v0, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 339
    .local v4, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 341
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 343
    sget-object v6, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 346
    :cond_2f
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 348
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 352
    .end local v0           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_41
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v6
.end method
