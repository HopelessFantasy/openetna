.class public Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private seperator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 19
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .parameter "oid"
    .parameter "seperator"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 28
    iput-char p2, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    .line 29
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 33
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public nextToken()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x2b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x5c

    .line 38
    iget v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_12

    .line 40
    const/4 v4, 0x0

    .line 100
    :goto_11
    return-object v4

    .line 43
    :cond_12
    iget v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    add-int/lit8 v1, v4, 0x1

    .line 44
    .local v1, end:I
    const/4 v3, 0x0

    .line 45
    .local v3, quoted:Z
    const/4 v2, 0x0

    .line 47
    .local v2, escaped:Z
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    :goto_1d
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_79

    .line 51
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    .local v0, c:C
    const/16 v4, 0x22

    if-ne v0, v4, :cond_40

    .line 55
    if-nez v2, :cond_3a

    .line 57
    if-nez v3, :cond_38

    move v3, v8

    .line 63
    :goto_34
    const/4 v2, 0x0

    .line 96
    :goto_35
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_1d

    :cond_38
    move v3, v7

    .line 57
    goto :goto_34

    .line 61
    :cond_3a
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 67
    :cond_40
    if-nez v2, :cond_44

    if-eqz v3, :cond_71

    .line 71
    :cond_44
    const/16 v4, 0x23

    if-ne v0, v4, :cond_65

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_65

    .line 73
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    :cond_5e
    :goto_5e
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const/4 v2, 0x0

    goto :goto_35

    .line 75
    :cond_65
    if-ne v0, v9, :cond_5e

    iget-char v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-eq v4, v9, :cond_5e

    .line 77
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 83
    :cond_71
    if-ne v0, v6, :cond_75

    .line 85
    const/4 v2, 0x1

    goto :goto_35

    .line 87
    :cond_75
    iget-char v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->seperator:C

    if-ne v0, v4, :cond_86

    .line 99
    .end local v0           #c:C
    :cond_79
    iput v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 100
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 93
    .restart local v0       #c:C
    :cond_86
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_35
.end method
