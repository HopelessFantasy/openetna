.class public Lcom/android/mms/transaction/TransactionState;
.super Ljava/lang/Object;
.source "TransactionState.java"


# static fields
.field public static final FAILED:I = 0x2

.field public static final INITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x1


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/TransactionState;->mState:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/mms/transaction/TransactionState;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setContentUri(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 66
    monitor-enter p0

    if-gez p1, :cond_22

    const/4 v0, 0x2

    if-le p1, v0, :cond_22

    .line 67
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1f

    .line 66
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_22
    :try_start_22
    iput p1, p0, Lcom/android/mms/transaction/TransactionState;->mState:I
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_1f

    .line 70
    monitor-exit p0

    return-void
.end method
