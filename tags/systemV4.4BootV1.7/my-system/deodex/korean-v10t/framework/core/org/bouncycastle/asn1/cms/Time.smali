.class public Lorg/bouncycastle/asn1/cms/Time;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "Time.java"


# instance fields
.field time:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .registers 10
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Z"

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 46
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v4, "Z"

    invoke-direct {v2, v6, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 47
    .local v2, tz:Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, dateF:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, d:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, year:I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_3f

    const/16 v4, 0x801

    if-le v3, v4, :cond_47

    .line 56
    :cond_3f
    new-instance v4, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    .line 62
    :goto_46
    return-void

    .line 60
    :cond_47
    new-instance v4, Lorg/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    goto :goto_46
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .registers 4
    .parameter "time"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    instance-of v0, p1, Lorg/bouncycastle/asn1/DERUTCTime;

    if-nez v0, :cond_13

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_13

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_13
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;
    .registers 3
    .parameter "obj"

    .prologue
    .line 67
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Time;

    if-eqz v0, :cond_8

    .line 69
    check-cast p0, Lorg/bouncycastle/asn1/cms/Time;

    .end local p0
    move-object v0, p0

    .line 77
    :goto_7
    return-object v0

    .line 71
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_14

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/cms/Time;

    check-cast p0, Lorg/bouncycastle/asn1/DERUTCTime;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    goto :goto_7

    .line 75
    .restart local p0
    :cond_14
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_20

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/cms/Time;

    check-cast p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    goto :goto_7

    .line 80
    .restart local p0
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Time;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, dateF:Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/Time;->getTime()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_f

    .line 87
    iget-object p0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_e
    return-object v0

    .restart local p0
    :cond_f
    iget-object p0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Time;->time:Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
