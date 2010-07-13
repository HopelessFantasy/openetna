.class public Lcom/lge/newbay/client/NewbayFactory;
.super Ljava/lang/Object;
.source "NewbayFactory.java"


# static fields
.field private static final CONFIG_INTERNAL:Ljava/lang/String; = "/com/lge/newbay/client/newbay.properties"

.field private static final CONFIG_PROP:Ljava/lang/String; = "/newbay.properties"

.field public static final KEY_NEWBAY_AUTH_KEY:Ljava/lang/String; = "key.auth"

.field public static final KEY_NEWBAY_GZIP:Ljava/lang/String; = "gzip"

.field public static final KEY_NEWBAY_HOST:Ljava/lang/String; = "host"

.field public static final KEY_NEWBAY_MSSIDN:Ljava/lang/String; = "mssidn"

.field public static final KEY_NEWBAY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_NEWBAY_SECURE:Ljava/lang/String; = "secure"

.field public static final KEY_NEWBAY_SECURITY_KEY:Ljava/lang/String; = "key.security"

.field public static final KEY_NEWBAY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field public static final KEY_NEWBAY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_NEWBAY_UID_FIXED:Ljava/lang/String; = "uid.fixed"

.field static instance:Lcom/lge/newbay/client/NewbayFactory;

.field static prop:Ljava/util/Properties;

.field static sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;


# instance fields
.field private address:Lcom/lge/newbay/client/IAddress;

.field private community:Lcom/lge/newbay/client/ICommunity;

.field private context:Lcom/lge/newbay/client/impl/NewbayContext;

.field private friend:Lcom/lge/newbay/client/IFriend;

.field private invitation:Lcom/lge/newbay/client/IInvitation;

.field private media:Lcom/lge/newbay/client/IMedia;

.field private message:Lcom/lge/newbay/client/IMessage;

.field private minifeed:Lcom/lge/newbay/client/IMiniFeed;

.field private profile:Lcom/lge/newbay/client/IProfile;

.field private search:Lcom/lge/newbay/client/ISearch;

.field private setting:Lcom/lge/newbay/client/ISetting;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    .line 80
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "host"

    const-string v2, "linkbook01.newbay.com/sng"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "key.security"

    const-string v2, "a1f4308e3df14f5b"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "key.auth"

    const-string v2, "5cf6c6f2c2b841e88fa358c2ea08a593"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "secure"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "gzip"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "/com/lge/newbay/client/newbay.properties"

    invoke-static {v0, v1}, Lcom/lge/util/Util;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v1, "/newbay.properties"

    invoke-static {v0, v1}, Lcom/lge/util/Util;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/lge/newbay/client/NewbayFactory;

    invoke-direct {v0}, Lcom/lge/newbay/client/NewbayFactory;-><init>()V

    sput-object v0, Lcom/lge/newbay/client/NewbayFactory;->instance:Lcom/lge/newbay/client/NewbayFactory;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/newbay/client/NewbayFactory;->sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;

    .line 137
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->address:Lcom/lge/newbay/client/IAddress;

    .line 138
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->community:Lcom/lge/newbay/client/ICommunity;

    .line 139
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->friend:Lcom/lge/newbay/client/IFriend;

    .line 140
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->invitation:Lcom/lge/newbay/client/IInvitation;

    .line 141
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->media:Lcom/lge/newbay/client/IMedia;

    .line 142
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->message:Lcom/lge/newbay/client/IMessage;

    .line 143
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->minifeed:Lcom/lge/newbay/client/IMiniFeed;

    .line 144
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->profile:Lcom/lge/newbay/client/IProfile;

    .line 145
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->search:Lcom/lge/newbay/client/ISearch;

    .line 146
    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->setting:Lcom/lge/newbay/client/ISetting;

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->boostMode:Z

    .line 93
    return-void
.end method

.method public static getInstance()Lcom/lge/newbay/client/NewbayFactory;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->instance:Lcom/lge/newbay/client/NewbayFactory;

    return-object v0
.end method

