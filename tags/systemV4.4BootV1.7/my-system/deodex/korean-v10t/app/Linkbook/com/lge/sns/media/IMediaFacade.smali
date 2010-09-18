.class public interface abstract Lcom/lge/sns/media/IMediaFacade;
.super Ljava/lang/Object;
.source "IMediaFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;,
        Lcom/lge/sns/media/IMediaFacade$MediaDecoder;,
        Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;,
        Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;,
        Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;,
        Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;,
        Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.media.provider"

.field public static final MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MEDIA_FILE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri; = null

.field public static final THUMBNAIL_HEIGHT:I = 0x52

.field public static final THUMBNAIL_WIDTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "content://com.lge.sns.media.provider/mediafolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/IMediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.lge.sns.media.provider/mediafile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/IMediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.lge.sns.media.provider/mediacomment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/IMediaFacade;->MEDIA_COMMENT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addMediaComment(Lcom/lge/sns/media/MediaComment;)Landroid/net/Uri;
.end method

.method public abstract addMediaFile(Lcom/lge/sns/media/MediaFile;)Landroid/net/Uri;
.end method

.method public abstract addMediaFolder(Lcom/lge/sns/media/MediaFolder;)Landroid/net/Uri;
.end method

.method public abstract deleteAllMediaComment(Ljava/lang/String;)I
.end method

.method public abstract deleteAllMediaFile(Ljava/lang/String;)I
.end method

.method public abstract deleteAllMediaFileByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteAllMediaFileByUser(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteAllMediaFolder(Ljava/lang/String;)I
.end method

.method public abstract deleteAllMediaFolderByUser(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteMediaComment(J)I
.end method

.method public abstract deleteMediaComment(Landroid/net/Uri;)I
.end method

.method public abstract deleteMediaFile(J)I
.end method

.method public abstract deleteMediaFile(Landroid/net/Uri;)I
.end method

.method public abstract deleteMediaFolder(J)I
.end method

.method public abstract deleteMediaFolder(Landroid/net/Uri;)I
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaComment(J)Lcom/lge/sns/media/MediaComment;
.end method

.method public abstract getMediaComment(Landroid/net/Uri;)Lcom/lge/sns/media/MediaComment;
.end method

.method public abstract getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getMediaFile(J)Lcom/lge/sns/media/MediaFile;
.end method

.method public abstract getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;
.end method

.method public abstract getMediaFile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getMediaFileCountByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getMediaFileCountByUser(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getMediaFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFolder(J)Lcom/lge/sns/media/MediaFolder;
.end method

.method public abstract getMediaFolder(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFolder;
.end method

.method public abstract getMediaFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;
.end method

.method public abstract getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFolderList(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getOrignalMedia(Lcom/lge/sns/media/MediaFile;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getOrignalMedia(Lcom/lge/sns/media/MediaFile;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract getThumbnail(Lcom/lge/sns/media/MediaFile;)[B
.end method

.method public abstract getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;
.end method

.method public abstract registerMediaCommentUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;)V
.end method

.method public abstract registerMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V
.end method

.method public abstract registerMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V
.end method

.method public abstract removeMediaCommentUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaCommentUpdateListener;)V
.end method

.method public abstract removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V
.end method

.method public abstract removeMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V
.end method

.method public abstract sendMediaComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract setMediaFolderUpdatedDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract updateMediaFile(Lcom/lge/sns/media/MediaFile;)I
.end method

.method public abstract updateMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract updateMediaFolder(Lcom/lge/sns/media/MediaFolder;)I
.end method

.method public abstract updateMediaFolderList(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FFLcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method
