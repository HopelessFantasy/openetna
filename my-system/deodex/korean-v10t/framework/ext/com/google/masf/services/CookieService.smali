.class public Lcom/google/masf/services/CookieService;
.super Ljava/lang/Object;


# static fields
.field private static final COOKIE_LENGTH:I = 0x8

.field static final COOKIE_PREFERENCE:Ljava/lang/String; = "InstallId"

.field private static final COOKIE_SERVICE_URI:Ljava/lang/String; = "g:c"

.field public static final INVALID_COOKIE:I = 0x0

.field private static final REQUEST_NEW_COOKIE_PREFERENCE:Ljava/lang/String; = "RequestNewInstallId"

.field private static instance:Lcom/google/masf/services/CookieService;


# instance fields
.field private cookieBeingRequested:Z

.field private mustRequestNewCookie:Z

.field private theCookie:J


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lcom/google/common/StaticUtil;->readPreferenceAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    :cond_19
    return-void
.end method

.method static synthetic access$002(Lcom/google/masf/services/CookieService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/google/masf/services/CookieService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/masf/services/CookieService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/masf/services/CookieService;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V

    return-void
.end method

.method public static declared-synchronized createNewInstanceUnitTests()V
    .registers 2

    const-class v0, Lcom/google/masf/services/CookieService;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/masf/services/CookieService;

    invoke-direct {v1}, Lcom/google/masf/services/CookieService;-><init>()V

    sput-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/masf/services/CookieService;
    .registers 2

    const-class v0, Lcom/google/masf/services/CookieService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/masf/services/CookieService;

    invoke-direct {v1}, Lcom/google/masf/services/CookieService;-><init>()V

    sput-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;

    :cond_e
    sget-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized loadCookieFromConfig()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    const-string v1, "InstallId"

    invoke-virtual {v0, v1}, Lcom/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_d
    invoke-static {v0}, Lcom/google/common/ParseHexUtil;->parseHexLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_18

    :goto_16
    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    :cond_19
    const-wide/16 v0, 0x0

    :try_start_1b
    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_16

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private persistInternalState()V
    .registers 4

    const-string v0, "InstallId"

    iget-wide v1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-static {v0, v1, v2}, Lcom/google/common/StaticUtil;->savePreferenceAsLong(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    invoke-static {v0, v1}, Lcom/google/common/StaticUtil;->savePreferenceAsBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/PersistentStore;->savePreferences()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCookie()J
    .registers 6

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    :goto_c
    monitor-exit p0

    return-wide v0

    :cond_e
    :try_start_e
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1e

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/common/StaticUtil;->readPreferenceAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    :cond_1e
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->loadCookieFromConfig()V

    :cond_27
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    :cond_30
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_33

    goto :goto_c

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestNewCookie()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V

    new-instance v1, Lcom/google/masf/protocol/PlainRequest;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/masf/services/CookieService$1;

    invoke-direct {v2, p0}, Lcom/google/masf/services/CookieService$1;-><init>(Lcom/google/masf/services/CookieService;)V

    invoke-virtual {v1, v2}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCookieForUnitTests(J)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    iput-wide p1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
