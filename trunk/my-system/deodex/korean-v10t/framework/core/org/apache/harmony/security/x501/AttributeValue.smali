.class public Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public escapedString:Ljava/lang/String;

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public rawString:Ljava/lang/String;

.field private tag:I

.field public final wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "parsedString"
    .parameter "hasQorE"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 55
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 8
    .parameter "hexString"
    .parameter "encoded"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 65
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 69
    :try_start_d
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 71
    .local v2, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 73
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 75
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 86
    :goto_32
    return-void

    .line 78
    :cond_33
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_38

    goto :goto_32

    .line 81
    .end local v2           #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 83
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .registers 5
    .parameter "rawString"
    .parameter "encoded"
    .parameter "tag"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    .line 94
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 95
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 97
    if-nez p1, :cond_1a

    .line 98
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    .line 104
    :goto_19
    return-void

    .line 101
    :cond_1a
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    goto :goto_19
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "name"

    .prologue
    const/16 v6, 0x5c

    const/4 v5, 0x1

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 180
    .local v3, length:I
    if-nez v3, :cond_b

    move-object v4, p1

    .line 217
    :goto_a
    return-object v4

    .line 183
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 185
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_13
    if-ge v2, v3, :cond_37

    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 189
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_3c

    .line 213
    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 192
    :sswitch_22
    if-eqz v2, :cond_28

    sub-int v4, v3, v5

    if-ne v2, v4, :cond_2b

    .line 194
    :cond_28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_2b
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 201
    :sswitch_31
    iput-boolean v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    .line 210
    :sswitch_33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 217
    .end local v1           #ch:C
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 189
    :sswitch_data_3c
    .sparse-switch
        0x20 -> :sswitch_22
        0x22 -> :sswitch_31
        0x23 -> :sswitch_33
        0x2b -> :sswitch_33
        0x2c -> :sswitch_33
        0x3b -> :sswitch_33
        0x3c -> :sswitch_33
        0x3d -> :sswitch_33
        0x3e -> :sswitch_33
        0x5c -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuffer;)V
    .registers 7
    .parameter "buf"

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    if-eqz v2, :cond_27

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 157
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    .local v0, c:C
    if-eq v0, v3, :cond_1e

    if-ne v0, v4, :cond_21

    .line 159
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 164
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_27
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 118
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    if-nez v3, :cond_73

    .line 120
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    if-nez v3, :cond_1c

    .line 122
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 123
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    .line 129
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 130
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6d

    .line 133
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 134
    .local v1, c:I
    if-ge v1, v5, :cond_5f

    .line 135
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    :goto_43
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    aget-byte v3, v3, v2

    and-int/lit8 v1, v3, 0xf

    .line 141
    if-ge v1, v5, :cond_66

    .line 142
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 125
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #c:I
    .end local v2           #i:I
    :cond_54
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    goto :goto_1c

    .line 137
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #c:I
    .restart local v2       #i:I
    :cond_5f
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 144
    :cond_66
    add-int/lit8 v3, v1, 0x57

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 147
    .end local v1           #c:I
    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    .line 149
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    :cond_73
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    return-object v3
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/x509/Utils;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 109
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    .line 114
    :cond_13
    :goto_13
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    return v0

    .line 111
    :cond_16
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    goto :goto_13
.end method

.method public makeCanonical()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x23

    const/4 v8, 0x1

    const/16 v7, 0x20

    .line 222
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 223
    .local v4, length:I
    if-nez v4, :cond_12

    .line 224
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    .line 270
    :goto_11
    return-object v5

    .line 226
    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v5, v4, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 228
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 229
    .local v3, index:I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2b

    .line 230
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 236
    :cond_2b
    :goto_2b
    if-ge v3, v4, :cond_52

    .line 238
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 240
    .local v2, ch:C
    sparse-switch v2, :sswitch_data_6e

    .line 260
    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 243
    :sswitch_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 244
    .local v1, bufLength:I
    if-eqz v1, :cond_39

    sub-int v5, v1, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_39

    .line 247
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 257
    .end local v1           #bufLength:I
    :sswitch_4e
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 265
    .end local v2           #ch:C
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int v1, v5, v8

    .line 266
    .restart local v1       #bufLength:I
    :goto_58
    const/4 v5, -0x1

    if-le v1, v5, :cond_64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_64

    add-int/lit8 v1, v1, -0x1

    goto :goto_58

    .line 268
    :cond_64
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    .line 240
    :sswitch_data_6e
    .sparse-switch
        0x20 -> :sswitch_3c
        0x22 -> :sswitch_4e
        0x2b -> :sswitch_4e
        0x2c -> :sswitch_4e
        0x3b -> :sswitch_4e
        0x3c -> :sswitch_4e
        0x3e -> :sswitch_4e
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method
