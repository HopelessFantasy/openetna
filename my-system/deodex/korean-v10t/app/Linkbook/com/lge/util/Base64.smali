.class public Lcom/lge/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHASET:[B = null

.field private static final CODES:[I = null

.field private static final I2O6:I = 0xc0

.field private static final I4O4:I = 0xf0

.field private static final I6O2:I = 0xfc

.field private static final O2I6:I = 0x3f

.field private static final O4I4:I = 0xf

.field private static final O6I2:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/lge/util/Base64;->ALPHASET:[B

    .line 112
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Lcom/lge/util/Base64;->CODES:[I

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    sget-object v1, Lcom/lge/util/Base64;->CODES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 116
    sget-object v1, Lcom/lge/util/Base64;->CODES:[I

    const/16 v2, 0x40

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 118
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    sget-object v1, Lcom/lge/util/Base64;->ALPHASET:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 119
    sget-object v1, Lcom/lge/util/Base64;->CODES:[I

    sget-object v2, Lcom/lge/util/Base64;->ALPHASET:[B

    aget-byte v2, v2, v0

    aput v0, v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 121
    :cond_2e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-string v3, ""

    .line 41
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, sBytes:[B
    invoke-static {v0}, Lcom/lge/util/Base64;->decode([B)[B

    move-result-object v0

    .line 45
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 46
    .restart local p0
    return-object p0
.end method

.method public static decode([B)[B
    .registers 16
    .parameter "eData"

    .prologue
    .line 132
    if-nez p0, :cond_a

    .line 133
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Cannot decode null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 135
    :cond_a
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v1, v0

    .line 136
    .local v1, cleanEData:[B
    const/4 v2, 0x0

    .line 137
    .local v2, cleanELength:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_16
    array-length v13, p0

    if-ge v12, v13, :cond_33

    .line 138
    aget-byte v13, p0, v12

    const/16 v14, 0x100

    if-ge v13, v14, :cond_30

    sget-object v13, Lcom/lge/util/Base64;->CODES:[I

    aget-byte v14, p0, v12

    aget v13, v13, v14

    const/16 v14, 0x40

    if-ge v13, v14, :cond_30

    .line 139
    add-int/lit8 v3, v2, 0x1

    .end local v2           #cleanELength:I
    .local v3, cleanELength:I
    aget-byte v13, p0, v12

    aput-byte v13, v1, v2

    move v2, v3

    .line 137
    .end local v3           #cleanELength:I
    .restart local v2       #cleanELength:I
    :cond_30
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 143
    :cond_33
    div-int/lit8 v13, v2, 0x4

    mul-int/lit8 v7, v13, 0x3

    .line 144
    .local v7, dLength:I
    rem-int/lit8 v13, v2, 0x4

    packed-switch v13, :pswitch_data_9e

    .line 153
    :goto_3c
    new-array v4, v7, [B

    .line 154
    .local v4, dData:[B
    const/4 v5, 0x0

    .line 155
    .local v5, dIndex:I
    const/4 v12, 0x0

    :goto_40
    array-length v13, p0

    if-ge v12, v13, :cond_9a

    .line 156
    add-int/lit8 v13, v12, 0x3

    array-length v14, p0

    if-le v13, v14, :cond_56

    .line 157
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "byte array is not a valid Base64 encoding"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 146
    .end local v4           #dData:[B
    .end local v5           #dIndex:I
    :pswitch_50
    add-int/lit8 v7, v7, 0x2

    .line 147
    goto :goto_3c

    .line 149
    :pswitch_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 159
    .restart local v4       #dData:[B
    .restart local v5       #dIndex:I
    :cond_56
    sget-object v13, Lcom/lge/util/Base64;->CODES:[I

    aget-byte v14, v1, v12

    aget v8, v13, v14

    .line 160
    .local v8, e1:I
    sget-object v13, Lcom/lge/util/Base64;->CODES:[I

    add-int/lit8 v14, v12, 0x1

    aget-byte v14, v1, v14

    aget v9, v13, v14

    .line 161
    .local v9, e2:I
    sget-object v13, Lcom/lge/util/Base64;->CODES:[I

    add-int/lit8 v14, v12, 0x2

    aget-byte v14, v1, v14

    aget v10, v13, v14

    .line 162
    .local v10, e3:I
    sget-object v13, Lcom/lge/util/Base64;->CODES:[I

    add-int/lit8 v14, v12, 0x3

    aget-byte v14, v1, v14

    aget v11, v13, v14

    .line 163
    .local v11, e4:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #dIndex:I
    .local v6, dIndex:I
    shl-int/lit8 v13, v8, 0x2

    shr-int/lit8 v14, v9, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v5

    .line 164
    array-length v13, v4

    if-ge v6, v13, :cond_9b

    .line 165
    add-int/lit8 v5, v6, 0x1

    .end local v6           #dIndex:I
    .restart local v5       #dIndex:I
    shl-int/lit8 v13, v9, 0x4

    shr-int/lit8 v14, v10, 0x2

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v6

    .line 167
    :goto_8b
    array-length v13, v4

    if-ge v5, v13, :cond_97

    .line 168
    add-int/lit8 v6, v5, 0x1

    .end local v5           #dIndex:I
    .restart local v6       #dIndex:I
    shl-int/lit8 v13, v10, 0x6

    or-int/2addr v13, v11

    int-to-byte v13, v13

    aput-byte v13, v4, v5

    move v5, v6

    .line 155
    .end local v6           #dIndex:I
    .restart local v5       #dIndex:I
    :cond_97
    add-int/lit8 v12, v12, 0x4

    goto :goto_40

    .line 171
    .end local v8           #e1:I
    .end local v9           #e2:I
    .end local v10           #e3:I
    .end local v11           #e4:I
    :cond_9a
    return-object v4

    .end local v5           #dIndex:I
    .restart local v6       #dIndex:I
    .restart local v8       #e1:I
    .restart local v9       #e2:I
    .restart local v10       #e3:I
    .restart local v11       #e4:I
    :cond_9b
    move v5, v6

    .end local v6           #dIndex:I
    .restart local v5       #dIndex:I
    goto :goto_8b

    .line 144
    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_53
        :pswitch_50
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 27
    .local v0, sBytes:[B
    invoke-static {v0}, Lcom/lge/util/Base64;->encode([B)[B

    move-result-object v0

    .line 28
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 29
    .restart local p0
    return-object p0
.end method

.method public static encode([B)[B
    .registers 11
    .parameter "dData"

    .prologue
    .line 68
    if-nez p0, :cond_a

    .line 69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v0, "Cannot encode null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    .restart local p0
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v4, v0, [B

    .line 73
    .local v4, eData:[B
    const/4 v0, 0x0

    .line 74
    .local v0, eIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v1

    .end local v1           #i:I
    .local v7, i:I
    move v5, v0

    .end local v0           #eIndex:I
    .local v5, eIndex:I
    :goto_17
    array-length v0, p0

    if-ge v7, v0, :cond_85

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, d2:I
    const/4 v2, 0x0

    .line 82
    .local v2, d3:I
    const/4 v3, 0x0

    .line 84
    .local v3, pad:I
    aget-byte v0, p0, v7

    .line 85
    .local v0, d1:I
    add-int/lit8 v6, v7, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_7c

    .line 86
    add-int/lit8 v1, v7, 0x1

    aget-byte v1, p0, v1

    .line 87
    add-int/lit8 v6, v7, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_79

    .line 88
    add-int/lit8 v2, v7, 0x2

    aget-byte v2, p0, v2

    move v8, v3

    .line 98
    .end local v3           #pad:I
    .local v8, pad:I
    :goto_32
    sget-object v3, Lcom/lge/util/Base64;->ALPHASET:[B

    and-int/lit16 v6, v0, 0xfc

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    .line 99
    .local v3, e1:I
    sget-object v6, Lcom/lge/util/Base64;->ALPHASET:[B

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v9, v1, 0xf0

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v0, v9

    aget-byte v0, v6, v0

    .line 100
    .local v0, e2:I
    sget-object v6, Lcom/lge/util/Base64;->ALPHASET:[B

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v9, v2, 0xc0

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v1, v9

    aget-byte v1, v6, v1

    .line 101
    .local v1, e3:I
    sget-object v6, Lcom/lge/util/Base64;->ALPHASET:[B

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    .line 103
    .local v2, e4:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #eIndex:I
    .local v6, eIndex:I
    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 104
    .end local v3           #e1:I
    add-int/lit8 v3, v6, 0x1

    .end local v6           #eIndex:I
    .local v3, eIndex:I
    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 105
    .end local v0           #e2:I
    add-int/lit8 v0, v3, 0x1

    .end local v3           #eIndex:I
    .local v0, eIndex:I
    const/4 v5, 0x2

    if-ge v8, v5, :cond_7f

    int-to-byte v1, v1

    .end local v1           #e3:I
    :goto_6a
    aput-byte v1, v4, v3

    .line 106
    add-int/lit8 v1, v0, 0x1

    .end local v0           #eIndex:I
    .local v1, eIndex:I
    const/4 v3, 0x1

    if-ge v8, v3, :cond_82

    int-to-byte v2, v2

    .end local v2           #e4:I
    :goto_72
    aput-byte v2, v4, v0

    .line 74
    add-int/lit8 v0, v7, 0x3

    .end local v7           #i:I
    .local v0, i:I
    move v7, v0

    .end local v0           #i:I
    .restart local v7       #i:I
    move v5, v1

    .end local v1           #eIndex:I
    .restart local v5       #eIndex:I
    goto :goto_17

    .line 91
    .end local v8           #pad:I
    .local v0, d1:I
    .local v1, d2:I
    .local v2, d3:I
    .local v3, pad:I
    :cond_79
    const/4 v3, 0x1

    move v8, v3

    .end local v3           #pad:I
    .restart local v8       #pad:I
    goto :goto_32

    .line 95
    .end local v8           #pad:I
    .restart local v3       #pad:I
    :cond_7c
    const/4 v3, 0x2

    move v8, v3

    .end local v3           #pad:I
    .restart local v8       #pad:I
    goto :goto_32

    .line 105
    .end local v5           #eIndex:I
    .local v0, eIndex:I
    .local v1, e3:I
    .local v2, e4:I
    :cond_7f
    const/16 v1, 0x3d

    goto :goto_6a

    .line 106
    .end local v0           #eIndex:I
    .local v1, eIndex:I
    :cond_82
    const/16 v2, 0x3d

    goto :goto_72

    .line 109
    .end local v1           #eIndex:I
    .end local v2           #e4:I
    .end local v8           #pad:I
    .restart local v5       #eIndex:I
    :cond_85
    return-object v4
.end method