.method private declared-synchronized getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;

    if-nez v0, :cond_a9

    .line 150
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "uid.fixed"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, uid:Ljava/lang/String;
    if-nez v1, :cond_17

    .line 152
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "uid"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_17
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "mssidn"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, msisdn:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "host"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, host:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "key.security"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, securityKey:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "key.auth"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, authApiKey:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "password"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, password:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "sessionToken"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, sessionToken:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "secure"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, secure:Ljava/lang/String;
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    const-string v7, "gzip"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, gzip:Ljava/lang/String;
    if-nez v1, :cond_64

    .line 164
    new-instance v0, Lcom/lge/newbay/client/NewbayConnectException;

    const-string v7, "The parameter uid is not initialized"

    invoke-direct {v0, v7}, Lcom/lge/newbay/client/NewbayConnectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_61

    .line 149
    .end local v1           #uid:Ljava/lang/String;
    .end local v2           #msisdn:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #securityKey:Ljava/lang/String;
    .end local v5           #authApiKey:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v9           #gzip:Ljava/lang/String;
    .end local v10           #secure:Ljava/lang/String;
    .end local v11           #sessionToken:Ljava/lang/String;
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    .restart local v1       #uid:Ljava/lang/String;
    .restart local v2       #msisdn:Ljava/lang/String;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v4       #securityKey:Ljava/lang/String;
    .restart local v5       #authApiKey:Ljava/lang/String;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v9       #gzip:Ljava/lang/String;
    .restart local v10       #secure:Ljava/lang/String;
    .restart local v11       #sessionToken:Ljava/lang/String;
    :cond_64
    if-nez v3, :cond_6e

    .line 167
    :try_start_66
    new-instance v0, Lcom/lge/newbay/client/NewbayConnectException;

    const-string v7, "The parameter host is not initialized"

    invoke-direct {v0, v7}, Lcom/lge/newbay/client/NewbayConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_6e
    if-nez v4, :cond_78

    .line 170
    new-instance v0, Lcom/lge/newbay/client/NewbayConnectException;

    const-string v7, "The parameter key.security is not initialized"

    invoke-direct {v0, v7}, Lcom/lge/newbay/client/NewbayConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_78
    if-nez v5, :cond_82

    .line 173
    new-instance v0, Lcom/lge/newbay/client/NewbayConnectException;

    const-string v7, "The parameter key.auth is not initialized"

    invoke-direct {v0, v7}, Lcom/lge/newbay/client/NewbayConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_82
    new-instance v0, Lcom/lge/newbay/client/impl/NewbayContext;

    const-string v7, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ad

    const/4 v8, 0x1

    :goto_93
    invoke-direct/range {v0 .. v8}, Lcom/lge/newbay/client/impl/NewbayContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;

    .line 176
    if-nez v11, :cond_a4

    .line 177
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getSessonTokenInitializer()Lcom/lge/newbay/client/ISessonTokenInitializer;

    move-result-object v0

    iget-object v7, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-interface {v0, v7, v6}, Lcom/lge/newbay/client/ISessonTokenInitializer;->getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    :cond_a4
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, v11}, Lcom/lge/newbay/client/impl/NewbayContext;->setSessionToken(Ljava/lang/String;)V

    .line 182
    .end local v1           #uid:Ljava/lang/String;
    .end local v2           #msisdn:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #securityKey:Ljava/lang/String;
    .end local v5           #authApiKey:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v9           #gzip:Ljava/lang/String;
    .end local v10           #secure:Ljava/lang/String;
    .end local v11           #sessionToken:Ljava/lang/String;
    :cond_a9
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->context:Lcom/lge/newbay/client/impl/NewbayContext;
    :try_end_ab
    .catchall {:try_start_66 .. :try_end_ab} :catchall_61

    monitor-exit p0

    return-object v0

    .line 175
    .restart local v1       #uid:Ljava/lang/String;
    .restart local v2       #msisdn:Ljava/lang/String;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v4       #securityKey:Ljava/lang/String;
    .restart local v5       #authApiKey:Ljava/lang/String;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v9       #gzip:Ljava/lang/String;
    .restart local v10       #secure:Ljava/lang/String;
    .restart local v11       #sessionToken:Ljava/lang/String;
    :cond_ad
    const/4 v8, 0x0

    goto :goto_93
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "name"

    .prologue
    .line 125
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessonTokenInitializer()Lcom/lge/newbay/client/ISessonTokenInitializer;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;

    invoke-direct {v0}, Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;-><init>()V

    sput-object v0, Lcom/lge/newbay/client/NewbayFactory;->sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;

    .line 109
    :cond_b
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;

    return-object v0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 133
    sget-object v0, Lcom/lge/newbay/client/NewbayFactory;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public static setSessonTokenInitializer(Lcom/lge/newbay/client/ISessonTokenInitializer;)V
    .registers 1
    .parameter "sessonTokenInitializer"

    .prologue
    .line 116
    sput-object p0, Lcom/lge/newbay/client/NewbayFactory;->sessonTokenInitializer:Lcom/lge/newbay/client/ISessonTokenInitializer;

    .line 117
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/lge/newbay/client/IAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->address:Lcom/lge/newbay/client/IAddress;

    if-nez v0, :cond_f

    .line 201
    new-instance v0, Lcom/lge/newbay/client/impl/Address;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Address;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->address:Lcom/lge/newbay/client/IAddress;

    .line 203
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->address:Lcom/lge/newbay/client/IAddress;

    return-object v0
