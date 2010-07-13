.class public Lcom/lge/sns/message/MessageThread;
.super Ljava/lang/Object;
.source "MessageThread.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authorId:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public publishedDate:Ljava/util/Date;

.field public snsId:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unread:I

.field public updatedDate:Ljava/util/Date;

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 365
    new-instance v0, Lcom/lge/sns/message/MessageThread$1;

    invoke-direct {v0}, Lcom/lge/sns/message/MessageThread$1;-><init>()V

    sput-object v0, Lcom/lge/sns/message/MessageThread;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/MessageThread;->readFromParcel(Landroid/os/Parcel;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "authorId"
    .parameter "authorName"
    .parameter "title"
    .parameter "summary"
    .parameter "updatedDate"
    .parameter "publishedDate"
    .parameter "unread"

    .prologue
    const-string v1, ""

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    .line 132
    if-nez p6, :cond_2c

    .line 133
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    .line 137
    :goto_15
    if-nez p7, :cond_2f

    .line 138
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    .line 142
    :goto_1b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p8, p9}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p10, p11}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    .line 144
    iput p12, p0, Lcom/lge/sns/message/MessageThread;->unread:I

    .line 145
    return-void

    .line 135
    :cond_2c
    iput-object p6, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    goto :goto_15

    .line 140
    :cond_2f
    iput-object p7, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "authorId"
    .parameter "authorName"
    .parameter "title"
    .parameter "summary"
    .parameter "updatedDate"
    .parameter "publishedDate"
    .parameter "unread"

    .prologue
    const-string v1, ""

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    .line 91
    if-nez p6, :cond_34

    .line 92
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    .line 96
    :goto_15
    if-nez p7, :cond_37

    .line 97
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    .line 101
    :goto_1b
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p8}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    .line 103
    iput p10, p0, Lcom/lge/sns/message/MessageThread;->unread:I

    .line 104
    return-void

    .line 94
    :cond_34
    iput-object p6, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    goto :goto_15

    .line 99
    :cond_37
    iput-object p7, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    goto :goto_1b
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 385
    instance-of v3, p1, Lcom/lge/sns/message/MessageThread;

    if-eqz v3, :cond_7b

    .line 386
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/message/MessageThread;

    move-object v1, v0

    .line 387
    .local v1, obj:Lcom/lge/sns/message/MessageThread;
    const/4 v2, 0x1

    .line 388
    .local v2, retVal:Z
    if-eqz v2, :cond_67

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    if-ne v3, v4, :cond_67

    move v2, v6

    .line 389
    :goto_14
    if-eqz v2, :cond_69

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    if-ne v3, v4, :cond_69

    move v2, v6

    .line 390
    :goto_1d
    if-eqz v2, :cond_6b

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    if-ne v3, v4, :cond_6b

    move v2, v6

    .line 391
    :goto_26
    if-eqz v2, :cond_6d

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    if-ne v3, v4, :cond_6d

    move v2, v6

    .line 392
    :goto_2f
    if-eqz v2, :cond_6f

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    if-ne v3, v4, :cond_6f

    move v2, v6

    .line 393
    :goto_38
    if-eqz v2, :cond_71

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    if-ne v3, v4, :cond_71

    move v2, v6

    .line 394
    :goto_41
    if-eqz v2, :cond_73

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    if-ne v3, v4, :cond_73

    move v2, v6

    .line 395
    :goto_4a
    if-eqz v2, :cond_75

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    if-ne v3, v4, :cond_75

    move v2, v6

    .line 396
    :goto_53
    if-eqz v2, :cond_77

    iget-object v3, v1, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    if-ne v3, v4, :cond_77

    move v2, v6

    .line 397
    :goto_5c
    if-eqz v2, :cond_79

    iget v3, v1, Lcom/lge/sns/message/MessageThread;->unread:I

    iget v4, p0, Lcom/lge/sns/message/MessageThread;->unread:I

    if-ne v3, v4, :cond_79

    move v2, v6

    :goto_65
    move v3, v2

    .line 400
    .end local v1           #obj:Lcom/lge/sns/message/MessageThread;
    .end local v2           #retVal:Z
    :goto_66
    return v3

    .restart local v1       #obj:Lcom/lge/sns/message/MessageThread;
    .restart local v2       #retVal:Z
    :cond_67
    move v2, v5

    .line 388
    goto :goto_14

    :cond_69
    move v2, v5

    .line 389
    goto :goto_1d

    :cond_6b
    move v2, v5

    .line 390
    goto :goto_26

    :cond_6d
    move v2, v5

    .line 391
    goto :goto_2f

    :cond_6f
    move v2, v5

    .line 392
    goto :goto_38

    :cond_71
    move v2, v5

    .line 393
    goto :goto_41

    :cond_73
    move v2, v5

    .line 394
    goto :goto_4a

    :cond_75
    move v2, v5

    .line 395
    goto :goto_53

    :cond_77
    move v2, v5

    .line 396
    goto :goto_5c

    :cond_79
    move v2, v5

    .line 397
    goto :goto_65

    .line 400
    .end local v1           #obj:Lcom/lge/sns/message/MessageThread;
    .end local v2           #retVal:Z
    :cond_7b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_66
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 168
    .local v0, value:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_52

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_3a
    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 170
    cmp-long v2, v0, v4

    if-eqz v2, :cond_54

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_49
    iput-object v2, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/lge/sns/message/MessageThread;->unread:I

    .line 172
    return-void

    :cond_52
    move-object v2, v3

    .line 168
    goto :goto_3a

    :cond_54
    move-object v2, v3

    .line 170
    goto :goto_49
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .registers 2
    .parameter "authorId"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .registers 2
    .parameter "authorName"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setPublishedDate(Ljava/util/Date;)V
    .registers 2
    .parameter "publishedDate"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    .line 333
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 2
    .parameter "summary"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .registers 2
    .parameter "threadId"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setUpdatedDate(Ljava/util/Date;)V
    .registers 2
    .parameter "updatedDate"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    .line 317
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "\n"

    .line 341
    const-string v0, ""

    .line 343
    .local v0, retVal:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNS ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "USER ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "THREAD ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTHOR ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTHOR NAME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TITLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SUMMARY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UPDATED DATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PUBLISHED DATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, -0x1

    .line 178
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_2f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_3c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget v0, p0, Lcom/lge/sns/message/MessageThread;->unread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void

    :cond_45
    move-wide v0, v2

    .line 185
    goto :goto_2f

    :cond_47
    move-wide v0, v2

    .line 186
    goto :goto_3c
.end method
