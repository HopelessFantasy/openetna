.class public Lcom/lge/sns/profile/FriendRequest;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "FriendRequest.java"


# instance fields
.field private id:J

.field private published:Ljava/util/Date;

.field private requestId:Ljava/lang/String;

.field private requestMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "published"
    .parameter "requestId"
    .parameter "requestMessage"

    .prologue
    .line 63
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-wide p1, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    .line 65
    iput-object p7, p0, Lcom/lge/sns/profile/FriendRequest;->published:Ljava/util/Date;

    .line 66
    iput-object p8, p0, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    .line 67
    iput-object p9, p0, Lcom/lge/sns/profile/FriendRequest;->requestMessage:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 83
    instance-of v2, p1, Lcom/lge/sns/profile/FriendRequest;

    if-eqz v2, :cond_1e

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/FriendRequest;

    move-object v1, v0

    .line 85
    .local v1, f:Lcom/lge/sns/profile/FriendRequest;
    iget-wide v2, v1, Lcom/lge/sns/profile/FriendRequest;->id:J

    iget-wide v4, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 87
    .end local v1           #f:Lcom/lge/sns/profile/FriendRequest;
    :goto_1b
    return v2

    .line 85
    .restart local v1       #f:Lcom/lge/sns/profile/FriendRequest;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 87
    .end local v1           #f:Lcom/lge/sns/profile/FriendRequest;
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1b
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    return-wide v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/FriendRequest;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/sns/profile/FriendRequest;->requestMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 79
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lge/sns/profile/FriendRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    .line 26
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/sns/profile/FriendRequest;->published:Ljava/util/Date;

    .line 36
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2
    .parameter "requestId"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRequestMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "requestMessage"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/sns/profile/FriendRequest;->requestMessage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/profile/FriendRequest;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/FriendRequest;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/FriendRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "requestMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/FriendRequest;->requestMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
