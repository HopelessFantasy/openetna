.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 45
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 47
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 48
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 49
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .registers 11
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 308
    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v5

    .line 310
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    if-le v3, v5, :cond_17

    .line 311
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 313
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_15

    .line 314
    move v2, v0

    goto :goto_5

    .line 316
    :cond_15
    move v1, v0

    goto :goto_5

    .line 319
    .end local v0           #guess:I
    :cond_17
    add-int v3, p1, p2

    if-ne v1, v3, :cond_20

    .line 320
    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    .line 324
    :goto_1f
    return v3

    .line 321
    :cond_20
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-nez v3, :cond_28

    move v3, v1

    .line 322
    goto :goto_1f

    .line 324
    :cond_28
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1f
.end method

.method private checkIntegrity()V
    .registers 7

    .prologue
    .line 328
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v2, :cond_53

    .line 329
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v5, 0x1

    sub-int v5, v0, v5

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_50

    .line 330
    const/4 v1, 0x0

    .local v1, j:I
    :goto_15
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_4a

    .line 331
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 334
    :cond_4a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 328
    .end local v1           #j:I
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_53
    return-void
.end method

.method private gc()V
    .registers 9

    .prologue
    .line 98
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 99
    .local v2, n:I
    const/4 v3, 0x0

    .line 100
    .local v3, o:I
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 101
    .local v1, keys:[J
    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 103
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v2, :cond_1d

    .line 104
    aget-object v4, v5, v0

    .line 106
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1a

    .line 107
    if-eq v0, v3, :cond_18

    .line 108
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 109
    aput-object v4, v5, v3

    .line 112
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 103
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 116
    .end local v4           #val:Ljava/lang/Object;
    :cond_1d
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 117
    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 120
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 12
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    .line 278
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_15

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 305
    :goto_14
    return-void

    .line 283
    :cond_15
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_23

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_23

    .line 284
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 287
    :cond_23
    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 288
    .local v3, pos:I
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_48

    .line 289
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 291
    .local v0, n:I
    new-array v1, v0, [J

    .line 292
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 295
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 299
    iput-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 302
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_48
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 303
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 304
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 262
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 263
    .local v1, n:I
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 265
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 266
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 269
    :cond_e
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 270
    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 271
    return-void
.end method

.method public delete(J)V
    .registers 7
    .parameter "key"

    .prologue
    .line 78
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 80
    .local v0, i:I
    if-ltz v0, :cond_1c

    .line 81
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 82
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 86
    :cond_1c
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 67
    .local v0, i:I
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_15

    :cond_13
    move-object v1, p3

    .line 70
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_14
.end method

.method public indexOfKey(J)I
    .registers 6
    .parameter "key"

    .prologue
    .line 231
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 232
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 235
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 248
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 251
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_17

    .line 252
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_14

    move v1, v0

    .line 255
    :goto_13
    return v1

    .line 251
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 255
    :cond_17
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public keyAt(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 192
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 193
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 196
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 12
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 128
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 130
    .local v0, i:I
    if-ltz v0, :cond_10

    .line 131
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 172
    :goto_f
    return-void

    .line 133
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 135
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 136
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 137
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_f

    .line 141
    :cond_27
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 142
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 145
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 148
    :cond_3f
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 149
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 151
    .local v1, n:I
    new-array v2, v1, [J

    .line 152
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 155
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 159
    iput-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 162
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 164
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_83
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 169
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 170
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 3
    .parameter "key"

    .prologue
    .line 92
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 93
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 219
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 223
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 179
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 180
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 183
    :cond_7
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 206
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 209
    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
