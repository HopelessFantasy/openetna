.class public Lorg/apache/harmony/security/x509/CertificatePolicies;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificatePolicies.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private policyInformations:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 138
    new-instance v0, Lorg/apache/harmony/security/x509/CertificatePolicies$1;

    sget-object v1, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificatePolicies$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "policyInformations"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .registers 3
    .parameter "policyInformations"
    .parameter "encoding"

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v1, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    .line 72
    .local v0, cps:Lorg/apache/harmony/security/x509/CertificatePolicies;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 73
    return-object v0
.end method


# virtual methods
.method public addPolicyInformation(Lorg/apache/harmony/security/x509/PolicyInformation;)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .registers 3
    .parameter "policyInformation"

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    if-nez v0, :cond_e

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 105
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "CertificatePolicies [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/PolicyInformation;

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 130
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 132
    :cond_2c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    if-nez v0, :cond_c

    .line 115
    sget-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 117
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    return-object v0
.end method

.method public getPolicyInformations()Ljava/util/List;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
