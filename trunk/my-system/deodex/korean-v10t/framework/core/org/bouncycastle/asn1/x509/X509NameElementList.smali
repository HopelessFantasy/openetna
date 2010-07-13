.class public Lorg/bouncycastle/asn1/x509/X509NameElementList;
.super Ljava/lang/Object;
.source "X509NameElementList.java"


# instance fields
.field private added:I

.field private key0:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private key1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private key2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private key3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private rest:[Ljava/lang/Object;

.field private size:I

.field private value0:Ljava/lang/String;

.field private value1:Ljava/lang/String;

.field private value2:Ljava/lang/String;

.field private value3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V
    .registers 12
    .parameter "key"
    .parameter "value"
    .parameter "added"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iget v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_12

    .line 74
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "no more than 32 elements"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_12
    if-nez p1, :cond_1c

    .line 79
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "key == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1c
    if-nez p2, :cond_26

    .line 83
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_26
    iget v2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    .line 88
    .local v2, sz:I
    packed-switch v2, :pswitch_data_76

    .line 124
    :goto_2b
    :pswitch_2b
    const/4 v3, 0x4

    sub-int v3, v2, v3

    mul-int/lit8 v0, v3, 0x2

    .line 125
    .local v0, index:I
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 126
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aput-object p2, v3, v4

    .line 131
    .end local v0           #index:I
    :goto_3a
    if-eqz p3, :cond_43

    .line 132
    iget v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->added:I

    shl-int v4, v6, v2

    or-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->added:I

    .line 135
    :cond_43
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    .line 136
    return-void

    .line 90
    :pswitch_48
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key0:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value0:Ljava/lang/String;

    goto :goto_3a

    .line 95
    :pswitch_4d
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value1:Ljava/lang/String;

    goto :goto_3a

    .line 100
    :pswitch_52
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 101
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value2:Ljava/lang/String;

    goto :goto_3a

    .line 105
    :pswitch_57
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 106
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value3:Ljava/lang/String;

    goto :goto_3a

    .line 111
    :pswitch_5c
    new-array v3, v7, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 113
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    aput-object p2, v3, v6

    goto :goto_3a

    .line 118
    :pswitch_69
    const/16 v3, 0x38

    new-array v1, v3, [Ljava/lang/Object;

    .line 119
    .local v1, newRest:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    invoke-static {v3, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    goto :goto_2b

    .line 88
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_69
    .end packed-switch
.end method

.method public getAdded(I)Z
    .registers 5
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 199
    if-ltz p1, :cond_7

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_11

    .line 200
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_11
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->added:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 4
    .parameter "n"

    .prologue
    .line 159
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_10

    .line 160
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_10
    packed-switch p1, :pswitch_data_2c

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    aget-object p0, v0, v1

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, p0

    :goto_1f
    return-object v0

    .line 164
    .restart local p0
    :pswitch_20
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key0:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 165
    :pswitch_23
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 166
    :pswitch_26
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 167
    :pswitch_29
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->key3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_1f

    .line 163
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .parameter "n"

    .prologue
    .line 179
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    if-lt p1, v0, :cond_10

    .line 180
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_10
    packed-switch p1, :pswitch_data_2e

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->rest:[Ljava/lang/Object;

    const/4 v1, 0x4

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object p0, v0, v1

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_21
    return-object v0

    .line 184
    .restart local p0
    :pswitch_22
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value0:Ljava/lang/String;

    goto :goto_21

    .line 185
    :pswitch_25
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value1:Ljava/lang/String;

    goto :goto_21

    .line 186
    :pswitch_28
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value2:Ljava/lang/String;

    goto :goto_21

    .line 187
    :pswitch_2b
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->value3:Ljava/lang/String;

    goto :goto_21

    .line 183
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public reverse()Lorg/bouncycastle/asn1/x509/X509NameElementList;
    .registers 6

    .prologue
    .line 213
    new-instance v1, Lorg/bouncycastle/asn1/x509/X509NameElementList;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/x509/X509NameElementList;-><init>()V

    .line 215
    .local v1, result:Lorg/bouncycastle/asn1/x509/X509NameElementList;
    iget v2, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_1e

    .line 216
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getKey(I)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->getAdded(I)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/x509/X509NameElementList;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Z)V

    .line 215
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 219
    :cond_1e
    return-object v1
.end method

.method public setLastAddedFlag()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 142
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->added:I

    iget v1, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    sub-int/2addr v1, v2

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->added:I

    .line 143
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameElementList;->size:I

    return v0
.end method
