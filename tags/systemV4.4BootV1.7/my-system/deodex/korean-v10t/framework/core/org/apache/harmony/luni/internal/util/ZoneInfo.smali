.class public Lorg/apache/harmony/luni/internal/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field private static final LEAP:[I = null

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I = null

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private mDaylightName:Ljava/lang/String;

.field private mGmtOffs:[I

.field private mIsDsts:[B

.field private mRawOffset:I

.field private mStandardName:Ljava/lang/String;

.field private mTransitions:[I

.field private mTypes:[B

.field private mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->NORMAL:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->LEAP:[I

    return-void

    .line 35
    nop

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 39
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;[I[B[I[B[B[BI)V
    .registers 16
    .parameter "name"
    .parameter "transitions"
    .parameter "type"
    .parameter "gmtoff"
    .parameter "isdst"
    .parameter "abbrev"
    .parameter "data"
    .parameter "abbrevoff"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    .line 71
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    .line 72
    iput-object p4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    .line 73
    iput-object p5, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    .line 74
    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->setID(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v3, v3

    sub-int v1, v3, v6

    .local v1, lastdst:I
    :goto_17
    if-ltz v1, :cond_25

    .line 81
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    if-eqz v3, :cond_80

    .line 86
    :cond_25
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    array-length v3, v3

    sub-int v2, v3, v6

    .local v2, laststd:I
    :goto_2a
    if-ltz v2, :cond_38

    .line 87
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    if-nez v3, :cond_83

    .line 91
    :cond_38
    if-ltz v1, :cond_48

    .line 92
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, p6, v3

    invoke-static {p7, p8, v3}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->nullName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    .line 95
    :cond_48
    if-ltz v2, :cond_58

    .line 96
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, p6, v3

    invoke-static {p7, p8, v3}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->nullName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    .line 102
    :cond_58
    if-gez v2, :cond_5b

    .line 103
    const/4 v2, 0x0

    .line 106
    :cond_5b
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_86

    .line 107
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    aget v3, v3, v5

    iput v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 116
    :goto_66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_67
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    array-length v3, v3

    if-ge v0, v3, :cond_93

    .line 117
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    aget v4, v3, v0

    iget v5, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    sub-int/2addr v4, v5

    aput v4, v3, v0

    .line 119
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_7d

    .line 120
    iput-boolean v6, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    .line 116
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 80
    .end local v0           #i:I
    .end local v2           #laststd:I
    :cond_80
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 86
    .restart local v2       #laststd:I
    :cond_83
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 109
    :cond_86
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    goto :goto_66

    .line 124
    .restart local v0       #i:I
    :cond_93
    iget v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 125
    return-void
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_4

    .line 52
    :goto_3
    return-object v1

    .line 50
    :cond_4
    :try_start_4
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->_getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 51
    :catch_9
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    goto :goto_3
.end method

.method private static nullName([BII)Ljava/lang/String;
    .registers 7
    .parameter "data"
    .parameter "where"
    .parameter "off"

    .prologue
    .line 57
    if-gez p2, :cond_4

    .line 58
    const/4 v1, 0x0

    .line 64
    :goto_3
    return-object v1

    .line 60
    :cond_4
    add-int v0, p1, p2

    .line 61
    .local v0, end:I
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_10

    aget-byte v1, p0, v0

    if-eqz v1, :cond_10

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 64
    :cond_10
    new-instance v1, Ljava/lang/String;

    add-int v2, p1, p2

    add-int v3, p1, p2

    sub-int v3, v0, v3

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 221
    :goto_5
    return v2

    .line 217
    :cond_6
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    if-nez v2, :cond_c

    move v2, v4

    .line 218
    goto :goto_5

    .line 220
    :cond_c
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    move-object v1, v0

    .line 221
    .local v1, other:Lorg/apache/harmony/luni/internal/util/ZoneInfo;
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    iget-boolean v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    if-nez v2, :cond_56

    iget-object v2, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    if-nez v2, :cond_60

    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    if-nez v2, :cond_62

    iget-object v2, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    if-nez v2, :cond_60

    :goto_26
    iget v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    iget v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_60

    move v2, v5

    goto :goto_5

    :cond_56
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_60
    move v2, v4

    goto :goto_5

    :cond_62
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_26
.end method

.method public getOffset(IIIIII)I
    .registers 15
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "millis"

    .prologue
    .line 136
    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    .line 137
    .local v0, calc:J
    rem-int/lit16 p2, p2, 0x190

    .line 139
    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 140
    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 142
    if-lez p2, :cond_2b

    .line 143
    const/4 v4, 0x1

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 145
    :cond_2b
    if-eqz p2, :cond_35

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_5e

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_5e

    :cond_35
    const/4 v4, 0x1

    move v2, v4

    .line 146
    .local v2, isLeap:Z
    :goto_37
    if-eqz v2, :cond_61

    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->LEAP:[I

    move-object v3, v4

    .line 148
    .local v3, mlen:[I
    :goto_3c
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 149
    const/4 v4, 0x1

    sub-int v4, p4, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 150
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 152
    iget v4, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 153
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 155
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    .line 145
    .end local v2           #isLeap:Z
    .end local v3           #mlen:[I
    :cond_5e
    const/4 v4, 0x0

    move v2, v4

    goto :goto_37

    .line 146
    .restart local v2       #isLeap:Z
    :cond_61
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->NORMAL:[I

    move-object v3, v4

    goto :goto_3c
.end method

.method public getOffset(J)I
    .registers 7
    .parameter "when"

    .prologue
    .line 160
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 161
    .local v1, unix:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 163
    .local v0, trans:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 164
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    add-int/2addr v2, v3

    .line 170
    :goto_18
    return v2

    .line 166
    :cond_19
    if-gez v0, :cond_20

    .line 167
    xor-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 170
    :cond_20
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    add-int/2addr v2, v3

    goto :goto_18
.end method

.method public getRawOffset()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 236
    const/16 v0, 0x1f

    .line 237
    .local v0, prime:I
    const/4 v1, 0x1

    .line 238
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    if-nez v2, :cond_4f

    move v2, v4

    :goto_b
    add-int/lit8 v1, v2, 0x1f

    .line 240
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mGmtOffs:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 241
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 242
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    .line 243
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    if-nez v3, :cond_56

    move v3, v4

    :goto_2e
    add-int v1, v2, v3

    .line 245
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 246
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 247
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    if-eqz v3, :cond_5d

    const/16 v3, 0x4cf

    :goto_4c
    add-int v1, v2, v3

    .line 248
    return v1

    .line 238
    :cond_4f
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mDaylightName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    .line 243
    :cond_56
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mStandardName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2e

    .line 247
    :cond_5d
    const/16 v3, 0x4d5

    goto :goto_4c
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 10
    .parameter "when"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 186
    .local v1, unix:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 188
    .local v0, trans:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    .line 189
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    aget-byte v2, v2, v6

    if-eqz v2, :cond_1b

    move v2, v7

    .line 195
    :goto_1a
    return v2

    :cond_1b
    move v2, v6

    .line 189
    goto :goto_1a

    .line 191
    :cond_1d
    if-gez v0, :cond_23

    .line 192
    xor-int/lit8 v2, v0, -0x1

    sub-int v0, v2, v7

    .line 195
    :cond_23
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mIsDsts:[B

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mTypes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    if-eqz v2, :cond_31

    move v2, v7

    goto :goto_1a

    :cond_31
    move v2, v6

    goto :goto_1a
.end method

.method public setRawOffset(I)V
    .registers 2
    .parameter "off"

    .prologue
    .line 180
    iput p1, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mRawOffset:I

    .line 181
    return-void
.end method

.method public useDaylightTime()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
