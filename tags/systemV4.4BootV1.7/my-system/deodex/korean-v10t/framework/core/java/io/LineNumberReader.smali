.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# instance fields
.field private lastWasCR:Z

.field private lineNumber:I

.field private markedLastWasCR:Z

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .parameter "in"
    .parameter "size"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 64
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    monitor-exit v0

    return v1

    .line 75
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public mark(I)V
    .registers 4
    .parameter "readlimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 99
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 100
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 125
    .local v0, ch:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_13

    iget-boolean v2, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-eqz v2, :cond_13

    .line 126
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 128
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 129
    packed-switch v0, :pswitch_data_2a

    .line 137
    :goto_19
    :pswitch_19
    monitor-exit v1

    return v0

    .line 131
    :pswitch_1b
    const/16 v0, 0xa

    .line 132
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 135
    :pswitch_20
    iget v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/io/LineNumberReader;->lineNumber:I

    goto :goto_19

    .line 138
    .end local v0           #ch:I
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2

    .line 129
    :pswitch_data_2a
    .packed-switch 0xa
        :pswitch_20
        :pswitch_19
        :pswitch_19
        :pswitch_1b
    .end packed-switch
.end method

.method public read([CII)I
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 168
    iget-object v3, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 169
    :try_start_4
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 170
    .local v2, read:I
    if-ne v2, v4, :cond_d

    .line 171
    monitor-exit v3

    move v3, v4

    .line 187
    :goto_c
    return v3

    .line 173
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_3d

    .line 174
    add-int v4, p2, v1

    aget-char v0, p1, v4

    .line 175
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_24

    .line 176
    iget v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 177
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 173
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 178
    :cond_24
    const/16 v4, 0xa

    if-ne v0, v4, :cond_39

    .line 179
    iget-boolean v4, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-nez v4, :cond_32

    .line 180
    iget v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 182
    :cond_32
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_21

    .line 188
    .end local v0           #ch:C
    .end local v1           #i:I
    .end local v2           #read:I
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v4

    .line 184
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v2       #read:I
    :cond_39
    const/4 v4, 0x0

    :try_start_3a
    iput-boolean v4, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_21

    .line 187
    .end local v0           #ch:C
    :cond_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_36

    move v3, v2

    goto :goto_c
.end method

.method public readLine()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v2, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v1, result:Ljava/lang/StringBuilder;
    :goto_a
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->read()I

    move-result v0

    .line 210
    .local v0, character:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_20

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    monitor-exit v2

    move-object v2, v3

    .line 214
    :goto_1d
    return-object v2

    .line 211
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1b

    .line 213
    :cond_20
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2b

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    goto :goto_1d

    .line 216
    :cond_2b
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 218
    .end local v0           #character:I
    .end local v1           #result:Ljava/lang/StringBuilder;
    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 238
    iget v1, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 239
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setLineNumber(I)V
    .registers 4
    .parameter "lineNumber"

    .prologue
    .line 255
    iget-object v0, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public skip(J)J
    .registers 7
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_c

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 284
    :cond_c
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_23

    .line 286
    :try_start_15
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    .line 287
    int-to-long v2, v0

    monitor-exit v1

    move-wide v1, v2

    .line 290
    :goto_1f
    return-wide v1

    .line 285
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 290
    :cond_23
    monitor-exit v1

    move-wide v1, p1

    goto :goto_1f

    .line 291
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method
