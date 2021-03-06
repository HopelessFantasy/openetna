.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field curDataLength:I

.field curDataOffset:I

.field curOffset:I

.field hasValidTlvObject:Z

.field record:[B

.field tlvLength:I

.field tlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5
    .parameter "record"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    .line 41
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvOffset:I

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvLength:I

    .line 43
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    .line 46
    return-void
.end method

.method private parseCurrentTlvObject()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v1, v1, v2

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_17

    :cond_15
    move v1, v4

    .line 115
    :goto_16
    return v1

    .line 96
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-ge v1, v2, :cond_45

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    .line 99
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I
    :try_end_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_37} :catch_66

    .line 111
    :goto_37
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvOffset:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_6c

    move v1, v4

    .line 112
    goto :goto_16

    .line 100
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x81

    if-ne v1, v2, :cond_6a

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    .line 103
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I
    :try_end_65
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_45 .. :try_end_65} :catch_66

    goto :goto_37

    .line 107
    :catch_66
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    move v1, v4

    .line 108
    goto :goto_16

    .end local v0           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_6a
    move v1, v4

    .line 105
    goto :goto_16

    .line 115
    :cond_6c
    const/4 v1, 0x1

    goto :goto_16
.end method


# virtual methods
.method public getData()[B
    .registers 6

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 81
    :goto_5
    return-object v1

    .line 79
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    new-array v0, v1, [B

    .line 80
    .local v0, ret:[B
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 81
    goto :goto_5
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 68
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_5
.end method

.method public isValidObject()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .registers 3

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 53
    :goto_5
    return v0

    .line 51
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    goto :goto_5
.end method
