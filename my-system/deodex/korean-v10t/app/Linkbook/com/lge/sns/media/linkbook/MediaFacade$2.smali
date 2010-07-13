.class Lcom/lge/sns/media/linkbook/MediaFacade$2;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Lcom/lge/feed/Feed$FeedEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;->updateMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/linkbook/MediaFacade;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/linkbook/MediaFacade;)V
    .registers 2
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$2;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntry(Lcom/lge/feed/atom/Entry;)V
    .registers 12
    .parameter "entry"

    .prologue
    .line 1193
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, dataLink:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/newbay/client/Uris;->getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;

    move-result-object v2

    .line 1195
    .local v2, param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$2;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$200(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 1197
    .local v3, recordId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_31

    .line 1198
    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$2;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    invoke-static {v5, p1, v2}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$300(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/feed/atom/Entry;Lcom/lge/newbay/client/Uris$MediaFileParam;)Lcom/lge/sns/media/MediaFile;

    move-result-object v1

    .line 1199
    .local v1, mediaFile:Lcom/lge/sns/media/MediaFile;
    if-eqz v1, :cond_31

    .line 1200
    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$2;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    invoke-virtual {v5, v1}, Lcom/lge/sns/media/linkbook/MediaFacade;->addMediaFile(Lcom/lge/sns/media/MediaFile;)Landroid/net/Uri;

    .line 1226
    .end local v1           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :cond_31
    return-void
.end method
