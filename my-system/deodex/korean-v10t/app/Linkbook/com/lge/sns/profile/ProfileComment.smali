.class public Lcom/lge/sns/profile/ProfileComment;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "ProfileComment.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentId:Ljava/lang/String;

.field private id:J

.field private profileId:J

.field private published:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "published"
    .parameter "commentId"
    .parameter "comment"
    .parameter "profileId"

    .prologue
    .line 76
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-wide p1, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    .line 78
    iput-object p7, p0, Lcom/lge/sns/profile/ProfileComment;->published:Ljava/util/Date;

    .line 79
    iput-object p8, p0, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    .line 80
    iput-object p9, p0, Lcom/lge/sns/profile/ProfileComment;->comment:Ljava/lang/String;

    .line 81
    iput-wide p10, p0, Lcom/lge/sns/profile/ProfileComment;->profileId:J

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 97
    instance-of v2, p1, Lcom/lge/sns/profile/ProfileComment;

    if-eqz v2, :cond_1e

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/ProfileComment;

    move-object v1, v0

    .line 99
    .local v1, f:Lcom/lge/sns/profile/ProfileComment;
    iget-wide v2, v1, Lcom/lge/sns/profile/ProfileComment;->id:J

    iget-wide v4, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, v1, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 101
    .end local v1           #f:Lcom/lge/sns/profile/ProfileComment;
    :goto_1b
    return v2

    .line 99
    .restart local v1       #f:Lcom/lge/sns/profile/ProfileComment;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 101
    .end local v1           #f:Lcom/lge/sns/profile/ProfileComment;
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1b
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileComment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    return-wide v0
.end method

.method public getProfileId()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/lge/sns/profile/ProfileComment;->profileId:J

    return-wide v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/sns/profile/ProfileComment;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 93
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lge/sns/profile/ProfileComment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileComment;->comment:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .registers 2
    .parameter "commentId"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    .line 27
    return-void
.end method

.method public setProfileId(J)V
    .registers 3
    .parameter "profileId"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/lge/sns/profile/ProfileComment;->profileId:J

    .line 71
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/sns/profile/ProfileComment;->published:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/profile/ProfileComment;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ProfileComment;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "commentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ProfileComment;->commentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "comment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ProfileComment;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "profileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/profile/ProfileComment;->profileId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
