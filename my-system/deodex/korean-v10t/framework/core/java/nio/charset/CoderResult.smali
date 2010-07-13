.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# static fields
.field public static final OVERFLOW:Ljava/nio/charset/CoderResult; = null

.field private static final TYPE_MALFORMED_INPUT:I = 0x3

.field private static final TYPE_OVERFLOW:I = 0x2

.field private static final TYPE_UNDERFLOW:I = 0x1

.field private static final TYPE_UNMAPPABLE_CHAR:I = 0x4

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static _malformedErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field

.field private static _unmappableErrors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 75
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .parameter "type"
    .parameter "length"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    .line 106
    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    .line 107
    return-void
.end method

.method public static declared-synchronized malformedForLength(I)Ljava/nio/charset/CoderResult;
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    const-class v2, Ljava/nio/charset/CoderResult;

    monitor-enter v2

    if-lez p0, :cond_2a

    .line 124
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    .local v0, key:Ljava/lang/Integer;
    sget-object v3, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    .line 126
    :try_start_c
    sget-object v4, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CoderResult;

    .line 127
    .local v1, r:Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_21

    .line 128
    new-instance v1, Ljava/nio/charset/CoderResult;

    .end local v1           #r:Ljava/nio/charset/CoderResult;
    const/4 v4, 0x3

    invoke-direct {v1, v4, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 129
    .restart local v1       #r:Ljava/nio/charset/CoderResult;
    sget-object v4, Ljava/nio/charset/CoderResult;->_malformedErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    monitor-exit v2

    return-object v1

    .line 132
    .end local v1           #r:Ljava/nio/charset/CoderResult;
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 123
    .end local v0           #key:Ljava/lang/Integer;
    :catchall_27
    move-exception v3

    monitor-exit v2

    throw v3

    .line 135
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "niochar.08"

    invoke-static {v4, p0}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_27
.end method

.method public static declared-synchronized unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    const-class v2, Ljava/nio/charset/CoderResult;

    monitor-enter v2

    if-lez p0, :cond_2a

    .line 155
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    .local v0, key:Ljava/lang/Integer;
    sget-object v3, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    .line 157
    :try_start_c
    sget-object v4, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CoderResult;

    .line 158
    .local v1, r:Ljava/nio/charset/CoderResult;
    if-nez v1, :cond_21

    .line 159
    new-instance v1, Ljava/nio/charset/CoderResult;

    .end local v1           #r:Ljava/nio/charset/CoderResult;
    const/4 v4, 0x4

    invoke-direct {v1, v4, p0}, Ljava/nio/charset/CoderResult;-><init>(II)V

    .line 160
    .restart local v1       #r:Ljava/nio/charset/CoderResult;
    sget-object v4, Ljava/nio/charset/CoderResult;->_unmappableErrors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    monitor-exit v2

    return-object v1

    .line 163
    .end local v1           #r:Ljava/nio/charset/CoderResult;
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 154
    .end local v0           #key:Ljava/lang/Integer;
    :catchall_27
    move-exception v3

    monitor-exit v2

    throw v3

    .line 166
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "niochar.08"

    invoke-static {v4, p0}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_27
.end method


# virtual methods
.method public isError()Z
    .registers 3

    .prologue
    .line 189
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isMalformed()Z
    .registers 3

    .prologue
    .line 200
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isOverflow()Z
    .registers 3

    .prologue
    .line 210
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUnderflow()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 177
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUnmappable()Z
    .registers 3

    .prologue
    .line 220
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public length()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 233
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 235
    :cond_a
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0

    .line 239
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "niochar.09"

    invoke-static {v1}, Lorg/apache/harmony/niochar/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/nio/BufferOverflowException;,
            Ljava/nio/charset/UnmappableCharacterException;,
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_28

    .line 271
    new-instance v0, Ljava/nio/charset/CharacterCodingException;

    invoke-direct {v0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    throw v0

    .line 263
    :pswitch_b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 265
    :pswitch_11
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 267
    :pswitch_17
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 269
    :pswitch_1f
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 261
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_b
        :pswitch_11
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, dsc:Ljava/lang/String;
    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v1, :pswitch_data_54

    .line 305
    const-string v0, ""

    .line 308
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoderResult["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 291
    :pswitch_22
    const-string v0, "UNDERFLOW error"

    .line 292
    goto :goto_8

    .line 294
    :pswitch_25
    const-string v0, "OVERFLOW error"

    .line 295
    goto :goto_8

    .line 297
    :pswitch_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmappable-character error with erroneous input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    goto :goto_8

    .line 301
    :pswitch_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed-input error with erroneous input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    goto :goto_8

    .line 289
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_3e
        :pswitch_28
    .end packed-switch
.end method
