.class public Lcom/lge/sns/media/MediaFile;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "MediaFile.java"


# instance fields
.field private description:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private id:J

.field private link:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private published:Ljava/util/Date;

.field private thumbnailLink:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 136
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 15
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "title"
    .parameter "description"
    .parameter "mimeType"
    .parameter "link"
    .parameter "thumbnailLink"
    .parameter "published"

    .prologue
    .line 122
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-wide p1, p0, Lcom/lge/sns/media/MediaFile;->id:J

    .line 124
    iput-object p7, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    .line 125
    iput-object p8, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    .line 126
    iput-object p9, p0, Lcom/lge/sns/media/MediaFile;->title:Ljava/lang/String;

    .line 127
    iput-object p10, p0, Lcom/lge/sns/media/MediaFile;->description:Ljava/lang/String;

    .line 128
    iput-object p11, p0, Lcom/lge/sns/media/MediaFile;->mimeType:Ljava/lang/String;

    .line 129
    iput-object p12, p0, Lcom/lge/sns/media/MediaFile;->link:Ljava/lang/String;

    .line 130
    iput-object p13, p0, Lcom/lge/sns/media/MediaFile;->thumbnailLink:Ljava/lang/String;

    .line 131
    iput-object p14, p0, Lcom/lge/sns/media/MediaFile;->published:Ljava/util/Date;

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 147
    instance-of v2, p1, Lcom/lge/sns/media/MediaFile;

    if-eqz v2, :cond_28

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    move-object v1, v0

    .line 149
    .local v1, f:Lcom/lge/sns/media/MediaFile;
    iget-wide v2, v1, Lcom/lge/sns/media/MediaFile;->id:J

    iget-wide v4, p0, Lcom/lge/sns/media/MediaFile;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 151
    .end local v1           #f:Lcom/lge/sns/media/MediaFile;
    :goto_25
    return v2

    .line 149
    .restart local v1       #f:Lcom/lge/sns/media/MediaFile;
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    .line 151
    .end local v1           #f:Lcom/lge/sns/media/MediaFile;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/lge/sns/media/MediaFile;->id:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getThumbnailLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->thumbnailLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/media/MediaFile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 143
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/media/MediaFile;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->description:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .registers 2
    .parameter "fileId"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .registers 2
    .parameter "folderId"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/lge/sns/media/MediaFile;->id:J

    .line 32
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2
    .parameter "link"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->link:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->mimeType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->published:Ljava/util/Date;

    .line 117
    return-void
.end method

.method public setThumbnailLink(Ljava/lang/String;)V
    .registers 2
    .parameter "thumbnailLink"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->thumbnailLink:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/sns/media/MediaFile;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/media/MediaFile;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "folderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->folderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "link="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/media/MediaFile;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
