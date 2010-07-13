.class public Lcom/android/mms/ui/ConversationHeader;
.super Ljava/lang/Object;
.source "ConversationHeader.java"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private final mFromLock:Ljava/lang/Object;

.field private mHasAttachment:Z

.field private mHasDraft:Z

.field private mHasError:Z

.field private mIsRead:Z

.field private mMessageCount:I

.field private mPresenceResId:I

.field private mSubject:Ljava/lang/String;

.field private mThreadId:J

.field private mViewWaitingForFromChange:Lcom/android/mms/ui/ConversationHeaderView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V
    .registers 13
    .parameter "threadId"
    .parameter "from"
    .parameter "subject"
    .parameter "date"
    .parameter "isRead"
    .parameter "hasError"
    .parameter "hasDraft"
    .parameter "messageCount"
    .parameter "hasAttachment"

    .prologue
    const-string v1, ""

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    .line 63
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 64
    iput-object p3, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationHeader;->mPresenceResId:I

    .line 66
    if-eqz p4, :cond_28

    move-object v0, p4

    :goto_16
    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 67
    if-eqz p5, :cond_2c

    move-object v0, p5

    :goto_1b
    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 68
    iput-boolean p6, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 69
    iput-boolean p7, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 70
    iput-boolean p8, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    .line 71
    iput p9, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 72
    iput-boolean p10, p0, Lcom/android/mms/ui/ConversationHeader;->mHasAttachment:Z

    .line 73
    return-void

    .line 66
    :cond_28
    const-string v0, ""

    move-object v0, v1

    goto :goto_16

    .line 67
    :cond_2c
    const-string v0, ""

    move-object v0, v1

    goto :goto_1b
.end method

.method private conditionallyRunFromChangedCallback()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeader;->mViewWaitingForFromChange:Lcom/android/mms/ui/ConversationHeaderView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeader;->mViewWaitingForFromChange:Lcom/android/mms/ui/ConversationHeaderView;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/ConversationHeaderView;->onHeaderLoaded(Lcom/android/mms/ui/ConversationHeader;)V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationHeader;->mViewWaitingForFromChange:Lcom/android/mms/ui/ConversationHeaderView;

    .line 137
    :cond_13
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    return v0
.end method

.method public getPresenceResourceId()I
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget v1, p0, Lcom/android/mms/ui/ConversationHeader;->mPresenceResId:I

    monitor-exit v0

    return v1

    .line 108
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    return-wide v0
.end method

.method public hasAttachment()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasAttachment:Z

    return v0
.end method

.method public hasDraft()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 4
    .parameter "from"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationHeader;->conditionallyRunFromChangedCallback()V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setFromAndPresence(Ljava/lang/String;I)V
    .registers 5
    .parameter "from"
    .parameter "presenceResId"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 114
    iput p2, p0, Lcom/android/mms/ui/ConversationHeader;->mPresenceResId:I

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationHeader;->conditionallyRunFromChangedCallback()V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setWaitingView(Lcom/android/mms/ui/ConversationHeaderView;)V
    .registers 4
    .parameter "headerView"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFromLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mViewWaitingForFromChange:Lcom/android/mms/ui/ConversationHeaderView;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationHeader;->conditionallyRunFromChangedCallback()V

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationHeader from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationHeader;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
