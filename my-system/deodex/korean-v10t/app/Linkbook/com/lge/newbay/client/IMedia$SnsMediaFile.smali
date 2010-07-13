.class public Lcom/lge/newbay/client/IMedia$SnsMediaFile;
.super Lcom/lge/newbay/client/SnsAuthorizedInfo;
.source "IMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsMediaFile"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field link:Ljava/lang/String;

.field mediaFile:Lcom/lge/newbay/client/IMedia$MediaFile;

.field mimetype:Ljava/lang/String;

.field numberOfViews:I

.field parentFolderId:Ljava/lang/String;

.field parentFolderName:Ljava/lang/String;

.field title:Ljava/lang/String;

.field visibility:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>()V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$MediaFile;ILjava/lang/String;)V
    .registers 14
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"
    .parameter "parentFolderId"
    .parameter "parentFolderName"
    .parameter "title"
    .parameter "description"
    .parameter "mimetype"
    .parameter "link"
    .parameter "mediaFile"
    .parameter "numberOfViews"
    .parameter "visibility"

    .prologue
    .line 281
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V

    .line 282
    iput-object p5, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderId:Ljava/lang/String;

    .line 283
    iput-object p6, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderName:Ljava/lang/String;

    .line 284
    iput-object p7, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->title:Ljava/lang/String;

    .line 285
    iput-object p8, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->description:Ljava/lang/String;

    .line 286
    iput-object p9, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mimetype:Ljava/lang/String;

    .line 287
    iput-object p10, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->link:Ljava/lang/String;

    .line 288
    iput-object p11, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mediaFile:Lcom/lge/newbay/client/IMedia$MediaFile;

    .line 289
    iput p12, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->numberOfViews:I

    .line 290
    iput-object p13, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->visibility:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFile()Lcom/lge/newbay/client/IMedia$MediaFile;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mediaFile:Lcom/lge/newbay/client/IMedia$MediaFile;

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfViews()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->numberOfViews:I

    return v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->visibility:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->description:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2
    .parameter "link"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->link:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setMediaFile(Lcom/lge/newbay/client/IMedia$MediaFile;)V
    .registers 2
    .parameter "mediaFile"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mediaFile:Lcom/lge/newbay/client/IMedia$MediaFile;

    .line 231
    return-void
.end method

.method public setMimetype(Ljava/lang/String;)V
    .registers 2
    .parameter "mimetype"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->mimetype:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setNumberOfViews(I)V
    .registers 2
    .parameter "numberOfViews"

    .prologue
    .line 244
    iput p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->numberOfViews:I

    .line 245
    return-void
.end method

.method public setParentFolderId(Ljava/lang/String;)V
    .registers 2
    .parameter "parentFolderId"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setParentFolderName(Ljava/lang/String;)V
    .registers 2
    .parameter "parentFolderName"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->parentFolderName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->title:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->visibility:Ljava/lang/String;

    .line 259
    return-void
.end method
