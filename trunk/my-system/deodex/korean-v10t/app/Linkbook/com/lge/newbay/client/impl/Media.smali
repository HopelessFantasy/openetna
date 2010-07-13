.class public Lcom/lge/newbay/client/impl/Media;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Media.java"

# interfaces
.implements Lcom/lge/newbay/client/IMedia;


# static fields
.field static final ATTR_PARENT_FOLDER_ID:Ljava/lang/String; = "parentFolderId"

.field static final ATTR_PARENT_FOLDER_NAME:Ljava/lang/String; = "parentFolderName"

.field static final CONTENT_IMAGE:Ljava/lang/String; = "image/*"

.field static final FILE_HEADERS:[Ljava/lang/String; = null

.field static final HEADER_IF_MATCH:Ljava/lang/String; = "If-Match"

.field static final KEY_BATCH_ID:Ljava/lang/String; = "{batch.id}"

.field static final KEY_COMMENT_ID:Ljava/lang/String; = "{comment.id}"

.field static final KEY_FILE_ID:Ljava/lang/String; = "{file.id}"

.field static final KEY_FOLDER_ID:Ljava/lang/String; = "{folder.id}"

.field static final KEY_PART_ID:Ljava/lang/String; = "{part.id}"

.field static final PARAM_COMMENT:Ljava/lang/String; = "comment"

.field private static final PARAM_FILE_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_FILE_FTAGS:Ljava/lang/String; = "ftags"

.field private static final PARAM_FILE_LOCATION_LAT:Ljava/lang/String; = "locationLat"

.field private static final PARAM_FILE_LOCATION_LON:Ljava/lang/String; = "locationLon"

.field private static final PARAM_FILE_PTAGS:Ljava/lang/String; = "ptags"

.field private static final PARAM_FILE_SHARED_OPTION:Ljava/lang/String; = "sharingOptions"

.field private static final PARAM_FILE_TAGS:Ljava/lang/String; = "tags"

.field private static final PARAM_FILE_TITLE:Ljava/lang/String; = "title"

.field private static final PARAM_FILE_UID:Ljava/lang/String; = "fileUid"

.field static final PARAM_FTAG:Ljava/lang/String; = "ftag"

.field static final PARAM_PTAG:Ljava/lang/String; = "ptag"

.field static final PARAM_TAG:Ljava/lang/String; = "tag"

.field static final PARAM_VALUE:Ljava/lang/String; = "value"

.field static final TAG_BATCH:Ljava/lang/String; = "batch"

.field static final TAG_ERROR:Ljava/lang/String; = "error"

.field static final TAG_MEDIAFILE_DESCRIPTION:Ljava/lang/String; = "description"

.field static final TAG_MEDIAFILE_FILE:Ljava/lang/String; = "mediaFile"

.field static final TAG_MEDIAFILE_FILE_CREATED:Ljava/lang/String; = "created"

.field static final TAG_MEDIAFILE_FILE_SIZE:Ljava/lang/String; = "size"

.field static final TAG_MEDIAFILE_LINK:Ljava/lang/String; = "link"

.field static final TAG_MEDIAFILE_MIMETYPE:Ljava/lang/String; = "mimetype"

.field static final TAG_MEDIAFILE_NUMBER_OF_VIEW:Ljava/lang/String; = "numberOfViews"

.field static final TAG_MEDIAFILE_TITLE:Ljava/lang/String; = "title"

.field static final TAG_MEDIAFILE_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final TAG_MEDIA_COMMENT:Ljava/lang/String; = "snsMediaComment"

.field static final TAG_MEDIA_COMMENT_COMMENT:Ljava/lang/String; = "comment"

.field static final TAG_SNS_MEDIA_FILE:Ljava/lang/String; = "snsMediaFile"

.field static final TAG_STATUS:Ljava/lang/String; = "status"

.field static final URI_ADD_FILE_COMMENT:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comments"

.field static final URI_GET_ALL_ROOT_FOLDERS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/user/{sns.user.uid}/media?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_BATCH_STATUS:Ljava/lang/String; = "/sng/user/{session.token}/batch/{batch.id}"

.field static final URI_GET_FILE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

.field static final URI_GET_FILE_COMMENT:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comment/{comment.id}"

.field static final URI_GET_FILE_COMMENTS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comments?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_FOLDER:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

.field static final URI_GET_FOLDER_CONTENTS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_ROOT_FOLDER:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_UPLOAD_STATE:Ljava/lang/String; = "/sng/user/{session.token}/media/file/{file.id}/atom"

.field static final URI_POST_CREATE_RESOURCE:Ljava/lang/String; = "/sng/user/{session.token}/media"

.field static final URI_POST_UPLOAD_DEFAULT_FOLDER:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder"

.field static final URI_POST_UPLOAD_FILE:Ljava/lang/String; = "/sng/user/{session.token}/media/file/{file.id}"

.field static final URI_POST_UPLOAD_FILE_PART:Ljava/lang/String; = "/sng/user/{session.token}/media/file/{file.id}/part/{part.id}"

.field static final URI_POST_UPLOAD_NAMED_FOLDER:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

.field static feedProcessor:Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 102
    new-instance v0, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;

    invoke-direct {v0}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;-><init>()V

    sput-object v0, Lcom/lge/newbay/client/impl/Media;->feedProcessor:Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;

    .line 813
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Content-Length"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Etag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/newbay/client/impl/Media;->FILE_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 56
    return-void
.end method

.method private createBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, batch:Lcom/lge/newbay/client/IMedia$Batch;
    const/4 v1, 0x0

    .line 761
    .local v1, eventType:I
    if-eqz p1, :cond_23

    .line 762
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    .line 763
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 764
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "batch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 766
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;

    move-result-object v0

    goto :goto_4

    .line 768
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 773
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method private createSnsMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, mediaFile:Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    const/4 v0, 0x0

    .line 216
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 217
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 218
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsMediaFile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 221
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseSnsMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;

    move-result-object v1

    goto :goto_4

    .line 223
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 228
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private static getAtomFeedEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;
    .registers 4
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 115
    .local v0, eventType:I
    :cond_4
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1d

    .line 116
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 117
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, name:Ljava/lang/String;
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    sget-object v2, Lcom/lge/newbay/client/impl/Media;->feedProcessor:Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;

    invoke-virtual {v2, p0}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;

    move-result-object v2

    .line 123
    .end local v1           #name:Ljava/lang/String;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private getFileHead(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/IMedia$FileHead;
    .registers 9
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    sget-object v6, Lcom/lge/newbay/client/impl/Media;->FILE_HEADERS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/lge/newbay/client/impl/Media;->getFirstHeaders(Lorg/apache/http/client/methods/HttpUriRequest;[Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    .line 816
    .local v5, headers:[Lorg/apache/http/Header;
    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 817
    .local v2, contentLengthHeader:Lorg/apache/http/Header;
    const/4 v6, 0x1

    aget-object v4, v5, v6

    .line 818
    .local v4, eTageHeader:Lorg/apache/http/Header;
    const/4 v3, 0x0

    .line 819
    .local v3, eTag:I
    const-wide/16 v0, 0x0

    .line 820
    .local v0, contentLength:J
    if-eqz v4, :cond_19

    .line 822
    :try_start_11
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_18} :catch_2b

    move-result v3

    .line 827
    :cond_19
    :goto_19
    if-eqz v2, :cond_23

    .line 829
    :try_start_1b
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_29

    move-result-wide v0

    .line 834
    :cond_23
    :goto_23
    new-instance v6, Lcom/lge/newbay/client/IMedia$FileHead;

    invoke-direct {v6, v0, v1, v3}, Lcom/lge/newbay/client/IMedia$FileHead;-><init>(JI)V

    return-object v6

    .line 830
    :catch_29
    move-exception v6

    goto :goto_23

    .line 823
    :catch_2b
    move-exception v6

    goto :goto_19
.end method

.method private getFullMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
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
            "Lcom/lge/newbay/client/IMedia$MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    const/4 v5, 0x1

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Media;->getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v7

    .line 329
    .local v7, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_11
    if-eqz v7, :cond_33

    .line 330
    invoke-virtual {v7}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getMediaCommentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 331
    .local v9, mediaComments:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    if-eqz v9, :cond_20

    .line 332
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    :cond_20
    const-string v0, "next"

    invoke-virtual {p0, v7, v0}, Lcom/lge/newbay/client/impl/Media;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v10

    .line 335
    .local v10, next:Lcom/lge/feed/atom/Link;
    if-eqz v10, :cond_31

    .line 336
    invoke-virtual {v10}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getComments(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v7

    goto :goto_11

    .line 338
    :cond_31
    const/4 v7, 0x0

    goto :goto_11

    .line 341
    .end local v9           #mediaComments:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :cond_33
    return-object v8
.end method

.method private getMediaComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaComment;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, comment:Lcom/lge/newbay/client/IMedia$MediaComment;
    const/4 v1, 0x0

    .line 391
    .local v1, eventType:I
    if-eqz p1, :cond_23

    .line 392
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    .line 393
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 394
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsMediaComment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 396
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseMediaComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaComment;

    move-result-object v0

    goto :goto_4

    .line 398
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 403
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method private getMediaCommentList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMedia$MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 360
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v2, 0x0

    .line 361
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 364
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_29

    .line 365
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/feed/atom/Entry;

    invoke-virtual {v3}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->getComment(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 368
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_29
    return-object v2
.end method

.method private getPartialMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMedia$MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Media;->getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 349
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_18

    .line 350
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Media;->getMediaCommentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, mediaComments:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    if-eqz v2, :cond_18

    .line 352
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    .end local v2           #mediaComments:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMedia$MediaComment;>;"
    :cond_18
    return-object v1
.end method

.method private parseBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v1, Lcom/lge/newbay/client/IMedia$Batch;

    invoke-direct {v1}, Lcom/lge/newbay/client/IMedia$Batch;-><init>()V

    .line 778
    .local v1, batch:Lcom/lge/newbay/client/IMedia$Batch;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 779
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_22

    .line 780
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 782
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$Batch;->setId(Ljava/lang/String;)V

    .line 779
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 785
    .end local v0           #attrName:Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    .line 786
    .local v2, eventType:I
    :cond_23
    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_56

    .line 787
    const/4 v6, 0x2

    if-ne v2, v6, :cond_23

    .line 788
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 790
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$Batch;->setStatus(I)V

    goto :goto_23

    .line 791
    :cond_42
    const-string v6, "error"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 792
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$Batch;->setError(Ljava/lang/String;)V

    goto :goto_23

    .line 794
    :cond_52
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 798
    .end local v5           #tagName:Ljava/lang/String;
    :cond_56
    return-object v1
.end method

.method private parseMediaComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaComment;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v1, Lcom/lge/newbay/client/IMedia$MediaComment;

    invoke-direct {v1}, Lcom/lge/newbay/client/IMedia$MediaComment;-><init>()V

    .line 408
    .local v1, comment:Lcom/lge/newbay/client/IMedia$MediaComment;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 409
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_32

    .line 410
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 412
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$MediaComment;->setId(Ljava/lang/String;)V

    .line 409
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 413
    :cond_22
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 414
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$MediaComment;->setSnId(Ljava/lang/String;)V

    goto :goto_1f

    .line 417
    .end local v0           #attrName:Ljava/lang/String;
    :cond_32
    const/4 v2, 0x0

    .line 418
    .local v2, eventType:I
    :cond_33
    :goto_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_75

    .line 419
    const/4 v6, 0x2

    if-ne v2, v6, :cond_33

    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 422
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$MediaComment;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_33

    .line 423
    :cond_51
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 424
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$MediaComment;->setPublished(Ljava/util/Date;)V

    goto :goto_33

    .line 425
    :cond_61
    const-string v6, "comment"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 426
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IMedia$MediaComment;->setComment(Ljava/lang/String;)V

    goto :goto_33

    .line 428
    :cond_71
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_33

    .line 432
    .end local v5           #tagName:Ljava/lang/String;
    :cond_75
    return-object v1
.end method

.method private parseMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaFile;
    .registers 7
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v1, Lcom/lge/newbay/client/IMedia$MediaFile;

    invoke-direct {v1}, Lcom/lge/newbay/client/IMedia$MediaFile;-><init>()V

    .line 280
    .local v1, file:Lcom/lge/newbay/client/IMedia$MediaFile;
    const/4 v0, 0x0

    .line 281
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3a

    .line 282
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "created"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 285
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/newbay/client/IMedia$MediaFile;->setCreated(Ljava/util/Date;)V

    goto :goto_6

    .line 286
    :cond_24
    const-string v3, "size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 287
    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/lge/newbay/client/impl/XppUtil;->getNextLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/lge/newbay/client/IMedia$MediaFile;->setSize(J)V

    goto :goto_6

    .line 289
    :cond_36
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 293
    .end local v2           #tagName:Ljava/lang/String;
    :cond_3a
    return-object v1
.end method

.method private parseSnsMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    .registers 10
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "mimetype"

    .line 232
    new-instance v4, Lcom/lge/newbay/client/IMedia$SnsMediaFile;

    invoke-direct {v4}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;-><init>()V

    .line 233
    .local v4, mediaFile:Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 234
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v3, :cond_54

    .line 235
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 237
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setId(Ljava/lang/String;)V

    .line 234
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 238
    :cond_24
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 239
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setSnId(Ljava/lang/String;)V

    goto :goto_21

    .line 240
    :cond_34
    const-string v6, "parentFolderId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 241
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setParentFolderId(Ljava/lang/String;)V

    goto :goto_21

    .line 242
    :cond_44
    const-string v6, "parentFolderName"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 243
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setParentFolderName(Ljava/lang/String;)V

    goto :goto_21

    .line 246
    .end local v0           #attrName:Ljava/lang/String;
    :cond_54
    const/4 v1, 0x0

    .line 247
    .local v1, eventType:I
    :cond_55
    :goto_55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_10c

    .line 248
    const/4 v6, 0x2

    if-ne v1, v6, :cond_55

    .line 249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 251
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_55

    .line 252
    :cond_73
    const-string v6, "title"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 253
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setTitle(Ljava/lang/String;)V

    goto :goto_55

    .line 254
    :cond_83
    const-string v6, "description"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 255
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setDescription(Ljava/lang/String;)V

    goto :goto_55

    .line 256
    :cond_93
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 257
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setPublished(Ljava/util/Date;)V

    goto :goto_55

    .line 258
    :cond_a3
    const-string v6, "mimetype"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 259
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setMimetype(Ljava/lang/String;)V

    goto :goto_55

    .line 260
    :cond_b3
    const-string v6, "mimetype"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 261
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setMimetype(Ljava/lang/String;)V

    goto :goto_55

    .line 262
    :cond_c3
    const-string v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 263
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setLink(Ljava/lang/String;)V

    goto :goto_55

    .line 264
    :cond_d3
    const-string v6, "mediaFile"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 265
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Media;->parseMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaFile;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setMediaFile(Lcom/lge/newbay/client/IMedia$MediaFile;)V

    goto/16 :goto_55

    .line 266
    :cond_e4
    const-string v6, "numberOfViews"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 267
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setNumberOfViews(I)V

    goto/16 :goto_55

    .line 268
    :cond_f6
    const-string v6, "visibility"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 269
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMedia$SnsMediaFile;->setVisibility(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 271
    :cond_107
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_55

    .line 275
    .end local v5           #tagName:Ljava/lang/String;
    :cond_10c
    return-object v4
.end method


# virtual methods
.method public addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "UTF-8"

    .line 438
    const-string v5, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comments"

    const-string v6, "{sns.uid}"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{sns.user.uid}"

    invoke-virtual {v5, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, uri:Ljava/lang/String;
    const-string v5, "{folder.id}"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 440
    const-string v5, "{file.id}"

    invoke-virtual {v4, v5, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 441
    const-string v5, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {p0, v4, v5}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 442
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "comment"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 445
    .local v1, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 447
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, commentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v5, 0x0

    :goto_4b
    return-object v5

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_4b
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 19
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "tags"
    .parameter "ftags"
    .parameter "ptags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    const-string v9, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v10, "{sns.uid}"

    invoke-virtual {v9, v10, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "{sns.user.uid}"

    invoke-virtual {v9, v10, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 915
    .local v8, uri:Ljava/lang/String;
    const-string v9, "{folder.id}"

    invoke-virtual {v8, v9, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{file.id}"

    invoke-virtual {v8, v10, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/tags"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 917
    const-string v9, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {p0, v8, v9}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 918
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v5, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3c
    if-ge v3, v4, :cond_4d

    aget-object v7, v0, v3

    .line 920
    .local v7, tag:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "tag"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 922
    .end local v7           #tag:Ljava/lang/String;
    :cond_4d
    move-object/from16 v0, p6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v4, :cond_62

    aget-object v1, v0, v3

    .line 923
    .local v1, ftag:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "ftag"

    invoke-direct {v9, v10, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 925
    .end local v1           #ftag:Ljava/lang/String;
    :cond_62
    move-object/from16 v0, p7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_66
    if-ge v3, v4, :cond_77

    aget-object v6, v0, v3

    .line 926
    .local v6, ptag:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "ptag"

    invoke-direct {v9, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 928
    .end local v6           #ptag:Ljava/lang/String;
    :cond_77
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 929
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 930
    return-void
.end method

.method public createResource(JLjava/lang/String;)Lcom/lge/feed/atom/Entry;
    .registers 8
    .parameter "contentLength"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 564
    const-string v1, "/sng/user/{session.token}/media"

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 565
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes 0-0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomEntry(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/Entry;

    move-result-object v1

    return-object v1
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 840
    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-super {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 842
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 843
    return-void
.end method

.method public deleteFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 848
    invoke-super {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 849
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 850
    return-void
.end method

.method public finalizePartsUpload(Ljava/lang/String;I)V
    .registers 6
    .parameter "fileId"
    .parameter "numberOfParts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    const-string v1, "/sng/user/{session.token}/media/file/{file.id}/atom"

    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, uri:Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/lge/newbay/client/impl/Media;->finalizePartsUploadByUri(Ljava/lang/String;I)V

    .line 632
    return-void
.end method

.method public finalizePartsUploadByUri(Ljava/lang/String;I)V
    .registers 6
    .parameter "uri"
    .parameter "numberOfParts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 636
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "If-Match"

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 639
    return-void
.end method

.method public getAllRootFolders([Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 11
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Media;->getAllRootFolders([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllRootFolders([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 11
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v2, "/sng/user/{session.token}/snss/{sns.uid.array}/user/{sns.user.uid}/media?pageNum={page.num}&pageSize={page.size}"

    const-string v3, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v2, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 495
    const-string v2, "application/atom+xml"

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 496
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v2

    return-object v2
.end method

.method public getComment(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 383
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 385
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Media;->getMediaComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$MediaComment;

    move-result-object v2

    return-object v2
.end method

.method public getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "commentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 374
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comment/{comment.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{folder.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "{file.id}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "{comment.id}"

    invoke-virtual {v0, v1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getComment(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$MediaComment;

    move-result-object v1

    return-object v1
.end method

.method public getComments(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 299
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comments?pageNum={page.num}&pageSize={page.size}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v2, "{page.num}"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 308
    const-string v2, "{page.size}"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 310
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/atom+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v2

    return-object v2
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;
    .registers 11
    .parameter "uri"
    .parameter "mimeType"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, decoded:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 178
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "Accept"

    if-nez p2, :cond_2b

    const-string v6, "image/*"

    :goto_b
    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/lge/newbay/client/impl/Media;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    monitor-enter v5

    .line 180
    :try_start_11
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Media;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 181
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_37

    move-result-object v1

    .line 182
    .local v1, entry:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_29

    .line 184
    :try_start_1b
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    move-result-object v3

    .line 186
    .local v3, is:Ljava/io/InputStream;
    :try_start_1f
    invoke-interface {p3, v3}, Lcom/lge/newbay/client/IMedia$FileDecoder;->decodeFromStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    move-result-object v0

    .line 188
    :try_start_23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_32

    .line 191
    :try_start_26
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 194
    .end local v0           #decoded:Ljava/lang/Object;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_29
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_37

    .line 195
    return-object v0

    .end local v1           #entry:Lorg/apache/http/HttpEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .restart local v0       #decoded:Ljava/lang/Object;
    :cond_2b
    move-object v6, p2

    .line 178
    goto :goto_b

    .line 188
    .restart local v1       #entry:Lorg/apache/http/HttpEntity;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :catchall_2d
    move-exception v6

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 191
    .end local v0           #decoded:Ljava/lang/Object;
    .end local v3           #is:Ljava/io/InputStream;
    :catchall_32
    move-exception v6

    :try_start_33
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v6

    .line 194
    .end local v1           #entry:Lorg/apache/http/HttpEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catchall_37
    move-exception v6

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_37

    throw v6
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "mimeType"
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{folder.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "{file.id}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0, p5, p6}, Lcom/lge/newbay/client/impl/Media;->getFile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IMedia$FileDecoder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 13
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, bytes:[B
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 137
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v8, "Accept"

    if-nez p2, :cond_46

    const-string v9, "image/*"

    :goto_b
    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v8, p0, Lcom/lge/newbay/client/impl/Media;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    monitor-enter v8

    .line 139
    :try_start_11
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 140
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_43

    move-result-object v2

    .line 141
    .local v2, entry:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_55

    .line 143
    const/16 v9, 0x2000

    :try_start_1d
    new-array v0, v9, [B

    .line 145
    .local v0, buffer:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_3e

    .line 147
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    :try_start_24
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_39

    move-result-object v4

    .line 149
    .local v4, is:Ljava/io/InputStream;
    :goto_28
    :try_start_28
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, l:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_48

    .line 150
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_34

    goto :goto_28

    .line 153
    .end local v5           #l:I
    :catchall_34
    move-exception v9

    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 156
    .end local v4           #is:Ljava/io/InputStream;
    :catchall_39
    move-exception v9

    :try_start_3a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v9
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 160
    .end local v0           #buffer:[B
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    :catchall_3e
    move-exception v9

    :try_start_3f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v9

    .line 163
    .end local v2           #entry:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catchall_43
    move-exception v9

    monitor-exit v8
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_43

    throw v9

    :cond_46
    move-object v9, p2

    .line 137
    goto :goto_b

    .line 153
    .restart local v0       #buffer:[B
    .restart local v2       #entry:Lorg/apache/http/HttpEntity;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #l:I
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_39

    .line 156
    :try_start_4b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_3e

    move-result-object v1

    .line 160
    :try_start_52
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 163
    .end local v0           #buffer:[B
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #l:I
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    :cond_55
    monitor-exit v8
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_43

    .line 164
    return-object v1
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{folder.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "{file.id}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0, p5}, Lcom/lge/newbay/client/impl/Media;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getFileHead(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$FileHead;
    .registers 6
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const-string v2, "/sng/user/{session.token}/media/file/{file.id}"

    const-string v3, "{file.id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpHead(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpHead;

    move-result-object v0

    .line 804
    .local v0, httpHead:Lorg/apache/http/client/methods/HttpHead;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getFileHead(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/IMedia$FileHead;

    move-result-object v2

    return-object v2
.end method

.method public getFileMetadata(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 208
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 210
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createSnsMediaFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;

    move-result-object v2

    return-object v2
.end method

.method public getFileMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{folder.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "{file.id}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getFileMetadata(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$SnsMediaFile;

    move-result-object v1

    return-object v1
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 17
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 511
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 17
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 516
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{folder.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 518
    const-string v1, "{page.num}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v1, "{page.size}"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {p0, v0, p6, p7, p8}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 4
    .parameter "uri"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 5
    .parameter "uri"
    .parameter "ifModifiedSince"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/newbay/client/impl/Media;->getFolderContents(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 6
    .parameter "uri"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 530
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 531
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getFolderContents(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 7
    .parameter "uri"
    .parameter "from"
    .parameter "to"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 541
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 542
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0, p4}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getFolderContentsAsXmlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 559
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFolderContentsAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}?pageNum={page.num}&pageSize={page.size}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 550
    const-string v2, "{page.num}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 551
    const-string v2, "{page.size}"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 553
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getHttpResponseAsAtomEntry(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/Entry;
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 107
    .local v0, xpp:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v0, :cond_b

    .line 108
    invoke-static {v0}, Lcom/lge/newbay/client/impl/Media;->getAtomFeedEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;

    move-result-object v1

    .line 110
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMedia$MediaComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 316
    if-nez p5, :cond_7

    .line 317
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Media;->getFullMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 320
    :goto_6
    return-object v0

    :cond_7
    invoke-direct/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Media;->getPartialMediaCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getPartHead(Ljava/lang/String;I)Lcom/lge/newbay/client/IMedia$FileHead;
    .registers 8
    .parameter "fileId"
    .parameter "partId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    const-string v2, "/sng/user/{session.token}/media/file/{file.id}/part/{part.id}"

    const-string v3, "{file.id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{part.id}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpHead(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpHead;

    move-result-object v0

    .line 810
    .local v0, httpHead:Lorg/apache/http/client/methods/HttpHead;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getFileHead(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/IMedia$FileHead;

    move-result-object v2

    return-object v2
.end method

.method public getRootFolder(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Media;->getRootFolder(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getRootFolder(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 468
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0, p5, p6}, Lcom/lge/newbay/client/impl/Media;->getRootFolder(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getRootFolder(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 4
    .parameter "url"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Media;->getRootFolder(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getRootFolder(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 6
    .parameter "url"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 481
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 482
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getUploadState(Ljava/lang/String;)Lcom/lge/feed/atom/Entry;
    .registers 5
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 621
    const-string v1, "/sng/user/{session.token}/media/file/{file.id}/atom"

    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, uri:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getUploadStateByUri(Ljava/lang/String;)Lcom/lge/feed/atom/Entry;

    move-result-object v1

    return-object v1
.end method

.method public getUploadStateByUri(Ljava/lang/String;)Lcom/lge/feed/atom/Entry;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 625
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 626
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsAtomEntry(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/Entry;

    move-result-object v1

    return-object v1
.end method

.method public getUploadStatus(Ljava/lang/String;)Lcom/lge/newbay/client/IMedia$Batch;
    .registers 7
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 752
    const-string v3, "/sng/user/{session.token}/batch/{batch.id}"

    const-string v4, "{batch.id}"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, uri:Ljava/lang/String;
    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, v1, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 754
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 755
    .local v2, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Media;->createBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;

    move-result-object v3

    return-object v3
.end method

.method public removeComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "commentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}/comment/{comment.id}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 455
    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 456
    const-string v2, "{comment.id}"

    invoke-virtual {v1, v2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 458
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 459
    return-void
.end method

.method public removeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "tagId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{folder.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{file.id}"

    invoke-virtual {v1, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tag/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-super {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 938
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 939
    return-void
.end method

.method public rotateImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    const-string v3, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v4, "{sns.uid}"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{sns.user.uid}"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, uri:Ljava/lang/String;
    const-string v3, "{folder.id}"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{file.id}"

    invoke-virtual {v2, v4, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rotate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {p0, v2, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 948
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "value"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 951
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 952
    return-void
.end method

.method public setFileSharing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 897
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, uri:Ljava/lang/String;
    const-string v4, "{folder.id}"

    invoke-virtual {v3, v4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{file.id}"

    invoke-virtual {v3, v5, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sharing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 901
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "value"

    invoke-direct {v4, v5, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 904
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 906
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 907
    return-void
.end method

.method public setFileTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 870
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}/file/{file.id}"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, uri:Ljava/lang/String;
    const-string v4, "{folder.id}"

    invoke-virtual {v3, v4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{file.id}"

    invoke-virtual {v3, v5, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 874
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "value"

    invoke-direct {v4, v5, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 877
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 879
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 880
    return-void
.end method

.method public setFolderSharing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 884
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, uri:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{folder.id}"

    invoke-virtual {v3, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sharing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 886
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 887
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "value"

    invoke-direct {v4, v5, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 890
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 892
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 893
    return-void
.end method

.method public setFolderTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 856
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, uri:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{folder.id}"

    invoke-virtual {v3, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 858
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 859
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "value"

    invoke-direct {v4, v5, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 862
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 864
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 865
    return-void
.end method

.method public uploadDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)Lcom/lge/newbay/client/IMedia$Batch;
    .registers 29
    .parameter "snsId"
    .parameter "userId"
    .parameter "fileUid"
    .parameter "title"
    .parameter "description"
    .parameter "sharedOption"
    .parameter "tags"
    .parameter "ftags"
    .parameter "ptags"
    .parameter "locationLat"
    .parameter "locationLon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 655
    const-string v13, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder"

    const-string v14, "{sns.uid}"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "{sns.user.uid}"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    .line 657
    .local v5, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v9, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "fileUid"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-static/range {p4 .. p4}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4b

    .line 661
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "title"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_4b
    invoke-static/range {p5 .. p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5f

    .line 664
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "description"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_5f
    invoke-static/range {p6 .. p6}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_73

    .line 667
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sharingOptions"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_73
    if-eqz p7, :cond_8a

    .line 670
    move-object/from16 v3, p7

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_79
    if-ge v6, v7, :cond_8a

    aget-object v10, v3, v6

    .line 671
    .local v10, tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "tags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 674
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_8a
    if-eqz p8, :cond_a1

    .line 675
    move-object/from16 v3, p8

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_90
    if-ge v6, v7, :cond_a1

    aget-object v10, v3, v6

    .line 676
    .restart local v10       #tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ftags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v6, v6, 0x1

    goto :goto_90

    .line 679
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_a1
    if-eqz p9, :cond_b8

    .line 680
    move-object/from16 v3, p9

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_a7
    if-ge v6, v7, :cond_b8

    aget-object v10, v3, v6

    .line 681
    .restart local v10       #tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ptags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 684
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_b8
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_c4

    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_100

    .line 685
    :cond_c4
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 686
    .local v8, nf:Ljava/text/NumberFormat;
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 687
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_e6

    .line 688
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "locationLat"

    move/from16 v0, p10

    float-to-double v0, v0

    move-wide v15, v0

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_e6
    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_100

    .line 691
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "locationLon"

    move/from16 v0, p11

    float-to-double v0, v0

    move-wide v15, v0

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v8           #nf:Ljava/text/NumberFormat;
    :cond_100
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v4, v9, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 695
    .local v4, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v13, "UTF-8"

    invoke-virtual {v4, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 697
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 698
    .local v12, xpp:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Media;->createBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;

    move-result-object v13

    return-object v13
.end method

.method public uploadEntireFile(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .registers 12
    .parameter "fileId"
    .parameter "contentType"
    .parameter "contentLength"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    const-string v0, "/sng/user/{session.token}/media/file/{file.id}"

    const-string v2, "{file.id}"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .local v1, uri:Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Media;->uploadEntireFileByUri(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    .line 574
    return-void
.end method

.method public uploadEntireFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 7
    .parameter "fileId"
    .parameter "contentType"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    const-string v1, "/sng/user/{session.token}/media/file/{file.id}"

    const-string v2, "{file.id}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, uri:Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p3}, Lcom/lge/newbay/client/impl/Media;->uploadEntireFileByUri(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 590
    return-void
.end method

.method public uploadEntireFileByUri(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .registers 11
    .parameter "uri"
    .parameter "contentType"
    .parameter "contentLength"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 579
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes 0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    sub-long v3, p3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v1, "If-Match"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, p5, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 583
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 584
    return-void
.end method

.method public uploadEntireFileByUri(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 9
    .parameter "uri"
    .parameter "contentType"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 595
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes 0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v1, "If-Match"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 600
    return-void
.end method

.method public uploadFilePart(Ljava/lang/String;ILjava/lang/String;JJJ[B)V
    .registers 17
    .parameter "fileId"
    .parameter "partIndex"
    .parameter "contentType"
    .parameter "rangeFrom"
    .parameter "rangeTo"
    .parameter "totalSize"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    const-string v0, "/sng/user/{session.token}/media/file/{file.id}/part/{part.id}"

    const-string v1, "{file.id}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, uri:Ljava/lang/String;
    const-string v0, "{part.id}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, rangeString:Ljava/lang/String;
    move-object v0, p0

    move-object v2, p3

    move v4, p2

    move-object/from16 v5, p10

    .line 607
    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Media;->uploadFilePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 608
    return-void
.end method

.method public uploadFilePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 9
    .parameter "uri"
    .parameter "contentType"
    .parameter "rangeString"
    .parameter "partIndex"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Media;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 613
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Range"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v1, "If-Match"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 617
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Media;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 618
    return-void
.end method

.method public uploadNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;FF)Lcom/lge/newbay/client/IMedia$Batch;
    .registers 30
    .parameter "snsId"
    .parameter "userId"
    .parameter "folderId"
    .parameter "fileUid"
    .parameter "title"
    .parameter "description"
    .parameter "sharedOption"
    .parameter "tags"
    .parameter "ftags"
    .parameter "ptags"
    .parameter "locationLat"
    .parameter "locationLon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 705
    const-string v13, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/media/folder/{folder.id}"

    const-string v14, "{sns.uid}"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "{sns.user.uid}"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "{folder.id}"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 706
    .local v11, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/impl/Media;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    .line 707
    .local v5, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v9, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "fileUid"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-static/range {p5 .. p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_55

    .line 711
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "title"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_55
    invoke-static/range {p6 .. p6}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_69

    .line 714
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "description"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_69
    invoke-static/range {p7 .. p7}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7d

    .line 717
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sharingOptions"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_7d
    if-eqz p8, :cond_94

    .line 720
    move-object/from16 v3, p8

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_83
    if-ge v6, v7, :cond_94

    aget-object v10, v3, v6

    .line 721
    .local v10, tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "tags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 724
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_94
    if-eqz p9, :cond_ab

    .line 725
    move-object/from16 v3, p9

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_9a
    if-ge v6, v7, :cond_ab

    aget-object v10, v3, v6

    .line 726
    .restart local v10       #tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ftags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    .line 729
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_ab
    if-eqz p10, :cond_c2

    .line 730
    move-object/from16 v3, p10

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_b1
    if-ge v6, v7, :cond_c2

    aget-object v10, v3, v6

    .line 731
    .restart local v10       #tag:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ptags"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v6, v6, 0x1

    goto :goto_b1

    .line 734
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_c2
    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_ce

    invoke-static/range {p12 .. p12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_10a

    .line 735
    :cond_ce
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 736
    .local v8, nf:Ljava/text/NumberFormat;
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 737
    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_f0

    .line 738
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "locationLat"

    move/from16 v0, p11

    float-to-double v0, v0

    move-wide v15, v0

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_f0
    invoke-static/range {p12 .. p12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_10a

    .line 741
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "locationLon"

    move/from16 v0, p12

    float-to-double v0, v0

    move-wide v15, v0

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    .end local v8           #nf:Ljava/text/NumberFormat;
    :cond_10a
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v4, v9, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 745
    .local v4, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v13, "UTF-8"

    invoke-virtual {v4, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 747
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/impl/Media;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 748
    .local v12, xpp:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Media;->createBatch(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMedia$Batch;

    move-result-object v13

    return-object v13
.end method
