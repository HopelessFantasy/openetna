.class public Lorg/apache/harmony/security/x509/DNParser;
.super Ljava/lang/Object;
.source "DNParser.java"


# instance fields
.field protected beg:I

.field protected chars:[C

.field protected cur:I

.field protected encoded:[B

.field protected end:I

.field protected hasQE:Z

.field protected final length:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "dn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    .line 74
    return-void
.end method

.method private getEscaped()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 279
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_18

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_30

    .line 301
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->getUTF8()C

    move-result v0

    :goto_25
    return v0

    .line 287
    :sswitch_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    .line 297
    :sswitch_29
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_25

    .line 284
    :sswitch_data_30
    .sparse-switch
        0x20 -> :sswitch_29
        0x22 -> :sswitch_26
        0x23 -> :sswitch_29
        0x2b -> :sswitch_29
        0x2c -> :sswitch_29
        0x3b -> :sswitch_29
        0x3c -> :sswitch_29
        0x3d -> :sswitch_29
        0x3e -> :sswitch_29
        0x5c -> :sswitch_26
    .end sparse-switch
.end method

.method private hexAV()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const-string v7, "security.192"

    .line 178
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v3, v4, :cond_18

    .line 180
    new-instance v3, Ljava/io/IOException;

    const-string v4, "security.192"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_18
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 185
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 190
    :goto_22
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_63

    .line 192
    :cond_46
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 213
    :cond_4a
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int v0, v3, v4

    .line 214
    .local v0, hexLen:I
    const/4 v3, 0x5

    if-lt v0, v3, :cond_57

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_b1

    .line 215
    :cond_57
    new-instance v3, Ljava/io/IOException;

    const-string v4, "security.192"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    .end local v0           #hexLen:I
    :cond_63
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_8a

    .line 197
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 198
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 201
    :goto_75
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v3, v4, :cond_4a

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v6, :cond_4a

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_75

    .line 204
    :cond_8a
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x41

    if-lt v3, v4, :cond_a9

    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_a9

    .line 205
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 208
    :cond_a9
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto/16 :goto_22

    .line 220
    .restart local v0       #hexLen:I
    :cond_b1
    div-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    .line 221
    const/4 v1, 0x0

    .local v1, i:I
    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v2, v3, 0x1

    .local v2, p:I
    :goto_bc
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    array-length v3, v3

    if-ge v1, v3, :cond_cf

    .line 222
    iget-object v3, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 221
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 225
    :cond_cf
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method


# virtual methods
.method protected escapedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 231
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 232
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 235
    :cond_a
    :goto_a
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_1f

    .line 237
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 265
    :goto_1e
    return-object v0

    .line 240
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_ca

    .line 269
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 270
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_a

    .line 245
    :sswitch_3f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1e

    .line 248
    :sswitch_4e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 249
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_a

    .line 254
    :sswitch_63
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    .line 256
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 257
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 259
    :goto_77
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_96

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_96

    .line 260
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    aput-char v4, v0, v1

    .line 259
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_77

    .line 262
    :cond_96
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ba

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_a

    .line 265
    :cond_ba
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->cur:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1e

    .line 240
    :sswitch_data_ca
    .sparse-switch
        0x20 -> :sswitch_63
        0x2b -> :sswitch_3f
        0x2c -> :sswitch_3f
        0x3b -> :sswitch_3f
        0x5c -> :sswitch_4e
    .end sparse-switch
.end method

.method protected getByte(I)I
    .registers 11
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x37

    const/16 v4, 0x30

    const-string v5, "security.192"

    .line 358
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v2, v3, :cond_1c

    .line 360
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_1c
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    aget-char v0, v2, p1

    .line 367
    .local v0, b1:I
    if-lt v0, v4, :cond_34

    if-gt v0, v7, :cond_34

    .line 368
    sub-int/2addr v0, v4

    .line 378
    :goto_25
    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 379
    .local v1, b2:I
    if-lt v1, v4, :cond_54

    if-gt v1, v7, :cond_54

    .line 380
    sub-int/2addr v1, v4

    .line 390
    :goto_30
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 369
    .end local v1           #b2:I
    :cond_34
    const/16 v2, 0x61

    if-lt v0, v2, :cond_40

    const/16 v2, 0x66

    if-gt v0, v2, :cond_40

    .line 370
    const/16 v2, 0x57

    sub-int/2addr v0, v2

    goto :goto_25

    .line 371
    :cond_40
    if-lt v0, v8, :cond_48

    const/16 v2, 0x46

    if-gt v0, v2, :cond_48

    .line 372
    sub-int/2addr v0, v6

    goto :goto_25

    .line 374
    :cond_48
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    .restart local v1       #b2:I
    :cond_54
    const/16 v2, 0x61

    if-lt v1, v2, :cond_60

    const/16 v2, 0x66

    if-gt v1, v2, :cond_60

    .line 382
    const/16 v2, 0x57

    sub-int/2addr v1, v2

    goto :goto_30

    .line 383
    :cond_60
    if-lt v1, v8, :cond_68

    const/16 v2, 0x46

    if-gt v1, v2, :cond_68

    .line 384
    sub-int/2addr v1, v6

    goto :goto_30

    .line 386
    :cond_68
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.192"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getUTF8()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x3f

    .line 309
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v3

    .line 310
    .local v3, res:I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 312
    if-ge v3, v7, :cond_14

    .line 313
    int-to-char v4, v3

    .line 346
    :goto_13
    return v4

    .line 314
    :cond_14
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_6d

    const/16 v4, 0xf7

    if-gt v3, v4, :cond_6d

    .line 317
    const/16 v4, 0xdf

    if-gt v3, v4, :cond_3e

    .line 318
    const/4 v1, 0x1

    .line 319
    .local v1, count:I
    and-int/lit8 v3, v3, 0x1f

    .line 329
    :goto_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v1, :cond_6b

    .line 330
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 331
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-eq v4, v5, :cond_3c

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4a

    :cond_3c
    move v4, v6

    .line 332
    goto :goto_13

    .line 320
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_3e
    const/16 v4, 0xef

    if-gt v3, v4, :cond_46

    .line 321
    const/4 v1, 0x2

    .line 322
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0xf

    goto :goto_23

    .line 324
    .end local v1           #count:I
    :cond_46
    const/4 v1, 0x3

    .line 325
    .restart local v1       #count:I
    and-int/lit8 v3, v3, 0x7

    goto :goto_23

    .line 334
    .restart local v2       #i:I
    :cond_4a
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 336
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/x509/DNParser;->getByte(I)I

    move-result v0

    .line 337
    .local v0, b:I
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 338
    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_62

    move v4, v6

    .line 339
    goto :goto_13

    .line 342
    :cond_62
    shl-int/lit8 v4, v3, 0x6

    and-int/lit8 v5, v0, 0x3f

    add-int v3, v4, v5

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 344
    .end local v0           #b:I
    :cond_6b
    int-to-char v4, v3

    goto :goto_13

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_6d
    move v4, v6

    .line 346
    goto :goto_13
.end method

.method protected nextAT()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    const-string v4, "security.192"

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    .line 83
    :goto_9
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_9

    .line 85
    :cond_1e
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_26

    .line 86
    const/4 v0, 0x0

    .line 136
    :goto_25
    return-object v0

    .line 90
    :cond_26
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 93
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 94
    :goto_30
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_4d

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4d

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_4d

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_30

    .line 98
    :cond_4d
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v0, v1, :cond_5f

    .line 100
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_5f
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_a2

    .line 110
    :goto_6b
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_88

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_88

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_88

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_6b

    .line 113
    :cond_88
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_96

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_a2

    .line 115
    :cond_96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_a2
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 124
    :goto_a8
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_bd

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_bd

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_a8

    .line 129
    :cond_bd
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_11b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_11b

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_e5

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_11b

    :cond_e5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_fd

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_11b

    :cond_fd
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_115

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_11b

    .line 133
    :cond_115
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 136
    :cond_11b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_25
.end method

.method public parse()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v9, "security.192"

    const-string v8, ""

    .line 401
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v3, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, attType:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 449
    :goto_10
    return-object v3

    .line 409
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, atav:Ljava/util/List;
    :cond_16
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v4, v5, :cond_2f

    .line 415
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v6, ""

    invoke-direct {v5, v8, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_10

    .line 422
    :cond_2f
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_d8

    .line 442
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v2           #attValue:Ljava/lang/String;
    :goto_4b
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-lt v4, v5, :cond_8d

    .line 448
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_10

    .line 424
    :sswitch_55
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-boolean v6, p0, Lorg/apache/harmony/security/x509/DNParser;->hasQE:Z

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 429
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_69
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 431
    .restart local v2       #attValue:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v6, p0, Lorg/apache/harmony/security/x509/DNParser;->encoded:[B

    invoke-direct {v5, v2, v6}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 438
    .end local v2           #attValue:Ljava/lang/String;
    :sswitch_7d
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    new-instance v5, Lorg/apache/harmony/security/x501/AttributeValue;

    const-string v6, ""

    invoke-direct {v5, v8, v7}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 452
    :cond_8d
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_a1

    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_c1

    .line 453
    :cond_a1
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #atav:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .restart local v0       #atav:Ljava/util/List;
    :cond_a9
    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 461
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/DNParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    .line 462
    if-nez v1, :cond_16

    .line 463
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.192"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    :cond_c1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v5, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_a9

    .line 456
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.192"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 422
    nop

    :sswitch_data_d8
    .sparse-switch
        0x22 -> :sswitch_55
        0x23 -> :sswitch_69
        0x2b -> :sswitch_7d
        0x2c -> :sswitch_7d
        0x3b -> :sswitch_7d
    .end sparse-switch
.end method

.method protected quotedAV()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 143
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    .line 144
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    .line 147
    :goto_e
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ne v0, v1, :cond_20

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.192"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_47

    .line 155
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 169
    :goto_30
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->length:I

    if-ge v0, v1, :cond_75

    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_75

    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    goto :goto_30

    .line 157
    :cond_47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_68

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/DNParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 163
    :goto_5b
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    .line 164
    iget v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    goto :goto_e

    .line 161
    :cond_68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v1, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget-object v2, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_5b

    .line 172
    :cond_75
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/DNParser;->chars:[C

    iget v2, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    iget v3, p0, Lorg/apache/harmony/security/x509/DNParser;->end:I

    iget v4, p0, Lorg/apache/harmony/security/x509/DNParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
