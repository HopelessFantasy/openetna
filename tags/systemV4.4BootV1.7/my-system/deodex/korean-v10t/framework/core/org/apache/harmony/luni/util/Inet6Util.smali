.class public Lorg/apache/harmony/luni/util/Inet6Util;
.super Ljava/lang/Object;
.source "Inet6Util.java"


# static fields
.field static hexCharacters:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 148
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/luni/util/Inet6Util;->hexCharacters:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressToString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    const-string v2, "."

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToInt([BI)I
    .registers 5
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 303
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 307
    .local v0, value:I
    return v0
.end method

.method public static convertToBytes(Ljava/lang/String;[BI)V
    .registers 10
    .parameter "hexWord"
    .parameter "ipByteArray"
    .parameter "byteIndex"

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 201
    .local v3, hexWordLength:I
    const/4 v1, 0x0

    .line 202
    .local v1, hexWordIndex:I
    aput-byte v5, p1, p2

    .line 203
    add-int/lit8 v4, p2, 0x1

    aput-byte v5, p1, v4

    .line 207
    const/4 v4, 0x3

    if-le v3, v4, :cond_65

    .line 208
    add-int/lit8 v2, v1, 0x1

    .end local v1           #hexWordIndex:I
    .local v2, hexWordIndex:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 209
    .local v0, charValue:I
    aget-byte v4, p1, p2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 213
    .end local v0           #charValue:I
    :goto_21
    const/4 v4, 0x2

    if-le v3, v4, :cond_35

    .line 214
    add-int/lit8 v1, v2, 0x1

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 215
    .restart local v0       #charValue:I
    aget-byte v4, p1, p2

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    move v2, v1

    .line 219
    .end local v0           #charValue:I
    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    :cond_35
    const/4 v4, 0x1

    if-le v3, v4, :cond_63

    .line 220
    add-int/lit8 v1, v2, 0x1

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 221
    .restart local v0       #charValue:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v6, v0, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 225
    .end local v0           #charValue:I
    :goto_4e
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->getIntValue(C)I

    move-result v0

    .line 226
    .restart local v0       #charValue:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v6, v0, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 227
    return-void

    .end local v0           #charValue:I
    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    :cond_63
    move v1, v2

    .end local v2           #hexWordIndex:I
    .restart local v1       #hexWordIndex:I
    goto :goto_4e

    :cond_65
    move v2, v1

    .end local v1           #hexWordIndex:I
    .restart local v2       #hexWordIndex:I
    goto :goto_21
.end method

.method public static createByteArrayFromIPAddressString(Ljava/lang/String;)[B
    .registers 7
    .parameter "ipAddressString"

    .prologue
    .line 34
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIPV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 35
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    const-string v2, ""

    .line 37
    .local v2, token:Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, tempInt:I
    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 39
    .local p0, byteAddress:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    const/4 v1, 0x4

    if-ge v0, v1, :cond_25

    .line 40
    .end local v1           #tempInt:I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 42
    .restart local v1       #tempInt:I
    int-to-byte v4, v1

    aput-byte v4, p0, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v1           #tempInt:I
    :cond_25
    move-object v0, p0

    move-object p0, v3

    .line 143
    .end local v0           #i:I
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Ljava/util/StringTokenizer;
    .local p0, tokenizer:Ljava/util/StringTokenizer;
    :goto_27
    return-object v0

    .line 48
    .local p0, ipAddressString:Ljava/lang/String;
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3c

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 52
    :cond_3c
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v0, ":."

    const/4 v1, 0x1

    invoke-direct {v4, p0, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, hexStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance p0, Ljava/util/ArrayList;

    .end local p0           #ipAddressString:Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local p0, decStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 56
    .local v3, token:Ljava/lang/String;
    const-string v2, ""

    .line 58
    .local v2, prevToken:Ljava/lang/String;
    const/4 v0, -0x1

    .line 66
    .local v0, doubleColonIndex:I
    :cond_53
    :goto_53
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 67
    move-object v2, v3

    .line 68
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 71
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_53

    .line 73
    :cond_73
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 76
    :cond_7f
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 77
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 81
    :cond_8b
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 82
    const-string v2, ":"

    .end local v2           #prevToken:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    :cond_9f
    :goto_9f
    const/16 v2, 0x8

    .line 97
    .local v2, hexStringsLength:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .end local v3           #token:Ljava/lang/String;
    if-lez v3, :cond_a9

    .line 98
    add-int/lit8 v2, v2, -0x2

    .line 102
    :cond_a9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_cd

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, v2, v3

    .line 104
    .local v3, numberToInsert:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b3
    if-ge v2, v3, :cond_cd

    .line 105
    const-string v5, "0"

    invoke-virtual {v1, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 85
    .end local v2           #i:I
    .local v3, token:Ljava/lang/String;
    :cond_bd
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 87
    .local v2, prevToken:Ljava/lang/String;
    :cond_c1
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #prevToken:Ljava/lang/String;
    if-eqz v2, :cond_9f

    .line 88
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 109
    .end local v3           #token:Ljava/lang/String;
    :cond_cd
    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 112
    .end local v0           #doubleColonIndex:I
    .local v2, ipByteArray:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e6

    .line 113
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v3, v2, v5}, Lorg/apache/harmony/luni/util/Inet6Util;->convertToBytes(Ljava/lang/String;[BI)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 117
    :cond_e6
    const/4 v0, 0x0

    .end local v1           #hexStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_e7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_101

    .line 118
    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 123
    :cond_101
    const/4 v0, 0x1

    .line 124
    .local v0, ipV4:Z
    const/4 p0, 0x0

    .local p0, i:I
    :goto_103
    const/16 v1, 0xa

    if-ge p0, v1, :cond_137

    .line 125
    aget-byte v1, v2, p0

    if-eqz v1, :cond_12d

    .line 126
    const/4 p0, 0x0

    .line 131
    .end local v0           #ipV4:Z
    .local p0, ipV4:Z
    :goto_10c
    const/16 v0, 0xa

    aget-byte v0, v2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11a

    const/16 v0, 0xb

    aget-byte v0, v2, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11b

    .line 132
    :cond_11a
    const/4 p0, 0x0

    .line 135
    :cond_11b
    if-eqz p0, :cond_133

    .line 136
    const/4 p0, 0x4

    new-array v0, p0, [B

    .line 137
    .end local p0           #ipV4:Z
    .local v0, ipv4ByteArray:[B
    const/4 p0, 0x0

    .local p0, i:I
    :goto_121
    const/4 v1, 0x4

    if-ge p0, v1, :cond_130

    .line 138
    add-int/lit8 v1, p0, 0xc

    aget-byte v1, v2, v1

    aput-byte v1, v0, p0

    .line 137
    add-int/lit8 p0, p0, 0x1

    goto :goto_121

    .line 124
    .local v0, ipV4:Z
    :cond_12d
    add-int/lit8 p0, p0, 0x1

    goto :goto_103

    .local v0, ipv4ByteArray:[B
    :cond_130
    move-object p0, v4

    .line 140
    .end local v4           #tokenizer:Ljava/util/StringTokenizer;
    .local p0, tokenizer:Ljava/util/StringTokenizer;
    goto/16 :goto_27

    .end local v0           #ipv4ByteArray:[B
    .restart local v4       #tokenizer:Ljava/util/StringTokenizer;
    .local p0, ipV4:Z
    :cond_133
    move-object p0, v4

    .end local v4           #tokenizer:Ljava/util/StringTokenizer;
    .local p0, tokenizer:Ljava/util/StringTokenizer;
    move-object v0, v2

    .line 143
    goto/16 :goto_27

    .local v0, ipV4:Z
    .restart local v4       #tokenizer:Ljava/util/StringTokenizer;
    .local p0, i:I
    :cond_137
    move p0, v0

    .end local v0           #ipV4:Z
    .local p0, ipV4:Z
    goto :goto_10c
.end method

.method public static createIPAddrStringFromByteArray([B)Ljava/lang/String;
    .registers 14
    .parameter "ipByteArray"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 153
    array-length v8, p0

    if-ne v8, v10, :cond_10

    .line 154
    invoke-static {p0, v11}, Lorg/apache/harmony/luni/util/Inet6Util;->bytesToInt([BI)I

    move-result v8

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Inet6Util;->addressToString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    :goto_f
    return-object v8

    .line 157
    :cond_10
    array-length v8, p0

    const/16 v9, 0x10

    if-ne v8, v9, :cond_78

    .line 158
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isIPv4MappedAddress([B)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 159
    new-array v4, v10, [B

    .line 160
    .local v4, ipv4ByteArray:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v10, :cond_29

    .line 161
    add-int/lit8 v8, v3, 0xc

    aget-byte v8, p0, v8

    aput-byte v8, v4, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 163
    :cond_29
    invoke-static {v4, v11}, Lorg/apache/harmony/luni/util/Inet6Util;->bytesToInt([BI)I

    move-result v8

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Inet6Util;->addressToString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    .line 165
    .end local v3           #i:I
    .end local v4           #ipv4ByteArray:[B
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_38
    if-ge v3, v12, :cond_73

    .line 169
    mul-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x8

    .line 170
    .local v6, num:I
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v6, v8

    .line 173
    const/4 v2, 0x1

    .local v2, count:I
    move v5, v6

    .line 174
    .local v5, j:I
    :goto_4d
    ushr-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_54

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 178
    :cond_54
    new-array v0, v2, [C

    .line 180
    .local v0, buf:[C
    :cond_56
    and-int/lit8 v7, v6, 0xf

    .line 181
    .local v7, t:I
    add-int/lit8 v2, v2, -0x1

    sget-object v8, Lorg/apache/harmony/luni/util/Inet6Util;->hexCharacters:[C

    aget-char v8, v8, v7

    aput-char v8, v0, v2

    .line 182
    ushr-int/lit8 v6, v6, 0x4

    .line 183
    if-gtz v2, :cond_56

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v12, :cond_70

    .line 187
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 191
    .end local v0           #buf:[C
    .end local v2           #count:I
    .end local v5           #j:I
    .end local v6           #num:I
    .end local v7           #t:I
    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    .line 193
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :cond_78
    const/4 v8, 0x0

    goto :goto_f
.end method

.method static getIntValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 231
    packed-switch p0, :pswitch_data_32

    .line 254
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    .line 255
    packed-switch p0, :pswitch_data_4a

    .line 269
    :goto_b
    :pswitch_b
    return v0

    .line 235
    :pswitch_c
    const/4 v0, 0x1

    goto :goto_b

    .line 237
    :pswitch_e
    const/4 v0, 0x2

    goto :goto_b

    .line 239
    :pswitch_10
    const/4 v0, 0x3

    goto :goto_b

    .line 241
    :pswitch_12
    const/4 v0, 0x4

    goto :goto_b

    .line 243
    :pswitch_14
    const/4 v0, 0x5

    goto :goto_b

    .line 245
    :pswitch_16
    const/4 v0, 0x6

    goto :goto_b

    .line 247
    :pswitch_18
    const/4 v0, 0x7

    goto :goto_b

    .line 249
    :pswitch_1a
    const/16 v0, 0x8

    goto :goto_b

    .line 251
    :pswitch_1d
    const/16 v0, 0x9

    goto :goto_b

    .line 257
    :pswitch_20
    const/16 v0, 0xa

    goto :goto_b

    .line 259
    :pswitch_23
    const/16 v0, 0xb

    goto :goto_b

    .line 261
    :pswitch_26
    const/16 v0, 0xc

    goto :goto_b

    .line 263
    :pswitch_29
    const/16 v0, 0xd

    goto :goto_b

    .line 265
    :pswitch_2c
    const/16 v0, 0xe

    goto :goto_b

    .line 267
    :pswitch_2f
    const/16 v0, 0xf

    goto :goto_b

    .line 231
    :pswitch_data_32
    .packed-switch 0x30
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_1d
    .end packed-switch

    .line 255
    :pswitch_data_4a
    .packed-switch 0x61
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method public static isIP6AddressInFullForm(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddress"

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 319
    const-string v1, "::"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, doubleColonIndex:I
    if-ltz v0, :cond_11

    move v1, v2

    .line 326
    .end local v0           #doubleColonIndex:I
    :goto_10
    return v1

    .line 324
    .restart local v0       #doubleColonIndex:I
    :cond_11
    const/4 v1, 0x1

    goto :goto_10

    .end local v0           #doubleColonIndex:I
    :cond_13
    move v1, v2

    .line 326
    goto :goto_10
.end method

.method private static isIPv4MappedAddress([B)Z
    .registers 6
    .parameter "ipAddress"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v4, :cond_10

    .line 278
    aget-byte v1, p0, v0

    if-eqz v1, :cond_d

    move v1, v3

    .line 287
    :goto_c
    return v1

    .line 277
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 283
    :cond_10
    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_1a

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_1c

    :cond_1a
    move v1, v3

    .line 284
    goto :goto_c

    .line 287
    :cond_1c
    const/4 v1, 0x1

    goto :goto_c
.end method

.method static isValidHexChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 491
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x46

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isValidIP4Word(Ljava/lang/String;)Z
    .registers 7
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    :cond_f
    move v2, v4

    .line 486
    :goto_10
    return v2

    .line 477
    :cond_11
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 478
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 479
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_24

    const/16 v2, 0x39

    if-le v0, v2, :cond_26

    :cond_24
    move v2, v4

    .line 480
    goto :goto_10

    .line 477
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 483
    .end local v0           #c:C
    :cond_29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_33

    move v2, v4

    .line 484
    goto :goto_10

    :cond_33
    move v2, v5

    .line 486
    goto :goto_10
.end method

.method public static isValidIP6Address(Ljava/lang/String;)Z
    .registers 14
    .parameter "ipAddress"

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 332
    .local v3, length:I
    const/4 v1, 0x0

    .line 333
    .local v1, doubleColon:Z
    const/4 v4, 0x0

    .line 334
    .local v4, numberOfColons:I
    const/4 v6, 0x0

    .line 335
    .local v6, numberOfPeriods:I
    const/4 v5, 0x0

    .line 336
    .local v5, numberOfPercent:I
    const-string v9, ""

    .line 337
    .local v9, word:Ljava/lang/String;
    const/4 v0, 0x0

    .line 338
    .local v0, c:C
    const/4 v8, 0x0

    .line 339
    .local v8, prevChar:C
    const/4 v7, 0x0

    .line 341
    .local v7, offset:I
    const/4 v2, 0x2

    if-ge v3, v2, :cond_1c

    .line 342
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .local v12, offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .line 469
    .end local v12           #offset:I
    .local v4, offset:I
    :goto_1b
    return v7

    .line 345
    .end local v2           #numberOfPercent:I
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v3, :cond_190

    .line 346
    move v8, v0

    .line 347
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    sparse-switch v0, :sswitch_data_1f2

    .line 434
    if-nez v5, :cond_17d

    .line 435
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_16a

    .line 436
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 352
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_3c
    if-eqz v2, :cond_4a

    .line 353
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 355
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_4a
    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5d

    if-eq v10, v11, :cond_61

    .line 356
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 358
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_61
    const/4 v7, 0x1

    .line 359
    const/4 v10, 0x4

    if-ge v3, v10, :cond_f4

    .line 360
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 366
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_71
    const/4 v10, 0x1

    sub-int v10, v3, v10

    if-eq v2, v10, :cond_82

    .line 367
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 369
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_82
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-eq v10, v11, :cond_f4

    .line 370
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto :goto_1b

    .line 376
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :sswitch_97
    add-int/lit8 v6, v6, 0x1

    .line 377
    const/4 v10, 0x3

    if-le v6, v10, :cond_a9

    .line 378
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 380
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_a9
    invoke-static {v9}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_bc

    .line 381
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 383
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_bc
    const/4 v10, 0x6

    if-eq v4, v10, :cond_ce

    if-nez v1, :cond_ce

    .line 384
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 388
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_ce
    const/4 v10, 0x7

    if-ne v4, v10, :cond_f2

    add-int/lit8 v10, v7, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_f2

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_f2

    .line 390
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 392
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_f2
    const-string v9, ""

    .line 345
    :cond_f4
    :goto_f4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 396
    :sswitch_f8
    add-int/lit8 v4, v4, 0x1

    .line 397
    const/4 v10, 0x7

    if-le v4, v10, :cond_10a

    .line 398
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 400
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_10a
    if-lez v6, :cond_119

    .line 401
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 403
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_119
    const/16 v10, 0x3a

    if-ne v8, v10, :cond_12d

    .line 404
    if-eqz v1, :cond_12c

    .line 405
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 407
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_12c
    const/4 v1, 0x1

    .line 409
    :cond_12d
    const-string v9, ""

    .line 410
    goto :goto_f4

    .line 412
    :sswitch_130
    if-nez v4, :cond_13f

    .line 413
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 415
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_13f
    add-int/lit8 v5, v5, 0x1

    .line 418
    add-int/lit8 v10, v2, 0x1

    if-lt v10, v3, :cond_152

    .line 421
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 424
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_152
    add-int/lit8 v10, v2, 0x1

    :try_start_154
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_15b} :catch_15c

    goto :goto_f4

    .line 425
    :catch_15c
    move-exception p0

    .line 429
    .local p0, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 438
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_16a
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidHexChar(C)Z

    move-result v10

    if-nez v10, :cond_17d

    .line 439
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 442
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_17d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #word:Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #word:Ljava/lang/String;
    goto/16 :goto_f4

    .line 447
    :cond_190
    if-lez v6, :cond_1a8

    .line 448
    const/4 p0, 0x3

    if-ne v6, p0, :cond_19b

    .end local p0           #ipAddress:Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP4Word(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e5

    .line 449
    :cond_19b
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 454
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v2, i:I
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1a8
    const/4 v2, 0x7

    if-eq v4, v2, :cond_1ba

    .end local v2           #i:I
    if-nez v1, :cond_1ba

    .line 455
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .local v2, numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 461
    .end local v2           #numberOfPercent:I
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    .local p0, ipAddress:Ljava/lang/String;
    :cond_1ba
    if-nez v5, :cond_1e5

    .line 462
    const-string v2, ""

    if-ne v9, v2, :cond_1e5

    const/4 v2, 0x1

    sub-int v2, v3, v2

    sub-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x3a

    if-ne v2, v10, :cond_1e5

    const/4 v2, 0x2

    sub-int v2, v3, v2

    sub-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .end local p0           #ipAddress:Ljava/lang/String;
    const/16 v2, 0x3a

    if-eq p0, v2, :cond_1e5

    .line 464
    const/4 p0, 0x0

    move v2, v5

    .end local v5           #numberOfPercent:I
    .restart local v2       #numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 469
    .end local v2           #numberOfPercent:I
    .end local p0           #c:C
    .local v0, c:C
    .local v1, doubleColon:Z
    .local v3, length:I
    .local v4, numberOfColons:I
    .local v5, numberOfPercent:I
    .local v6, numberOfPeriods:I
    .restart local v7       #offset:I
    .restart local v8       #prevChar:C
    .restart local v9       #word:Ljava/lang/String;
    :cond_1e5
    const/4 p0, 0x1

    move v2, v5

    .end local v5           #numberOfPercent:I
    .restart local v2       #numberOfPercent:I
    move v3, v6

    .end local v6           #numberOfPeriods:I
    .local v3, numberOfPeriods:I
    move-object v6, v9

    .end local v9           #word:Ljava/lang/String;
    .local v6, word:Ljava/lang/String;
    move v5, v8

    .end local v8           #prevChar:C
    .local v5, prevChar:C
    move v12, v7

    .end local v7           #offset:I
    .restart local v12       #offset:I
    move v7, p0

    move p0, v0

    .end local v0           #c:C
    .restart local p0       #c:C
    move v0, v1

    .end local v1           #doubleColon:Z
    .local v0, doubleColon:Z
    move v1, v4

    .end local v4           #numberOfColons:I
    .local v1, numberOfColons:I
    move v4, v12

    .end local v12           #offset:I
    .local v4, offset:I
    goto/16 :goto_1b

    .line 348
    :sswitch_data_1f2
    .sparse-switch
        0x25 -> :sswitch_130
        0x2e -> :sswitch_97
        0x3a -> :sswitch_f8
        0x5b -> :sswitch_3c
        0x5d -> :sswitch_71
    .end sparse-switch
.end method

.method public static isValidIPV4Address(Ljava/lang/String;)Z
    .registers 11
    .parameter "value"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 504
    const-string v6, "\\p{Digit}+(\\.\\p{Digit}+)*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    move v6, v8

    .line 534
    :goto_c
    return v6

    .line 508
    :cond_d
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, parts:[Ljava/lang/String;
    array-length v1, v5

    .line 510
    .local v1, length:I
    if-lt v1, v9, :cond_19

    const/4 v6, 0x4

    if-le v1, v6, :cond_1b

    :cond_19
    move v6, v8

    .line 511
    goto :goto_c

    .line 514
    :cond_1b
    if-ne v1, v9, :cond_30

    .line 516
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 517
    .local v2, longValue:J
    const-wide v6, 0xffffffffL

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2e

    move v6, v9

    goto :goto_c

    :cond_2e
    move v6, v8

    goto :goto_c

    .line 520
    .end local v2           #longValue:J
    :cond_30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    if-ge v0, v1, :cond_52

    .line 524
    const/16 v4, 0xff

    .line 525
    .local v4, max:I
    if-ne v1, v7, :cond_46

    if-ne v0, v9, :cond_46

    .line 526
    const v4, 0xffffff

    .line 530
    :cond_3c
    :goto_3c
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v4, :cond_4f

    move v6, v8

    .line 531
    goto :goto_c

    .line 527
    :cond_46
    const/4 v6, 0x3

    if-ne v1, v6, :cond_3c

    if-ne v0, v7, :cond_3c

    .line 528
    const v4, 0xffff

    goto :goto_3c

    .line 520
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .end local v4           #max:I
    :cond_52
    move v6, v9

    .line 534
    goto :goto_c
.end method
