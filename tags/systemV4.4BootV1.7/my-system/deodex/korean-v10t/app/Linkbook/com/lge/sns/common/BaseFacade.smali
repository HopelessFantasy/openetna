.class public Lcom/lge/sns/common/BaseFacade;
.super Ljava/lang/Object;
.source "BaseFacade.java"


# static fields
.field static final factory:Lcom/lge/newbay/client/NewbayFactory;

.field static final snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private final ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/common/BaseFacade;->snsManager:Lcom/lge/sns/SnsManager;

    .line 49
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/lge/sns/common/BaseFacade;->ctx:Landroid/content/Context;

    .line 53
    return-void
.end method

.method protected static getAddress()Lcom/lge/newbay/client/IAddress;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getAddress()Lcom/lge/newbay/client/IAddress;

    move-result-object v0

    return-object v0
.end method

.method protected static getCommunity()Lcom/lge/newbay/client/ICommunity;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getCommunity()Lcom/lge/newbay/client/ICommunity;

    move-result-object v0

    return-object v0
.end method

.method protected static getFriend()Lcom/lge/newbay/client/IFriend;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getFriend()Lcom/lge/newbay/client/IFriend;

    move-result-object v0

    return-object v0
.end method

.method protected static getInvitation()Lcom/lge/newbay/client/IInvitation;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getInvitation()Lcom/lge/newbay/client/IInvitation;

    move-result-object v0

    return-object v0
.end method

.method protected static getMedia()Lcom/lge/newbay/client/IMedia;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getMedia()Lcom/lge/newbay/client/IMedia;

    move-result-object v0

    return-object v0
.end method

.method protected static getMessage()Lcom/lge/newbay/client/IMessage;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v0

    return-object v0
.end method

.method protected static getMiniFeed()Lcom/lge/newbay/client/IMiniFeed;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getMiniFeed()Lcom/lge/newbay/client/IMiniFeed;

    move-result-object v0

    return-object v0
.end method

.method public static getNewbayFactory()Lcom/lge/newbay/client/NewbayFactory;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    return-object v0
.end method

.method protected static getProfile()Lcom/lge/newbay/client/IProfile;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v0

    return-object v0
.end method

.method protected static getSearch()Lcom/lge/newbay/client/ISearch;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getSearch()Lcom/lge/newbay/client/ISearch;

    move-result-object v0

    return-object v0
.end method

.method protected static getSessionToken()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getSetting()Lcom/lge/newbay/client/ISetting;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->factory:Lcom/lge/newbay/client/NewbayFactory;

    invoke-virtual {v0}, Lcom/lge/newbay/client/NewbayFactory;->getSetting()Lcom/lge/newbay/client/ISetting;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsManager()Lcom/lge/sns/SnsManager;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/lge/sns/common/BaseFacade;->snsManager:Lcom/lge/sns/SnsManager;

    return-object v0
.end method


# virtual methods
.method protected getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lge/sns/common/BaseFacade;->ctx:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/sns/common/BaseFacade;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/sns/common/BaseFacade;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected isNetworkAvailable()Z
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/lge/sns/common/BaseFacade;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 79
    .local v0, ni:Landroid/net/NetworkInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_7
.end method

.method protected isRoaming()Z
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/lge/sns/common/BaseFacade;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 70
    .local v0, ni:Landroid/net/NetworkInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    goto :goto_7
.end method

.method protected queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "defaultValue"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/lge/sns/common/BaseFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_21

    .line 245
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 246
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_23

    move-result v0

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :goto_1d
    return v0

    .line 249
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    move v0, p6

    .line 252
    goto :goto_1d

    .line 249
    :catchall_23
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected queryString(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/lge/sns/common/BaseFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_21

    .line 269
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 270
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_23

    move-result-object v0

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :goto_1d
    return-object v0

    .line 273
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d

    .line 273
    :catchall_23
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected tryLogin(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v4, Lcom/lge/sns/common/BaseFacade;->snsManager:Lcom/lge/sns/SnsManager;

    iget-object v5, p0, Lcom/lge/sns/common/BaseFacade;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    .line 216
    .local v1, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    invoke-interface {v1, p1}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 217
    .local v0, account:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_2f

    .line 218
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    .line 219
    .local v2, cred:Lcom/lge/sns/account/Credential;
    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 220
    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v6

    invoke-interface {v1, p1, v4, v5, v6}, Lcom/lge/sns/account/IAccountFacade;->checkAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, uid:Ljava/lang/String;
    if-eqz v3, :cond_2f

    .line 222
    const/4 v4, 0x1

    invoke-interface {v1, p1, v4}, Lcom/lge/sns/account/IAccountFacade;->setStatus(Ljava/lang/String;Z)V

    .line 223
    return-object v3

    .line 227
    .end local v2           #cred:Lcom/lge/sns/account/Credential;
    .end local v3           #uid:Ljava/lang/String;
    :cond_2f
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4
.end method
