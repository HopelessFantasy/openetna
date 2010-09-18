.class public Lcom/lge/sns/account/linkbook/LinkbookAccount;
.super Lcom/lge/sns/common/BaseFacade;
.source "LinkbookAccount.java"

# interfaces
.implements Lcom/lge/sns/account/IAccountFacade;


# static fields
.field static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "AccountProviderAdapter"

.field static final mimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accountActivated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

.field accountAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field accountInactivated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field accountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field final feedManager:Lcom/lge/sns/feed/IFeedFacade;

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/account/IAccountFacade$AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field final mediaManager:Lcom/lge/sns/media/IMediaFacade;

.field final messageManager:Lcom/lge/sns/message/IMessageFacade;

.field final profileManager:Lcom/lge/sns/profile/IProfileFacade;

.field uriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-string v6, "video.mimetype"

    const-string v5, "image.upload.folder.default"

    const-string v4, "image.upload.folder"

    const-string v3, "image.size.max"

    const-string v2, "image.mimetype"

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mimeMap:Ljava/util/HashMap;

    .line 507
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mimeMap:Ljava/util/HashMap;

    const-string v1, "image.upload.folder.default"

    const-string v1, "image.mimetype"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mimeMap:Ljava/util/HashMap;

    const-string v1, "image.upload.folder"

    const-string v1, "image.mimetype"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mimeMap:Ljava/util/HashMap;

    const-string v1, "video.upload.folder.default"

    const-string v2, "video.mimetype"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mimeMap:Ljava/util/HashMap;

    const-string v1, "video.upload.folder"

    const-string v2, "video.mimetype"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    .line 538
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    const-string v1, "image.upload.folder.default"

    const-string v1, "image.size.max"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    const-string v1, "image.upload.folder"

    const-string v1, "image.size.max"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    const-string v1, "video.upload.folder.default"

    const-string v2, "video.size.max"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    const-string v1, "video.upload.folder"

    const-string v2, "video.size.max"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->sizeMap:Ljava/util/HashMap;

    const-string v1, "status.updates.post"

    const-string v2, "status.updates.length.max"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/lge/sns/common/BaseFacade;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    .line 68
    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    .line 69
    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    .line 82
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->feedManager:Lcom/lge/sns/feed/IFeedFacade;

    .line 83
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->profileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 84
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mediaManager:Lcom/lge/sns/media/IMediaFacade;

    .line 85
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->messageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 86
    invoke-direct {p0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->initAccount()V

    .line 87
    return-void
.end method

.method private static extractId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 331
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 332
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBytePath(Ljava/lang/String;)[B
    .registers 7
    .parameter "img"

    .prologue
    .line 309
    const/16 v4, 0x1000

    :try_start_2
    new-array v0, v4, [B

    .line 311
    .local v0, buffer:[B
    invoke-super {p0}, Lcom/lge/sns/common/BaseFacade;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_2b

    move-result-object v1

    .line 313
    .local v1, is:Ljava/io/InputStream;
    :try_start_10
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_26

    .line 315
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    :goto_15
    :try_start_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, l:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2e

    .line 316
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 320
    .end local v2           #l:I
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v4
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 323
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    :catchall_26
    move-exception v4

    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2b

    .line 325
    .end local v0           #buffer:[B
    .end local v1           #is:Ljava/io/InputStream;
    :catch_2b
    move-exception v4

    .line 327
    const/4 v4, 0x0

    :goto_2d
    return-object v4

    .line 318
    .restart local v0       #buffer:[B
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:I
    .restart local v3       #os:Ljava/io/ByteArrayOutputStream;
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_21

    move-result-object v4

    .line 320
    :try_start_32
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_26

    .line 323
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_2b

    goto :goto_2d
.end method

.method private initAccount()V
    .registers 6

    .prologue
    .line 90
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    sget-object v4, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TITLE_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    invoke-virtual {v3, v4}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccountList(Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    .line 93
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    .line 94
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    .line 95
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 96
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, snsId:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 98
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_47
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->toUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 100
    :cond_56
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 122
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v2           #snsId:Ljava/lang/String;
    :cond_5c
    return-void
.end method

.method private notifyAccountAdded(Lcom/lge/sns/account/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 139
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 140
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 141
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/account/IAccountFacade$AccountListener;

    .line 142
    .local v2, listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    invoke-interface {v2, p1}, Lcom/lge/sns/account/IAccountFacade$AccountListener;->onAccountAdded(Lcom/lge/sns/account/Account;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 144
    .end local v2           #listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    :cond_1a
    monitor-exit v3

    .line 145
    return-void

    .line 144
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private notifyAccountRemoved(Lcom/lge/sns/account/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 159
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 161
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/account/IAccountFacade$AccountListener;

    .line 162
    .local v2, listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    invoke-interface {v2, p1}, Lcom/lge/sns/account/IAccountFacade$AccountListener;->onAccountRemoved(Lcom/lge/sns/account/Account;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 164
    .end local v2           #listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    :cond_1a
    monitor-exit v3

    .line 165
    return-void

    .line 164
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private notifyAccountUpdated(Lcom/lge/sns/account/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 148
    iget-object v3, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 149
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 151
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/account/IAccountFacade$AccountListener;

    .line 152
    .local v2, listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    invoke-interface {v2, p1}, Lcom/lge/sns/account/IAccountFacade$AccountListener;->onAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 154
    .end local v2           #listener:Lcom/lge/sns/account/IAccountFacade$AccountListener;
    :cond_1a
    monitor-exit v3

    .line 155
    return-void

    .line 154
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method


# virtual methods
.method public addAccount(Lcom/lge/sns/account/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 169
    .local v0, dbAccount:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_17

    .line 170
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->updateAccount(JLcom/lge/sns/account/Account;)I

    .line 171
    invoke-direct {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 198
    :goto_16
    return-void

    .line 173
    :cond_17
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v4, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->setAccount(Lcom/lge/sns/account/Account;)Landroid/net/Uri;

    move-result-object v3

    .line 174
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_48

    .line 175
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 176
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/account/Account;->setId(J)V

    .line 177
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 179
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_36
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->toUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v1           #id:J
    :cond_48
    invoke-direct {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountAdded(Lcom/lge/sns/account/Account;)V

    goto :goto_16

    .line 181
    .restart local v1       #id:J
    :cond_4c
    iget-object v4, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public addAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public checkAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "password"
    .parameter "remember"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v3

    .line 378
    .local v3, factory:Lcom/lge/newbay/client/NewbayFactory;
    :try_start_4
    invoke-virtual {v3}, Lcom/lge/newbay/client/NewbayFactory;->getCommunity()Lcom/lge/newbay/client/ICommunity;

    move-result-object v1

    .line 379
    .local v1, community:Lcom/lge/newbay/client/ICommunity;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/newbay/client/ICommunity;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/newbay/client/ICommunity$SnsAuth;

    move-result-object v0

    .line 380
    .local v0, auth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    invoke-virtual {v0}, Lcom/lge/newbay/client/ICommunity$SnsAuth;->getUid()Ljava/lang/String;
    :try_end_f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_f} :catch_11
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_37

    move-result-object v4

    return-object v4

    .line 381
    .end local v0           #auth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .end local v1           #community:Lcom/lge/newbay/client/ICommunity;
    :catch_11
    move-exception v4

    move-object v2, v4

    .line 382
    .local v2, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v4, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v4, v2}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 383
    .end local v2           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_19
    move-exception v4

    move-object v2, v4

    .line 384
    .local v2, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_29

    .line 385
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4

    .line 387
    :cond_29
    new-instance v4, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 389
    .end local v2           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_37
    move-exception v4

    move-object v2, v4

    .line 390
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v4, v2}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getAccount(Landroid/net/Uri;)Lcom/lge/sns/account/Account;
    .registers 3
    .parameter "uri"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/Account;

    return-object p0
.end method

.method public getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;
    .registers 3
    .parameter "snsId"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/Account;

    return-object p0
.end method

.method public getAccountList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, destination:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    return-object v0
.end method

.method public getAccountList(Z)Ljava/util/List;
    .registers 5
    .parameter "isActivated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    move-object v1, v2

    .line 216
    .local v1, src:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, destination:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    return-object v0

    .line 215
    .end local v0           #destination:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    .end local v1           #src:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    :cond_e
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    move-object v1, v2

    goto :goto_5
.end method

.method public getCredential(Ljava/lang/String;)Lcom/lge/sns/account/Credential;
    .registers 4
    .parameter "snsId"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 223
    .local v0, account:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_b

    .line 224
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    .line 226
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFeedUpdatedDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "snsId"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 396
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getFeedUpdated()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getFixedAccountList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v9, "TW"

    const-string v8, "FB"

    const-string v7, "BB"

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 459
    .local v3, today:Ljava/util/Date;
    iget-object v5, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    const-string v6, "FB"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 460
    new-instance v1, Lcom/lge/sns/account/Account;

    invoke-direct {v1}, Lcom/lge/sns/account/Account;-><init>()V

    .line 461
    .local v1, fb:Lcom/lge/sns/account/Account;
    const-string v5, "FB"

    invoke-virtual {v1, v8}, Lcom/lge/sns/account/Account;->setSnsId(Ljava/lang/String;)V

    .line 462
    const-string v5, "Facebook"

    invoke-virtual {v1, v5}, Lcom/lge/sns/account/Account;->setTitle(Ljava/lang/String;)V

    .line 463
    const-string v5, "http://www.facebook.com"

    invoke-virtual {v1, v5}, Lcom/lge/sns/account/Account;->setUrl(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1, v3}, Lcom/lge/sns/account/Account;->setPublished(Ljava/util/Date;)V

    .line 465
    invoke-virtual {v1, v3}, Lcom/lge/sns/account/Account;->setUpdated(Ljava/util/Date;)V

    .line 466
    const-string v5, "fb.png"

    invoke-direct {p0, v5}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/sns/account/Account;->setIconImage([B)V

    .line 467
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v1           #fb:Lcom/lge/sns/account/Account;
    :cond_40
    iget-object v5, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    const-string v6, "BB"

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 471
    new-instance v0, Lcom/lge/sns/account/Account;

    invoke-direct {v0}, Lcom/lge/sns/account/Account;-><init>()V

    .line 472
    .local v0, bb:Lcom/lge/sns/account/Account;
    const-string v5, "BB"

    invoke-virtual {v0, v7}, Lcom/lge/sns/account/Account;->setSnsId(Ljava/lang/String;)V

    .line 473
    const-string v5, "Bebo"

    invoke-virtual {v0, v5}, Lcom/lge/sns/account/Account;->setTitle(Ljava/lang/String;)V

    .line 474
    const-string v5, "http://www.bebo.com"

    invoke-virtual {v0, v5}, Lcom/lge/sns/account/Account;->setUrl(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, v3}, Lcom/lge/sns/account/Account;->setPublished(Ljava/util/Date;)V

    .line 476
    invoke-virtual {v0, v3}, Lcom/lge/sns/account/Account;->setUpdated(Ljava/util/Date;)V

    .line 477
    const-string v5, "bb.png"

    invoke-direct {p0, v5}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/sns/account/Account;->setIconImage([B)V

    .line 478
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v0           #bb:Lcom/lge/sns/account/Account;
    :cond_70
    iget-object v5, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    const-string v6, "TW"

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 482
    new-instance v4, Lcom/lge/sns/account/Account;

    invoke-direct {v4}, Lcom/lge/sns/account/Account;-><init>()V

    .line 483
    .local v4, tw:Lcom/lge/sns/account/Account;
    const-string v5, "TW"

    invoke-virtual {v4, v9}, Lcom/lge/sns/account/Account;->setSnsId(Ljava/lang/String;)V

    .line 484
    const-string v5, "Twitter"

    invoke-virtual {v4, v5}, Lcom/lge/sns/account/Account;->setTitle(Ljava/lang/String;)V

    .line 485
    const-string v5, "http://www.twitter.com"

    invoke-virtual {v4, v5}, Lcom/lge/sns/account/Account;->setUrl(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4, v3}, Lcom/lge/sns/account/Account;->setPublished(Ljava/util/Date;)V

    .line 487
    invoke-virtual {v4, v3}, Lcom/lge/sns/account/Account;->setUpdated(Ljava/util/Date;)V

    .line 488
    const-string v5, "tw.png"

    invoke-direct {p0, v5}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/sns/account/Account;->setIconImage([B)V

    .line 489
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v4           #tw:Lcom/lge/sns/account/Account;
    :cond_a0
    return-object v2
.end method

.method public getFriendListUpdatedDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "snsId"

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 402
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getFriendListUpdated()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getMaxSize(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "snsId"
    .parameter "feature"

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 565
    .local v0, max:I
    return v0
.end method

.method public getMimeTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "snsId"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewAccountList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v8, 0x0

    .line 268
    .local v8, newCommunityList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v7, newAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v3

    .line 272
    .local v3, factory:Lcom/lge/newbay/client/NewbayFactory;
    :try_start_a
    invoke-virtual {v3}, Lcom/lge/newbay/client/NewbayFactory;->getCommunity()Lcom/lge/newbay/client/ICommunity;

    move-result-object v0

    .line 273
    .local v0, community:Lcom/lge/newbay/client/ICommunity;
    sget-object v12, Lcom/lge/newbay/client/ICommunity$CommunityState;->ALL:Lcom/lge/newbay/client/ICommunity$CommunityState;

    invoke-interface {v0, v12}, Lcom/lge/newbay/client/ICommunity;->getCommunities(Lcom/lge/newbay/client/ICommunity$CommunityState;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v10

    .line 274
    .local v10, response:Lcom/lge/feed/atom/AtomFeed;
    invoke-virtual {v10}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v8

    .line 276
    if-eqz v8, :cond_b2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_b2

    .line 277
    const/4 v4, 0x0

    .local v4, i:I
    :goto_21
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_b2

    .line 278
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Entry;

    .line 279
    .local v2, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v2}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->extractId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, snsId:Ljava/lang/String;
    iget-object v12, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_85

    .line 281
    new-instance v9, Lcom/lge/sns/account/Account;

    invoke-direct {v9}, Lcom/lge/sns/account/Account;-><init>()V

    .line 282
    .local v9, newOne:Lcom/lge/sns/account/Account;
    invoke-virtual {v9, v11}, Lcom/lge/sns/account/Account;->setSnsId(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/lge/sns/account/Account;->setTitle(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/lge/sns/account/Account;->setPublished(Ljava/util/Date;)V

    .line 285
    invoke-virtual {v2}, Lcom/lge/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/lge/sns/account/Account;->setUpdated(Ljava/util/Date;)V

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, img:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v5

    .line 288
    .local v5, icon:[B
    if-eqz v5, :cond_88

    .line 289
    invoke-direct {p0, v6}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/lge/sns/account/Account;->setIconImage([B)V

    .line 293
    :goto_82
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v5           #icon:[B
    .end local v6           #img:Ljava/lang/String;
    .end local v9           #newOne:Lcom/lge/sns/account/Account;
    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 291
    .restart local v5       #icon:[B
    .restart local v6       #img:Ljava/lang/String;
    .restart local v9       #newOne:Lcom/lge/sns/account/Account;
    :cond_88
    const-string v12, "default.png"

    invoke-direct {p0, v12}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getBytePath(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/lge/sns/account/Account;->setIconImage([B)V
    :try_end_91
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a .. :try_end_91} :catch_92
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a .. :try_end_91} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_91} :catch_aa

    goto :goto_82

    .line 297
    .end local v0           #community:Lcom/lge/newbay/client/ICommunity;
    .end local v2           #entry:Lcom/lge/feed/atom/Entry;
    .end local v4           #i:I
    .end local v5           #icon:[B
    .end local v6           #img:Ljava/lang/String;
    .end local v9           #newOne:Lcom/lge/sns/account/Account;
    .end local v10           #response:Lcom/lge/feed/atom/AtomFeed;
    .end local v11           #snsId:Ljava/lang/String;
    :catch_92
    move-exception v12

    move-object v1, v12

    .line 298
    .local v1, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v12, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v12, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 299
    .end local v1           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_9a
    move-exception v12

    move-object v1, v12

    .line 300
    .local v1, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v12, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v13

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 301
    .end local v1           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_aa
    move-exception v12

    move-object v1, v12

    .line 302
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v12, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 304
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #community:Lcom/lge/newbay/client/ICommunity;
    .restart local v10       #response:Lcom/lge/feed/atom/AtomFeed;
    :cond_b2
    return-object v7
.end method

.method public getUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "snsId"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, uid:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getCredential(Ljava/lang/String;)Lcom/lge/sns/account/Credential;

    move-result-object v0

    .line 232
    .local v0, cred:Lcom/lge/sns/account/Credential;
    if-eqz v0, :cond_b

    .line 233
    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_b
    if-nez v1, :cond_14

    .line 236
    const-string v2, "AccountProviderAdapter"

    const-string v3, "This account is not activated."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_14
    return-object v1
.end method

.method public isNotify(Ljava/lang/String;)Z
    .registers 4
    .parameter "snsId"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 590
    .local v0, account:Lcom/lge/sns/account/Account;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isNotify()Z

    move-result v1

    goto :goto_7
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "snsId"
    .parameter "feature"

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public removeAccountList(Ljava/lang/String;)V
    .registers 6
    .parameter "snsId"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 338
    .local v0, account:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_88

    .line 339
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v1, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeFeature(Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v1, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeRestriction(Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeAccount(J)I

    move-result v1

    if-lez v1, :cond_39

    .line 343
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAll:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->uriMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->toUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_39
    invoke-static {p1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/BackgroundJobManager;->clearJob()V

    .line 351
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->feedManager:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade;->deleteAllFeed(Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mediaManager:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade;->deleteAllMediaComment(Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mediaManager:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade;->deleteAllMediaFile(Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->mediaManager:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/media/IMediaFacade;->deleteAllMediaFolder(Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->profileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade;->deleteAllFriendRequest(Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->profileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade;->deleteAllProfileComment(Ljava/lang/String;)I

    .line 360
    :try_start_5e
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->profileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade;->deleteAllProfileInContact(Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_63} :catch_89

    .line 363
    :goto_63
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->profileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade;->deleteAllProfile(Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 366
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 367
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->messageManager:Lcom/lge/sns/message/IMessageFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/lge/sns/message/IMessageFacade;->deleteAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_85
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountRemoved(Lcom/lge/sns/account/Account;)V

    .line 372
    :cond_88
    return-void

    .line 361
    :catch_89
    move-exception v1

    goto :goto_63
.end method

.method public removeAccountListener(Lcom/lge/sns/account/IAccountFacade$AccountListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public saveCredential(Ljava/lang/String;Lcom/lge/sns/account/Credential;)I
    .registers 9
    .parameter "snsId"
    .parameter "myInfo"

    .prologue
    const-string v5, "AccountProviderAdapter"

    .line 242
    if-eqz p2, :cond_46

    .line 243
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 244
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->setCredential(JLcom/lge/sns/account/Credential;)I

    move-result v1

    .line 245
    .local v1, updatedCnt:I
    if-lez v1, :cond_3e

    .line 246
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/Account;->setCredential(Lcom/lge/sns/account/Credential;)V

    .line 247
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 248
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_27
    const-string v2, "AccountProviderAdapter"

    const-string v2, "updated is success"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    :goto_31
    move v2, v1

    .line 262
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v1           #updatedCnt:I
    :goto_32
    return v2

    .line 251
    .restart local v0       #account:Lcom/lge/sns/account/Account;
    .restart local v1       #updatedCnt:I
    :cond_33
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountActivated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountInactivated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 257
    :cond_3e
    const-string v2, "AccountProviderAdapter"

    const-string v2, "no rows are updated"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 262
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v1           #updatedCnt:I
    :cond_46
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public saveNotify(Ljava/lang/String;Z)I
    .registers 9
    .parameter "snsId"
    .parameter "noti"

    .prologue
    const-string v5, "AccountProviderAdapter"

    .line 594
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 595
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->setNotify(JZ)I

    move-result v1

    .line 597
    .local v1, cnt:I
    if-lez v1, :cond_20

    .line 598
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/Account;->setNotify(Z)V

    .line 599
    const-string v2, "AccountProviderAdapter"

    const-string v2, "updated is success"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 604
    :goto_1f
    return v1

    .line 602
    :cond_20
    const-string v2, "AccountProviderAdapter"

    const-string v2, "no rows are updated"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public setFeedUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z
    .registers 8
    .parameter "snsId"
    .parameter "date"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 408
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->updateFeedUpdated(JLjava/util/Date;)I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    move v1, v2

    .line 409
    .local v1, updated:Z
    :goto_12
    if-eqz v1, :cond_1a

    .line 410
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/Account;->setFeedUpdated(Ljava/util/Date;)V

    .line 411
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 413
    :cond_1a
    return v1

    .line 408
    .end local v1           #updated:Z
    :cond_1b
    const/4 v2, 0x0

    move v1, v2

    goto :goto_12
.end method

.method public setFriendListUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z
    .registers 8
    .parameter "snsId"
    .parameter "date"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 419
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v2, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->updateFriendListUpdated(JLjava/util/Date;)I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    move v1, v2

    .line 420
    .local v1, updated:Z
    :goto_12
    if-eqz v1, :cond_1a

    .line 421
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/Account;->setFriendListUpdated(Ljava/util/Date;)V

    .line 422
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 424
    :cond_1a
    return v1

    .line 419
    .end local v1           #updated:Z
    :cond_1b
    const/4 v2, 0x0

    move v1, v2

    goto :goto_12
.end method

.method public setStatus(Ljava/lang/String;Z)V
    .registers 11
    .parameter "snsId"
    .parameter "status"

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 609
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v5, p0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->accountAdapter:Lcom/lge/sns/account/provider/AccountProviderAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->setStatus(JZ)I

    move-result v4

    .line 610
    .local v4, result:I
    if-lez v4, :cond_24

    .line 611
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    .line 612
    .local v2, cred:Lcom/lge/sns/account/Credential;
    if-nez v2, :cond_25

    .line 613
    new-instance v2, Lcom/lge/sns/account/Credential;

    .end local v2           #cred:Lcom/lge/sns/account/Credential;
    invoke-direct {v2}, Lcom/lge/sns/account/Credential;-><init>()V

    .line 614
    .restart local v2       #cred:Lcom/lge/sns/account/Credential;
    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setCredential(Lcom/lge/sns/account/Credential;)V

    .line 626
    :cond_1e
    :goto_1e
    invoke-virtual {v2, p2}, Lcom/lge/sns/account/Credential;->setLogin(Z)V

    .line 627
    invoke-direct {p0, v0}, Lcom/lge/sns/account/linkbook/LinkbookAccount;->notifyAccountUpdated(Lcom/lge/sns/account/Account;)V

    .line 629
    .end local v2           #cred:Lcom/lge/sns/account/Credential;
    :cond_24
    return-void

    .line 616
    .restart local v2       #cred:Lcom/lge/sns/account/Credential;
    :cond_25
    if-nez p2, :cond_1e

    .line 617
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v3

    .line 619
    .local v3, factory:Lcom/lge/newbay/client/NewbayFactory;
    :try_start_2b
    invoke-virtual {v3}, Lcom/lge/newbay/client/NewbayFactory;->getCommunity()Lcom/lge/newbay/client/ICommunity;

    move-result-object v1

    .line 620
    .local v1, community:Lcom/lge/newbay/client/ICommunity;
    invoke-interface {v1, p1}, Lcom/lge/newbay/client/ICommunity;->deactivate(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_1e

    .line 621
    .end local v1           #community:Lcom/lge/newbay/client/ICommunity;
    :catch_33
    move-exception v5

    goto :goto_1e
.end method
