.class public Lcom/lge/sns/media/MediaComment;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "MediaComment.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentId:Ljava/lang/String;

.field private id:J

.field private published:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 10
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "commentId"
    .parameter "comment"
    .parameter "published"

    .prologue
    .line 65
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-wide p1, p0, Lcom/lge/sns/media/MediaComment;->id:J

    .line 67
    iput-object p7, p0, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lcom/lge/sns/media/MediaComment;->published:Ljava/util/Date;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 85
    instance-of v2, p1, Lcom/lge/sns/media/MediaComment;

    if-eqz v2, :cond_28

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/media/MediaComment;

    move-object v1, v0

    .line 87
    .local v1, f:Lcom/lge/sns/media/MediaComment;
    iget-wide v2, v1, Lcom/lge/sns/media/MediaComment;->id:J

    iget-wide v4, p0, Lcom/lge/sns/media/MediaComment;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 89
    .end local v1           #f:Lcom/lge/sns/media/MediaComment;
    :goto_25
    return v2

    .line 87
    .restart local v1       #f:Lcom/lge/sns/media/MediaComment;
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    .line 89
    .end local v1           #f:Lcom/lge/sns/media/MediaComment;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/lge/sns/media/MediaComment;->id:J

    return-wide v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/sns/media/MediaComment;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 81
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/media/MediaComment;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/lge/sns/media/MediaComment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .registers 2
    .parameter "commentId"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/lge/sns/media/MediaComment;->id:J

    .line 28
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/sns/media/MediaComment;->published:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/media/MediaComment;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "commentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaComment;->commentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "comment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaComment;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaComment;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
