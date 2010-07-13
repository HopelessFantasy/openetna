.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final UNSET_MARK:I = -0x1


# instance fields
.field _elementSizeShift:I

.field final capacity:I

.field effectiveDirectAddress:I

.field limit:I

.field mark:I

.field position:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 81
    iput v1, p0, Ljava/nio/Buffer;->position:I

    .line 123
    iput v1, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    .line 134
    if-gez p1, :cond_13

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 137
    :cond_13
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    iput p1, p0, Ljava/nio/Buffer;->capacity:I

    .line 138
    return-void
.end method


# virtual methods
.method _array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method _arrayOffset()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public final capacity()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    return v0
.end method

.method public final clear()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 165
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 166
    return-object p0
.end method

.method public final flip()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 186
    return-object p0
.end method

.method public final hasRemaining()Z
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isReadOnly()Z
.end method

.method public final limit()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    return v0
.end method

.method public final limit(I)Ljava/nio/Buffer;
    .registers 4
    .parameter "newLimit"

    .prologue
    const/4 v1, -0x1

    .line 238
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    if-le p1, v0, :cond_d

    .line 239
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 242
    :cond_d
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    .line 243
    iget v0, p0, Ljava/nio/Buffer;->position:I

    if-le v0, p1, :cond_15

    .line 244
    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 246
    :cond_15
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-eq v0, v1, :cond_1f

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-le v0, p1, :cond_1f

    .line 247
    iput v1, p0, Ljava/nio/Buffer;->mark:I

    .line 249
    :cond_1f
    return-object p0
.end method

.method public final mark()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 261
    return-object p0
.end method

.method public final position()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Ljava/nio/Buffer;->position:I

    return v0
.end method

.method public final position(I)Ljava/nio/Buffer;
    .registers 5
    .parameter "newPosition"

    .prologue
    const/4 v2, -0x1

    .line 290
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    if-le p1, v0, :cond_d

    .line 291
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 294
    :cond_d
    iput p1, p0, Ljava/nio/Buffer;->position:I

    .line 295
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    if-eq v0, v2, :cond_1b

    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    if-le v0, v1, :cond_1b

    .line 296
    iput v2, p0, Ljava/nio/Buffer;->mark:I

    .line 298
    :cond_1b
    return-object p0
.end method

.method public final remaining()I
    .registers 3

    .prologue
    .line 309
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final reset()Ljava/nio/Buffer;
    .registers 3

    .prologue
    .line 321
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 322
    new-instance v0, Ljava/nio/InvalidMarkException;

    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v0

    .line 324
    :cond_b
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 325
    return-object p0
.end method

.method public final rewind()Ljava/nio/Buffer;
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 341
    return-object p0
.end method
