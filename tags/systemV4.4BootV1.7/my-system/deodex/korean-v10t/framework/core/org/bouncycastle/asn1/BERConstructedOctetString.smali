.class public Lorg/bouncycastle/asn1/BERConstructedOctetString;
.super Lorg/bouncycastle/asn1/DEROctetString;
.source "BERConstructedOctetString.java"


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .parameter "octs"

    .prologue
    .line 54
    invoke-static {p1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "string"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 49
    return-void
.end method

.method private generateOcts()Ljava/util/Vector;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, start:I
    const/4 v0, 0x0

    .line 93
    .local v0, end:I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 95
    .local v3, vec:Ljava/util/Vector;
    :goto_8
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v5

    if-ge v4, v5, :cond_36

    .line 97
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    aget-byte v4, v4, v0

    if-nez v4, :cond_33

    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_33

    .line 99
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    .line 101
    .local v1, nStr:[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v1

    invoke-static {v4, v2, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v2, v0, 0x1

    .line 106
    .end local v1           #nStr:[B
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 109
    :cond_36
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    new-array v1, v4, [B

    .line 111
    .restart local v1       #nStr:[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v1

    invoke-static {v4, v2, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 115
    return-object v3
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .registers 8
    .parameter "octs"

    .prologue
    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v2, v4, :cond_62

    .line 23
    :try_start_c
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 25
    .local v3, o:Lorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_43

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 27
    .end local v3           #o:Lorg/bouncycastle/asn1/DEROctetString;
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 29
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found in input should only contain DEROctetString"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_43
    move-exception v4

    move-object v1, v4

    .line 33
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception converting octets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 37
    .end local v1           #e:Ljava/io/IOException;
    :cond_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 122
    instance-of v4, p1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v4, :cond_9

    instance-of v4, p1, Lorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v4, :cond_77

    .line 124
    :cond_9
    const/16 v4, 0x24

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 126
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 131
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-eqz v4, :cond_2c

    .line 133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v1, v4, :cond_70

    .line 135
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 140
    .end local v1           #i:I
    :cond_2c
    const/4 v3, 0x0

    .line 141
    .local v3, start:I
    const/4 v0, 0x0

    .line 143
    .local v0, end:I
    :goto_2e
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v5

    if-ge v4, v5, :cond_5c

    .line 145
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    aget-byte v4, v4, v0

    if-nez v4, :cond_59

    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_59

    .line 147
    sub-int v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    .line 149
    .local v2, nStr:[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v2

    invoke-static {v4, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v3, v0, 0x1

    .line 154
    .end local v2           #nStr:[B
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 157
    :cond_5c
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    new-array v2, v4, [B

    .line 159
    .restart local v2       #nStr:[B
    iget-object v4, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v2

    invoke-static {v4, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 164
    .end local v0           #end:I
    .end local v2           #nStr:[B
    .end local v3           #start:I
    :cond_70
    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 165
    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 171
    :goto_76
    return-void

    .line 169
    :cond_77
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_76
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_d

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 86
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_c
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method
