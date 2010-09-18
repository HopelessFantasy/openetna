.class public Lcom/lge/sns/SnsManager;
.super Ljava/lang/Object;
.source "SnsManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final impl:Ljava/util/Properties;

.field private static instance:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field private activated:Z

.field private feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private messageFacade:Lcom/lge/sns/message/IMessageFacade;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private settingFacade:Lcom/lge/sns/setting/ISettingFacade;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "SnsManager"

    sput-object v0, Lcom/lge/sns/SnsManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/lge/sns/SnsManager;

    invoke-direct {v0}, Lcom/lge/sns/SnsManager;-><init>()V

    sput-object v0, Lcom/lge/sns/SnsManager;->instance:Lcom/lge/sns/SnsManager;

    .line 129
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    .line 131
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "IAccountFacade"

    const-string v2, "com.lge.sns.account.linkbook.LinkbookAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "IFeedFacade"

    const-string v2, "com.lge.sns.feed.linkbook.FeedFacade"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "IMessageFacade"

    const-string v2, "com.lge.sns.message.linkbook.MsgMngr"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "IProfileFacade"

    const-string v2, "com.lge.sns.profile.linkbook.ProfileFacade"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "ISettingFacade"

    const-string v2, "com.lge.sns.setting.linkbook.LinkbookSetting"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    const-string v1, "IMediaFacade"

    const-string v2, "com.lge.sns.media.linkbook.MediaFacade"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 34
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    .line 35
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 36
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 37
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    .line 38
    iput-object v0, p0, Lcom/lge/sns/SnsManager;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/SnsManager;->uid:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/SnsManager;->activated:Z

    .line 126
    return-void
.end method

.method private static createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .parameter "ctx"
    .parameter "key"

    .prologue
    .line 104
    sget-object v4, Lcom/lge/sns/SnsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to load the class for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v4, Lcom/lge/sns/SnsManager;->impl:Ljava/util/Properties;

    invoke-virtual {v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_6f

    .line 109
    sget-object v4, Lcom/lge/sns/SnsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_38
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 114
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_53

    move-result-object v4

    .line 121
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_52
    return-object v4

    .line 115
    :catch_53
    move-exception v4

    move-object v3, v4

    .line 116
    .local v3, e:Ljava/lang/Exception;
    sget-object v4, Lcom/lge/sns/SnsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ubable to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v3           #e:Ljava/lang/Exception;
    :goto_6d
    const/4 v4, 0x0

    goto :goto_52

    .line 119
    :cond_6f
    sget-object v4, Lcom/lge/sns/SnsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The class for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is defined "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public static getInstance()Lcom/lge/sns/SnsManager;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/sns/SnsManager;->instance:Lcom/lge/sns/SnsManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized generatetUid()I
    .registers 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/lge/sns/SnsManager;->uid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/sns/SnsManager;->uid:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    if-nez v0, :cond_e

    .line 61
    const-string v0, "IAccountFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/IAccountFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 63
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    return-object v0
.end method

.method public getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    if-nez v0, :cond_e

    .line 75
    const-string v0, "IFeedFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/IFeedFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    return-object v0
.end method

.method public getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    if-nez v0, :cond_e

    .line 96
    const-string v0, "IMediaFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/IMediaFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 98
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    return-object v0
.end method

.method public getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    if-nez v0, :cond_e

    .line 89
    const-string v0, "IMessageFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/IMessageFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    .line 91
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method public getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    if-nez v0, :cond_e

    .line 82
    const-string v0, "IProfileFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/IProfileFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method public getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    if-nez v0, :cond_e

    .line 68
    const-string v0, "ISettingFacade"

    invoke-static {p1, v0}, Lcom/lge/sns/SnsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/setting/ISettingFacade;

    iput-object v0, p0, Lcom/lge/sns/SnsManager;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    .line 70
    :cond_e
    iget-object v0, p0, Lcom/lge/sns/SnsManager;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    return-object v0
.end method

.method public isActivated()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/sns/SnsManager;->activated:Z

    return v0
.end method

.method public setActivated(Z)V
    .registers 2
    .parameter "activated"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lge/sns/SnsManager;->activated:Z

    .line 57
    return-void
.end method
