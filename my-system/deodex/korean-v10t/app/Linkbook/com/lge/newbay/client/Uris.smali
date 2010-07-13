.class public Lcom/lge/newbay/client/Uris;
.super Ljava/lang/Object;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/Uris$MessageParam;,
        Lcom/lge/newbay/client/Uris$MessageThreadParam;,
        Lcom/lge/newbay/client/Uris$MediaFileParam;,
        Lcom/lge/newbay/client/Uris$FriendRequestParam;,
        Lcom/lge/newbay/client/Uris$ProfileCommentParam;,
        Lcom/lge/newbay/client/Uris$SnsBasicParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static getFriendRequestParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$FriendRequestParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/4 v5, 0x7

    .line 287
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 289
    array-length v2, v1

    if-le v2, v5, :cond_5c

    const-string v2, "request"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "friends"

    array-length v3, v1

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 294
    new-instance v0, Lcom/lge/newbay/client/Uris$FriendRequestParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$FriendRequestParam;-><init>()V

    .line 295
    .local v0, param:Lcom/lge/newbay/client/Uris$FriendRequestParam;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->setRequestId(Ljava/lang/String;)V

    .line 296
    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->setUserId(Ljava/lang/String;)V

    .line 297
    array-length v2, v1

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 302
    .end local v0           #param:Lcom/lge/newbay/client/Uris$FriendRequestParam;
    :goto_5b
    return-object v2

    :cond_5c
    const/4 v2, 0x0

    goto :goto_5b
.end method

.method public static getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/16 v5, 0x9

    .line 311
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_73

    .line 313
    array-length v2, v1

    if-le v2, v5, :cond_73

    const-string v2, "file"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "folder"

    array-length v3, v1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "media"

    array-length v3, v1

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x7

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 319
    new-instance v0, Lcom/lge/newbay/client/Uris$MediaFileParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$MediaFileParam;-><init>()V

    .line 320
    .local v0, param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->setFileId(Ljava/lang/String;)V

    .line 321
    array-length v2, v1

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->setFolderId(Ljava/lang/String;)V

    .line 322
    array-length v2, v1

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->setUserId(Ljava/lang/String;)V

    .line 323
    array-length v2, v1

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MediaFileParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 328
    .end local v0           #param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    :goto_72
    return-object v2

    :cond_73
    const/4 v2, 0x0

    goto :goto_72
.end method

.method public static getMessageParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MessageParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/16 v5, 0x9

    .line 360
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_73

    .line 362
    array-length v2, v1

    if-le v2, v5, :cond_73

    const-string v2, "entry"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "thread"

    array-length v3, v1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "message"

    array-length v3, v1

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x7

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 368
    new-instance v0, Lcom/lge/newbay/client/Uris$MessageParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$MessageParam;-><init>()V

    .line 369
    .local v0, param:Lcom/lge/newbay/client/Uris$MessageParam;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageParam;->setThreadId(Ljava/lang/String;)V

    .line 370
    array-length v2, v1

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageParam;->setThreadId(Ljava/lang/String;)V

    .line 371
    array-length v2, v1

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageParam;->setUserId(Ljava/lang/String;)V

    .line 372
    array-length v2, v1

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 376
    .end local v0           #param:Lcom/lge/newbay/client/Uris$MessageParam;
    :goto_72
    return-object v2

    :cond_73
    const/4 v2, 0x0

    goto :goto_72
.end method

.method public static getMessageThreadParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MessageThreadParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/4 v5, 0x7

    .line 336
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 338
    array-length v2, v1

    if-le v2, v5, :cond_5c

    const-string v2, "thread"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "message"

    array-length v3, v1

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 343
    new-instance v0, Lcom/lge/newbay/client/Uris$MessageThreadParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$MessageThreadParam;-><init>()V

    .line 344
    .local v0, param:Lcom/lge/newbay/client/Uris$MessageThreadParam;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageThreadParam;->setThreadId(Ljava/lang/String;)V

    .line 345
    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageThreadParam;->setUserId(Ljava/lang/String;)V

    .line 346
    array-length v2, v1

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$MessageThreadParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 351
    .end local v0           #param:Lcom/lge/newbay/client/Uris$MessageThreadParam;
    :goto_5b
    return-object v2

    :cond_5c
    const/4 v2, 0x0

    goto :goto_5b
.end method

.method public static getPathSegments(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "uriString"

    .prologue
    .line 384
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 385
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, path:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getProfileCommentParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/4 v5, 0x7

    .line 263
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 265
    array-length v2, v1

    if-le v2, v5, :cond_5c

    const-string v2, "comment"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "profile"

    array-length v3, v1

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 270
    new-instance v0, Lcom/lge/newbay/client/Uris$ProfileCommentParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;-><init>()V

    .line 271
    .local v0, param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->setCommentId(Ljava/lang/String;)V

    .line 272
    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->setUserId(Ljava/lang/String;)V

    .line 273
    array-length v2, v1

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 278
    .end local v0           #param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    :goto_5b
    return-object v2

    :cond_5c
    const/4 v2, 0x0

    goto :goto_5b
.end method

.method public static getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/4 v5, 0x5

    .line 218
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 220
    array-length v2, v1

    if-le v2, v5, :cond_47

    const-string v2, "profile"

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 224
    new-instance v0, Lcom/lge/newbay/client/Uris$SnsBasicParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    .line 225
    .local v0, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->setUserId(Ljava/lang/String;)V

    .line 226
    array-length v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 231
    .end local v0           #param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :goto_46
    return-object v2

    :cond_47
    const/4 v2, 0x0

    goto :goto_46
.end method

.method public static getProfileStatusParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;
    .registers 7
    .parameter "uriString"

    .prologue
    const/4 v5, 0x6

    .line 240
    invoke-static {p0}, Lcom/lge/newbay/client/Uris;->getPathSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, segments:[Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 242
    array-length v2, v1

    if-le v2, v5, :cond_54

    const-string v2, "status"

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "profile"

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "user"

    array-length v3, v1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "sns"

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 247
    new-instance v0, Lcom/lge/newbay/client/Uris$SnsBasicParam;

    invoke-direct {v0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    .line 248
    .local v0, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    array-length v2, v1

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->setUserId(Ljava/lang/String;)V

    .line 249
    array-length v2, v1

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->setSnsId(Ljava/lang/String;)V

    move-object v2, v0

    .line 254
    .end local v0           #param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :goto_53
    return-object v2

    :cond_54
    const/4 v2, 0x0

    goto :goto_53
.end method
