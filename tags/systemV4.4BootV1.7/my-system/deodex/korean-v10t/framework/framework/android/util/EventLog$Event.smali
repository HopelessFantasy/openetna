.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final DATA_START:I = 0x18

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PAYLOAD_START:I = 0x14

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final TAG_OFFSET:I = 0x14

.field private static final THREAD_OFFSET:I = 0x8


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 168
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 197
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_d

    move-object v5, v7

    .line 231
    :goto_c
    return-object v5

    .line 198
    :cond_d
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    packed-switch v5, :pswitch_data_b4

    move-object v5, v7

    .line 231
    goto :goto_c

    .line 200
    :pswitch_18
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v8, :cond_22

    move-object v5, v7

    goto :goto_c

    .line 201
    :cond_22
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_c

    .line 204
    :pswitch_2d
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_39

    move-object v5, v7

    goto :goto_c

    .line 205
    :cond_39
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_c

    .line 209
    :pswitch_44
    :try_start_44
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v8, :cond_4e

    move-object v5, v7

    goto :goto_c

    .line 210
    :cond_4e
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 211
    .local v3, length:I
    if-ltz v3, :cond_5e

    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v3, :cond_60

    :cond_5e
    move-object v5, v7

    goto :goto_c

    .line 212
    :cond_60
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 213
    .local v4, start:I
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_7a} :catch_7b

    goto :goto_c

    .line 215
    .end local v3           #length:I
    .end local v4           #start:I
    :catch_7b
    move-exception v5

    move-object v1, v5

    .line 216
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 220
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_83
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_8d

    move-object v5, v7

    goto :goto_c

    .line 221
    :cond_8d
    iget-object v5, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 222
    .restart local v3       #length:I
    if-gtz v3, :cond_98

    move-object v5, v7

    goto/16 :goto_c

    .line 223
    :cond_98
    new-array v0, v3, [Ljava/lang/Object;

    .line 224
    .local v0, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9b
    if-ge v2, v3, :cond_ad

    .line 225
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    .line 226
    aget-object v5, v0, v2

    if-nez v5, :cond_aa

    move-object v5, v7

    goto/16 :goto_c

    .line 224
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 228
    :cond_ad
    new-instance v5, Landroid/util/EventLog$List;

    invoke-direct {v5, v0}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 198
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2d
        :pswitch_44
        :pswitch_83
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 191
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProcessId()I
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
