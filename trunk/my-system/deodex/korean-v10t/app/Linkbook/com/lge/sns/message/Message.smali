.class public Lcom/lge/sns/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authorId:Ljava/lang/String;

.field public authorName:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public publishedDate:Ljava/util/Date;

.field public recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Recipient;",
            ">;"
        }
    .end annotation
.end field

.field public snsId:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public threadId:Ljava/lang/String;

.field public unread:I

.field public updatedDate:Ljava/util/Date;

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 419
    new-instance v0, Lcom/lge/sns/message/Message$1;

    invoke-direct {v0}, Lcom/lge/sns/message/Message$1;-><init>()V

    sput-object v0, Lcom/lge/sns/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v2, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v2, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    .line 88
    iput-object v1, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/sns/message/Message;->unread:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/Message;->readFromParcel(Landroid/os/Parcel;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .parameter "authorId"
    .parameter "authorName"
    .parameter "subject"
    .parameter "body"
    .parameter "updatedDate"
    .parameter "publishedDate"
    .parameter "unread"

    .prologue
    const-string v1, ""

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    .line 166
    iput-object p6, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    .line 169
    if-nez p7, :cond_2e

    .line 170
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    .line 174
    :goto_17
    if-nez p8, :cond_31

    .line 175
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    .line 179
    :goto_1d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p9, p10}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    .line 180
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p11, p12}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    .line 181
    iput p13, p0, Lcom/lge/sns/message/Message;->unread:I

    .line 182
    return-void

    .line 172
    :cond_2e
    iput-object p7, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    goto :goto_17

    .line 177
    :cond_31
    iput-object p8, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .parameter "authorId"
    .parameter "authorName"
    .parameter "subject"
    .parameter "body"
    .parameter "updatedDate"
    .parameter "publishedDate"
    .parameter "unread"

    .prologue
    const-string v1, ""

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    .line 123
    if-nez p7, :cond_3d

    .line 124
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    .line 128
    :goto_17
    if-nez p8, :cond_40

    .line 129
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    .line 133
    :goto_1d
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p10}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    .line 135
    iput p11, p0, Lcom/lge/sns/message/Message;->unread:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    .line 138
    return-void

    .line 126
    :cond_3d
    iput-object p7, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    goto :goto_17

    .line 131
    :cond_40
    iput-object p8, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    goto :goto_1d
.end method


