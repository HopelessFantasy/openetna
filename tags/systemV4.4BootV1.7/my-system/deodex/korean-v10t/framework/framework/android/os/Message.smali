.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static mPool:Landroid/os/Message;

.field private static mPoolSize:I

.field private static mPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->mPoolSync:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->mPoolSize:I

    .line 366
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .registers 3

    .prologue
    .line 82
    sget-object v1, Landroid/os/Message;->mPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    sget-object v2, Landroid/os/Message;->mPool:Landroid/os/Message;

    if-eqz v2, :cond_13

    .line 84
    sget-object v0, Landroid/os/Message;->mPool:Landroid/os/Message;

    .line 85
    .local v0, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->mPool:Landroid/os/Message;

    .line 86
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 87
    monitor-exit v1

    move-object v1, v0

    .line 90
    .end local v0           #m:Landroid/os/Message;
    :goto_12
    return-object v1

    .line 89
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 90
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    goto :goto_12

    .line 89
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2
    .parameter "h"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 124
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3
    .parameter "h"
    .parameter "what"

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 152
    iput p1, v0, Landroid/os/Message;->what:I

    .line 154
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 187
    iput p1, v0, Landroid/os/Message;->what:I

    .line 188
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 189
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 191
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 209
    iput p1, v0, Landroid/os/Message;->what:I

    .line 210
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 211
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 212
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 168
    iput p1, v0, Landroid/os/Message;->what:I

    .line 169
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3
    .parameter "h"
    .parameter "callback"

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 137
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 139
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .parameter "orig"

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 102
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 103
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 104
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 106
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_25

    .line 107
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 109
    :cond_25
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 110
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 112
    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 402
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 403
    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 321
    iput v0, p0, Landroid/os/Message;->what:I

    .line 322
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 323
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 324
    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    iput-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 327
    iput-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 328
    iput-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 329
    iput-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 330
    return-void
.end method

.method public copyFrom(Landroid/os/Message;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 240
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 241
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 245
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_23

    .line 246
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 250
    :goto_22
    return-void

    .line 248
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_22
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 295
    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .registers 3

    .prologue
    .line 256
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public peekData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 223
    sget-object v0, Landroid/os/Message;->mPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    sget v1, Landroid/os/Message;->mPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 225
    invoke-virtual {p0}, Landroid/os/Message;->clearForRecycle()V

    .line 227
    sget-object v1, Landroid/os/Message;->mPool:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 228
    sput-object p0, Landroid/os/Message;->mPool:Landroid/os/Message;

    .line 230
    :cond_12
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public sendToTarget()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 309
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 310
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "{ what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, " when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-wide v1, p0, Landroid/os/Message;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_27

    .line 347
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    :cond_27
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_35

    .line 352
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    :cond_35
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_43

    .line 357
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    :cond_43
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 384
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 385
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t marshal objects across processes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_10
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 393
    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 394
    return-void
.end method
