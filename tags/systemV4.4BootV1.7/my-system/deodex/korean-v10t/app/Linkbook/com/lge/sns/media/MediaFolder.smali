.class public Lcom/lge/sns/media/MediaFolder;
.super Ljava/lang/Object;
.source "MediaFolder.java"


# instance fields
.field private folderId:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private id:J

.field private published:Ljava/util/Date;

.field private snsId:Ljava/lang/String;

.field private updated:Ljava/util/Date;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 9
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "folderName"
    .parameter "published"
    .parameter "updated"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    .line 100
    iput-object p3, p0, Lcom/lge/sns/media/MediaFolder;->snsId:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/lge/sns/media/MediaFolder;->userId:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/lge/sns/media/MediaFolder;->published:Ljava/util/Date;

    .line 105
    iput-object p8, p0, Lcom/lge/sns/media/MediaFolder;->updated:Ljava/util/Date;

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 121
    instance-of v2, p1, Lcom/lge/sns/media/MediaFolder;

    if-eqz v2, :cond_28

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/media/MediaFolder;

    move-object v1, v0

    .line 123
    .local v1, f:Lcom/lge/sns/media/MediaFolder;
    iget-wide v2, v1, Lcom/lge/sns/media/MediaFolder;->id:J

    iget-wide v4, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 125
    .end local v1           #f:Lcom/lge/sns/media/MediaFolder;
    :goto_25
    return v2

    .line 123
    .restart local v1       #f:Lcom/lge/sns/media/MediaFolder;
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    .line 125
    .end local v1           #f:Lcom/lge/sns/media/MediaFolder;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25
.end method

.method public getFolderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    return-wide v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 117
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/MediaFolder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/lge/sns/media/MediaFolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setFolderId(Ljava/lang/String;)V
    .registers 2
    .parameter "folderId"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .registers 2
    .parameter "folderName"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    .line 29
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->published:Ljava/util/Date;

    .line 84
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->snsId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->updated:Ljava/util/Date;

    .line 95
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/sns/media/MediaFolder;->userId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/media/MediaFolder;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "snsId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "folderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->folderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "folderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->folderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "updated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFolder;->updated:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
