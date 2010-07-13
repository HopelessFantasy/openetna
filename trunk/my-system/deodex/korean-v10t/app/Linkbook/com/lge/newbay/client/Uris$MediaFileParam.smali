.class public Lcom/lge/newbay/client/Uris$MediaFileParam;
.super Lcom/lge/newbay/client/Uris$SnsBasicParam;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileParam"
.end annotation


# instance fields
.field fileId:Ljava/lang/String;

.field folderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$MediaFileParam;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$MediaFileParam;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .registers 2
    .parameter "fileId"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$MediaFileParam;->fileId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .registers 2
    .parameter "folderId"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$MediaFileParam;->folderId:Ljava/lang/String;

    .line 142
    return-void
.end method
