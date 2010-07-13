.class public Lcom/android/mms/transaction/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# static fields
.field private static final DEFAULT_PIECE_SIZE:I = 0x1000

.field public static final PROGRESS_ABORT:I = -0x2

.field public static final PROGRESS_COMPLETE:I = 0x64

.field public static final PROGRESS_START:I = -0x1

.field public static final PROGRESS_STATUS_ACTION:Ljava/lang/String; = "com.android.mms.PROGRESS_STATUS"


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .registers 5
    .parameter "context"
    .parameter "token"
    .parameter "b"

    .prologue
    .line 41
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 43
    iput-object p1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    .line 45
    iput-wide p2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    .line 46
    return-void
.end method

.method private broadcastProgressIfNeeded(I)V
    .registers 7
    .parameter "progress"

    .prologue
    .line 82
    iget-wide v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_20

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "token"

    iget-wide v2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :cond_20
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x2

    .line 50
    if-nez p1, :cond_b

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_b
    const/4 v0, 0x0

    .line 56
    .local v0, completed:Z
    const/4 v4, -0x1

    :try_start_d
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 58
    const/4 v2, 0x0

    .local v2, pos:I
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 59
    .local v3, totalLen:I
    :goto_14
    if-ge v2, v3, :cond_35

    .line 60
    sub-int v1, v3, v2

    .line 61
    .local v1, len:I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_1e

    .line 62
    const/16 v1, 0x1000

    .line 64
    :cond_1e
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 65
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 67
    add-int/2addr v2, v1

    .line 69
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2e

    goto :goto_14

    .line 75
    .end local v1           #len:I
    .end local v2           #pos:I
    .end local v3           #totalLen:I
    :catchall_2e
    move-exception v4

    if-nez v0, :cond_34

    .line 76
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    :cond_34
    throw v4

    .line 72
    .restart local v2       #pos:I
    .restart local v3       #totalLen:I
    :cond_35
    const/16 v4, 0x64

    :try_start_37
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_2e

    .line 73
    const/4 v0, 0x1

    .line 75
    if-nez v0, :cond_40

    .line 76
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 79
    :cond_40
    return-void
.end method
