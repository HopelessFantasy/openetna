.class public Lcom/android/mms/dom/smil/TimeImpl;
.super Ljava/lang/Object;
.source "TimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/Time;


# static fields
.field static final ALLOW_ALL:I = 0xff

.field static final ALLOW_EVENT_VALUE:I = 0x10

.field static final ALLOW_INDEFINITE_VALUE:I = 0x1

.field static final ALLOW_MARKER_VALUE:I = 0x20

.field static final ALLOW_NEGATIVE_VALUE:I = 0x80

.field static final ALLOW_OFFSET_VALUE:I = 0x2

.field static final ALLOW_SYNCBASE_VALUE:I = 0x4

.field static final ALLOW_SYNCTOPREV_VALUE:I = 0x8

.field static final ALLOW_WALLCLOCK_VALUE:I = 0x40


# instance fields
.field mResolved:Z

.field mResolvedOffset:D

.field mTimeType:S


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .parameter "timeValue"
    .parameter "constraints"

    .prologue
    const/4 v5, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v1, "indefinite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_14

    .line 83
    const/4 v1, 0x0

    iput-short v1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    .line 98
    :goto_13
    return-void

    .line 84
    :cond_14
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_47

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, sign:I
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_25
    :goto_25
    int-to-float v1, v0

    invoke-static {p1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    .line 93
    iput-boolean v5, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    .line 94
    iput-short v5, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    goto :goto_13

    .line 88
    :cond_39
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 89
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    const/4 v0, -0x1

    goto :goto_25

    .line 96
    .end local v0           #sign:I
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported time value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseClockValue(Ljava/lang/String;)F
    .registers 12
    .parameter "clockValue"

    .prologue
    const/4 v9, 0x2

    const v10, 0x476a6000

    const/high16 v8, 0x447a

    .line 132
    const/4 v3, 0x0

    .line 135
    .local v3, result:F
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 138
    const-string v6, "ms"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 139
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v3

    :goto_19
    move v6, v3

    .line 185
    :goto_1a
    return v6

    .line 140
    :cond_1b
    const-string v6, "s"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 141
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v6

    mul-float v3, v8, v6

    goto :goto_19

    .line 142
    :cond_2c
    const-string v6, "min"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 143
    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v6

    mul-float v3, v10, v6

    goto :goto_19

    .line 144
    :cond_3d
    const-string v6, "h"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 145
    const v6, 0x4a5bba00

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_4d} :catch_ad

    move-result v7

    mul-float v3, v6, v7

    goto :goto_19

    .line 149
    :cond_51
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_53
    invoke-static {p0, v6, v7}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_56} :catch_59

    move-result v6

    mul-float/2addr v6, v8

    goto :goto_1a

    .line 150
    :catch_59
    move-exception v6

    .line 155
    :try_start_5a
    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, timeValues:[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v9, :cond_92

    .line 160
    const/4 v1, 0x0

    .line 169
    .local v1, indexOfMinutes:I
    :goto_64
    aget-object v6, v5, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v6

    float-to-int v2, v6

    .line 170
    .local v2, minutes:I
    if-ltz v2, :cond_b5

    const/16 v6, 0x3b

    if-gt v2, v6, :cond_b5

    .line 171
    const v6, 0xea60

    mul-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 177
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v4

    .line 178
    .local v4, seconds:F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_bb

    const/high16 v6, 0x4270

    cmpg-float v6, v4, v6

    if-gez v6, :cond_bb

    .line 179
    mul-float v6, v10, v4

    add-float/2addr v3, v6

    goto :goto_19

    .line 161
    .end local v1           #indexOfMinutes:I
    .end local v2           #minutes:I
    .end local v4           #seconds:F
    :cond_92
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a7

    .line 162
    const v6, 0x36ee80

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v7

    float-to-int v7, v7

    mul-int/2addr v6, v7

    int-to-float v3, v6

    .line 163
    const/4 v1, 0x1

    .restart local v1       #indexOfMinutes:I
    goto :goto_64

    .line 165
    .end local v1           #indexOfMinutes:I
    :cond_a7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_ad} :catch_ad

    .line 186
    .end local v5           #timeValues:[Ljava/lang/String;
    :catch_ad
    move-exception v6

    move-object v0, v6

    .line 187
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 173
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #indexOfMinutes:I
    .restart local v2       #minutes:I
    .restart local v5       #timeValues:[Ljava/lang/String;
    :cond_b5
    :try_start_b5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 181
    .restart local v4       #seconds:F
    :cond_bb
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_b5 .. :try_end_c1} :catch_ad
.end method

.method private static parseFloat(Ljava/lang/String;IZ)F
    .registers 8
    .parameter "value"
    .parameter "ignoreLast"
    .parameter "parseDecimal"

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 212
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 213
    .local v0, indexOfComma:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_49

    .line 214
    if-nez p2, :cond_1d

    .line 215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "int value contains decimal"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 221
    .local v1, result:F
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 227
    :goto_48
    return v1

    .line 224
    .end local v1           #result:F
    :cond_49
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v1, v2

    .restart local v1       #result:F
    goto :goto_48
.end method


# virtual methods
.method public getBaseBegin()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset()D
    .registers 3

    .prologue
    .line 256
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResolved()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    return v0
.end method

.method public getResolvedOffset()D
    .registers 3

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    return-wide v0
.end method

.method public getTimeType()S
    .registers 2

    .prologue
    .line 268
    iget-short v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    return v0
.end method

.method public setBaseBegin(Z)V
    .registers 2
    .parameter "baseBegin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 274
    return-void
.end method

.method public setBaseElement(Lorg/w3c/dom/Element;)V
    .registers 2
    .parameter "baseElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 279
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .registers 2
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .registers 2
    .parameter "marker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 289
    return-void
.end method

.method public setOffset(D)V
    .registers 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 294
    return-void
.end method