# virtual methods
.method public addRecipient(Lcom/lge/sns/message/Recipient;)Z
    .registers 3
    .parameter "recipient"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    if-nez v0, :cond_b

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    .line 484
    :cond_b
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    if-nez v0, :cond_b

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    new-instance v1, Lcom/lge/sns/message/Recipient;

    invoke-direct {v1, p1, p2, p3}, Lcom/lge/sns/message/Recipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 439
    instance-of v3, p1, Lcom/lge/sns/message/Message;

    if-eqz v3, :cond_86

    .line 440
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/message/Message;

    move-object v1, v0

    .line 441
    .local v1, obj:Lcom/lge/sns/message/Message;
    const/4 v2, 0x1

    .line 442
    .local v2, retVal:Z
    if-eqz v2, :cond_70

    iget-object v3, v1, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    if-ne v3, v4, :cond_70

    move v2, v6

    .line 443
    :goto_14
    if-eqz v2, :cond_72

    iget-object v3, v1, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    if-ne v3, v4, :cond_72

    move v2, v6

    .line 444
    :goto_1d
    if-eqz v2, :cond_74

    iget-object v3, v1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    if-ne v3, v4, :cond_74

    move v2, v6

    .line 445
    :goto_26
    if-eqz v2, :cond_76

    iget-object v3, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    if-ne v3, v4, :cond_76

    move v2, v6

    .line 446
    :goto_2f
    if-eqz v2, :cond_78

    iget-object v3, v1, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    if-ne v3, v4, :cond_78

    move v2, v6

    .line 447
    :goto_38
    if-eqz v2, :cond_7a

    iget-object v3, v1, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    if-ne v3, v4, :cond_7a

    move v2, v6

    .line 448
    :goto_41
    if-eqz v2, :cond_7c

    iget-object v3, v1, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    if-ne v3, v4, :cond_7c

    move v2, v6

    .line 449
    :goto_4a
    if-eqz v2, :cond_7e

    iget-object v3, v1, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    if-ne v3, v4, :cond_7e

    move v2, v6

    .line 450
    :goto_53
    if-eqz v2, :cond_80

    iget-object v3, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    if-ne v3, v4, :cond_80

    move v2, v6

    .line 451
    :goto_5c
    if-eqz v2, :cond_82

    iget-object v3, v1, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    if-ne v3, v4, :cond_82

    move v2, v6

    .line 452
    :goto_65
    if-eqz v2, :cond_84

    iget v3, v1, Lcom/lge/sns/message/Message;->unread:I

    iget v4, p0, Lcom/lge/sns/message/Message;->unread:I

    if-ne v3, v4, :cond_84

    move v2, v6

    :goto_6e
    move v3, v2

    .line 455
    .end local v1           #obj:Lcom/lge/sns/message/Message;
    .end local v2           #retVal:Z
    :goto_6f
    return v3

    .restart local v1       #obj:Lcom/lge/sns/message/Message;
    .restart local v2       #retVal:Z
    :cond_70
    move v2, v5

    .line 442
    goto :goto_14

    :cond_72
    move v2, v5

    .line 443
    goto :goto_1d

    :cond_74
    move v2, v5

    .line 444
    goto :goto_26

    :cond_76
    move v2, v5

    .line 445
    goto :goto_2f

    :cond_78
    move v2, v5

    .line 446
    goto :goto_38

    :cond_7a
    move v2, v5

    .line 447
    goto :goto_41

    :cond_7c
    move v2, v5

    .line 448
    goto :goto_4a

    :cond_7e
    move v2, v5

    .line 449
    goto :goto_53

    :cond_80
    move v2, v5

    .line 450
    goto :goto_5c

    :cond_82
    move v2, v5

    .line 451
    goto :goto_65

    :cond_84
    move v2, v5

    .line 452
    goto :goto_6e

    .line 455
    .end local v1           #obj:Lcom/lge/sns/message/Message;
    .end local v2           #retVal:Z
    :cond_86
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_6f
.end method

.method public getAuthorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRecipients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    return-object v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isUnread()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/lge/sns/message/Message;->unread:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .parameter "in"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 207
    .local v0, value:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_58

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_40
    iput-object v2, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 209
    cmp-long v2, v0, v4

    if-eqz v2, :cond_5a

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_4f
    iput-object v2, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/lge/sns/message/Message;->unread:I

    .line 212
    return-void

    :cond_58
    move-object v2, v3

    .line 207
    goto :goto_40

    :cond_5a
    move-object v2, v3

    .line 209
    goto :goto_4f
.end method

.method public removeRecipient(Lcom/lge/sns/message/Recipient;)Z
    .registers 3
    .parameter "recipient"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    if-nez v0, :cond_6

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .registers 2
    .parameter "authorId"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .registers 2
    .parameter "authorName"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2
    .parameter "body"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setPublishedDate(Ljava/util/Date;)V
    .registers 2
    .parameter "publishedDate"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    .line 391
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .registers 2
    .parameter "threadId"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setUnread(I)V
    .registers 2
    .parameter "unread"

    .prologue
    .line 406
    iput p1, p0, Lcom/lge/sns/message/Message;->unread:I

    .line 407
    return-void
.end method

.method public setUpdatedDate(Ljava/util/Date;)V
    .registers 2
    .parameter "updatedDate"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    .line 375
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, -0x1

    .line 218
    iget-object v0, p0, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_34
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object v0, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget v0, p0, Lcom/lge/sns/message/Message;->unread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return-void

    :cond_4a
    move-wide v0, v2

    .line 226
    goto :goto_34

    :cond_4c
    move-wide v0, v2

    .line 227
    goto :goto_41
.end method