.end method

.method public getCommunity()Lcom/lge/newbay/client/ICommunity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->community:Lcom/lge/newbay/client/ICommunity;

    if-nez v0, :cond_f

    .line 212
    new-instance v0, Lcom/lge/newbay/client/impl/Community;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Community;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->community:Lcom/lge/newbay/client/ICommunity;

    .line 214
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->community:Lcom/lge/newbay/client/ICommunity;

    return-object v0
.end method

.method public getFriend()Lcom/lge/newbay/client/IFriend;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->friend:Lcom/lge/newbay/client/IFriend;

    if-nez v0, :cond_f

    .line 223
    new-instance v0, Lcom/lge/newbay/client/impl/Friend;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Friend;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->friend:Lcom/lge/newbay/client/IFriend;

    .line 225
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->friend:Lcom/lge/newbay/client/IFriend;

    return-object v0
.end method

.method public getInvitation()Lcom/lge/newbay/client/IInvitation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->invitation:Lcom/lge/newbay/client/IInvitation;

    if-nez v0, :cond_f

    .line 235
    new-instance v0, Lcom/lge/newbay/client/impl/Invitation;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Invitation;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->invitation:Lcom/lge/newbay/client/IInvitation;

    .line 237
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->invitation:Lcom/lge/newbay/client/IInvitation;

    return-object v0
.end method

.method public getMedia()Lcom/lge/newbay/client/IMedia;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->media:Lcom/lge/newbay/client/IMedia;

    if-nez v0, :cond_f

    .line 246
    new-instance v0, Lcom/lge/newbay/client/impl/Media;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Media;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->media:Lcom/lge/newbay/client/IMedia;

    .line 248
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->media:Lcom/lge/newbay/client/IMedia;

    return-object v0
.end method

.method public getMessage()Lcom/lge/newbay/client/IMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->message:Lcom/lge/newbay/client/IMessage;

    if-nez v0, :cond_f

    .line 257
    new-instance v0, Lcom/lge/newbay/client/impl/Message;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Message;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->message:Lcom/lge/newbay/client/IMessage;

    .line 259
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->message:Lcom/lge/newbay/client/IMessage;

    return-object v0
.end method

.method public getMiniFeed()Lcom/lge/newbay/client/IMiniFeed;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->minifeed:Lcom/lge/newbay/client/IMiniFeed;

    if-nez v0, :cond_f

    .line 268
    new-instance v0, Lcom/lge/newbay/client/impl/MiniFeed;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/MiniFeed;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->minifeed:Lcom/lge/newbay/client/IMiniFeed;

    .line 270
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->minifeed:Lcom/lge/newbay/client/IMiniFeed;

    return-object v0
.end method

.method public getProfile()Lcom/lge/newbay/client/IProfile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->profile:Lcom/lge/newbay/client/IProfile;

    if-nez v0, :cond_f

    .line 279
    new-instance v0, Lcom/lge/newbay/client/impl/Profile;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Profile;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->profile:Lcom/lge/newbay/client/IProfile;

    .line 281
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->profile:Lcom/lge/newbay/client/IProfile;

    return-object v0
.end method

.method public getSearch()Lcom/lge/newbay/client/ISearch;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->search:Lcom/lge/newbay/client/ISearch;

    if-nez v0, :cond_f

    .line 290
    new-instance v0, Lcom/lge/newbay/client/impl/Search;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Search;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->search:Lcom/lge/newbay/client/ISearch;

    .line 292
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->search:Lcom/lge/newbay/client/ISearch;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v0

    .line 192
    .local v0, ctx:Lcom/lge/newbay/client/impl/NewbayContext;
    invoke-virtual {v0}, Lcom/lge/newbay/client/impl/NewbayContext;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSetting()Lcom/lge/newbay/client/ISetting;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->setting:Lcom/lge/newbay/client/ISetting;

    if-nez v0, :cond_f

    .line 301
    new-instance v0, Lcom/lge/newbay/client/impl/Setting;

    invoke-direct {p0}, Lcom/lge/newbay/client/NewbayFactory;->getNewbayContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Setting;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    iput-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->setting:Lcom/lge/newbay/client/ISetting;

    .line 303
    :cond_f
    iget-object v0, p0, Lcom/lge/newbay/client/NewbayFactory;->setting:Lcom/lge/newbay/client/ISetting;

    return-object v0
.end method
