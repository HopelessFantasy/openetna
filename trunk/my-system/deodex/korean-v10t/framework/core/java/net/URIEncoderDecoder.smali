.class Ljava/net/URIEncoderDecoder;
.super Ljava/lang/Object;
.source "URIEncoderDecoder.java"


# static fields
.field static final digits:Ljava/lang/String; = "0123456789ABCDEF"

.field static final encoding:Ljava/lang/String; = "UTF8"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x25

    const/16 v9, 0x10

    const/4 v8, -0x1

    .line 193
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v5, result:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_86

    .line 196
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, c:C
    if-ne v0, v10, :cond_80

    .line 198
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 200
    :cond_1f
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_33

    .line 201
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01fe"

    invoke-static {v7, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 204
    :cond_33
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 205
    .local v1, d1:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 206
    .local v2, d2:I
    if-eq v1, v8, :cond_4b

    if-ne v2, v8, :cond_61

    .line 207
    :cond_4b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01ff"

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 211
    :cond_61
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    add-int/lit8 v3, v3, 0x3

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_76

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_1f

    .line 214
    :cond_76
    const-string v6, "UTF8"

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 217
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_80
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    goto :goto_10

    .line 220
    .end local v0           #c:C
    :cond_86
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static encodeOthers(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v8, "0123456789ABCDEF"

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_55

    .line 159
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 160
    .local v2, ch:C
    const/16 v5, 0x7f

    if-gt v2, v5, :cond_1c

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 163
    :cond_1c
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_19

    .line 165
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 171
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v8, "0123456789ABCDEF"

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_80

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 123
    .local v2, ch:C
    const/16 v5, 0x61

    if-lt v2, v5, :cond_1a

    const/16 v5, 0x7a

    if-le v2, v5, :cond_41

    :cond_1a
    const/16 v5, 0x41

    if-lt v2, v5, :cond_22

    const/16 v5, 0x5a

    if-le v2, v5, :cond_41

    :cond_22
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2a

    const/16 v5, 0x39

    if-le v2, v5, :cond_41

    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_41

    const/16 v5, 0x7f

    if-le v2, v5, :cond_47

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_47

    .line 129
    :cond_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 131
    :cond_47
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 132
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_59
    array-length v5, v1

    if-ge v4, v5, :cond_44

    .line 133
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 139
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static validate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 55
    const/4 v3, 0x0

    .local v3, i:I
    :cond_6
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9d

    .line 56
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 57
    .local v0, ch:C
    if-ne v0, v8, :cond_5f

    .line 59
    :cond_12
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_26

    .line 60
    new-instance v4, Ljava/net/URISyntaxException;

    const-string v5, "K0313"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 63
    :cond_26
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 64
    .local v1, d1:I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 65
    .local v2, d2:I
    if-eq v1, v6, :cond_3e

    if-ne v2, v6, :cond_50

    .line 66
    :cond_3e
    new-instance v4, Ljava/net/URISyntaxException;

    const-string v5, "K0314"

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 70
    :cond_50
    add-int/lit8 v3, v3, 0x3

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_12

    goto :goto_6

    .line 75
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_5f
    const/16 v4, 0x61

    if-lt v0, v4, :cond_67

    const/16 v4, 0x7a

    if-le v0, v4, :cond_99

    :cond_67
    const/16 v4, 0x41

    if-lt v0, v4, :cond_6f

    const/16 v4, 0x5a

    if-le v0, v4, :cond_99

    :cond_6f
    const/16 v4, 0x30

    if-lt v0, v4, :cond_77

    const/16 v4, 0x39

    if-le v0, v4, :cond_99

    :cond_77
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gt v4, v6, :cond_99

    const/16 v4, 0x7f

    if-le v0, v4, :cond_8d

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_8d

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 79
    :cond_8d
    new-instance v4, Ljava/net/URISyntaxException;

    const-string v5, "K00c1"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 81
    :cond_99
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto/16 :goto_6

    .line 83
    .end local v0           #ch:C
    :cond_9d
    return-void
.end method

.method static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_13

    const/16 v2, 0x7a

    if-le v0, v2, :cond_36

    :cond_13
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_36

    :cond_1b
    const/16 v2, 0x30

    if-lt v0, v2, :cond_23

    const/16 v2, 0x39

    if-le v0, v2, :cond_36

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_36

    .line 91
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "K00c1"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 93
    :cond_36
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_1

    .line 95
    .end local v0           #ch:C
    :cond_39
    return-void
.end method
