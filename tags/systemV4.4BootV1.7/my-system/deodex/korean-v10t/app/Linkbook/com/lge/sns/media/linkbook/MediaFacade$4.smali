.class Lcom/lge/sns/media/linkbook/MediaFacade$4;
.super Ljava/lang/Thread;
.source "MediaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;->uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

.field final synthetic val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$e:Lcom/lge/feed/atom/Entry;

.field final synthetic val$fileUid:Ljava/lang/String;

.field final synthetic val$folderId:Ljava/lang/String;

.field final synthetic val$ftags:[Ljava/lang/String;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$link:Lcom/lge/feed/atom/Link;

.field final synthetic val$locationLat:F

.field final synthetic val$locationLon:F

.field final synthetic val$media:Lcom/lge/newbay/client/IMedia;

.field final synthetic val$ptags:[Ljava/lang/String;

.field final synthetic val$sharedOption:Ljava/lang/String;

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$tags:[Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iput-object p2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$media:Lcom/lge/newbay/client/IMedia;

    iput-object p3, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$e:Lcom/lge/feed/atom/Entry;

    iput-object p4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$link:Lcom/lge/feed/atom/Link;

    iput-object p5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$fileUid:Ljava/lang/String;

    iput-object p6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$in:Ljava/io/InputStream;

    iput-wide p7, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$contentLength:J

    iput-object p9, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$contentType:Ljava/lang/String;

    iput-object p10, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    iput-object p11, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$snsId:Ljava/lang/String;

    iput-object p12, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$userId:Ljava/lang/String;

    iput-object p13, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$folderId:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$title:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$description:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$sharedOption:Ljava/lang/String;

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$tags:[Ljava/lang/String;

    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$ftags:[Ljava/lang/String;

    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$ptags:[Ljava/lang/String;

    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$locationLat:F

    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$locationLon:F

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1770
    :try_start_0
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$media:Lcom/lge/newbay/client/IMedia;

    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$e:Lcom/lge/feed/atom/Entry;

    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$link:Lcom/lge/feed/atom/Link;

    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$fileUid:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$in:Ljava/io/InputStream;

    iget-wide v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$contentLength:J

    iget-object v8, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$contentType:Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    invoke-static/range {v0 .. v9}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$400(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/newbay/client/IMedia;Lcom/lge/feed/atom/Entry;Lcom/lge/feed/atom/Link;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_43

    .line 1772
    :try_start_15
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1774
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$media:Lcom/lge/newbay/client/IMedia;

    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$folderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$fileUid:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$description:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$sharedOption:Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$tags:[Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$ftags:[Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$ptags:[Ljava/lang/String;

    iget v11, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$locationLat:F

    iget v12, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$locationLon:F

    invoke-interface/range {v0 .. v12}, Lcom/lge/newbay/client/IMedia;->uploadNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)Lcom/lge/newbay/client/IMedia$Batch;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_37} :catch_4a

    .line 1781
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    if-eqz v0, :cond_42

    .line 1782
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$fileUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaUploadFinished(Ljava/lang/String;)V

    .line 1784
    :cond_42
    return-void

    .line 1772
    :catchall_43
    move-exception v0

    :try_start_44
    iget-object v1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_4a

    .line 1776
    :catch_4a
    move-exception v0

    move-object v13, v0

    .line 1777
    .local v13, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    if-eqz v0, :cond_37

    .line 1778
    iget-object v0, p0, Lcom/lge/sns/media/linkbook/MediaFacade$4;->val$cb:Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;

    invoke-interface {v0, v13}, Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;->onMediaUploadFail(Ljava/lang/Exception;)V

    goto :goto_37
.end method
