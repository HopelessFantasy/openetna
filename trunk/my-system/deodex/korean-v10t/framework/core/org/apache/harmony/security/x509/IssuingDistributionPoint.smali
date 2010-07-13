.class public Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "IssuingDistributionPoint.java"


# static fields
.field public static ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V
    .registers 4
    .parameter "distributionPoint"
    .parameter "onlySomeReasons"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 49
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 52
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    .line 72
    .local v0, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 73
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v3, 0xa

    const-string v4, "  "

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Issuing Distribution Point: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    if-eqz v0, :cond_29

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 167
    :cond_29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsUserCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    if-eqz v0, :cond_6b

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 174
    :cond_6b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  indirectCRL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsAttributeCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    return-void
.end method

.method public getDistributionPoint()Lorg/apache/harmony/security/x509/DistributionPointName;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    if-nez v0, :cond_c

    .line 153
    sget-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 155
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    return-object v0
.end method

.method public getIndirectCRL()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public getOnlyContainsAttributeCerts()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public getOnlyContainsCACerts()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public getOnlyContainsUserCerts()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public getOnlySomeReasons()Lorg/apache/harmony/security/x509/ReasonFlags;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method public setIndirectCRL(Z)V
    .registers 2
    .parameter "indirectCRL"

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 95
    return-void
.end method

.method public setOnlyContainsAttributeCerts(Z)V
    .registers 2
    .parameter "onlyContainsAttributeCerts"

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 103
    return-void
.end method

.method public setOnlyContainsCACerts(Z)V
    .registers 2
    .parameter "onlyContainsCACerts"

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 88
    return-void
.end method

.method public setOnlyContainsUserCerts(Z)V
    .registers 2
    .parameter "onlyContainsUserCerts"

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 81
    return-void
.end method
