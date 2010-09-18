.class Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    .line 380
    iput p2, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->isAuthLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    return-void
.end method

.method private isAuthLoggable()Z
    .registers 4

    .prologue
    .line 395
    const-string v1, "ro.secure"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, secure:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-auth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    :goto_2c
    return v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method private isLoggable()Z
    .registers 3

    .prologue
    .line 387
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iget v1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 403
    iget v0, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    iget-object v1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method
