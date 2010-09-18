.class Landroid/webkit/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final BLOCK_CACHE_TICKER:I = 0x4

.field private static final CACHE_TICKER:I = 0x3

.field private static final CACHE_TICKER_INTERVAL:I = 0xea60

.field private static final INITIALIZE:I = 0x0

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_CACHE_TICKER:I = 0x5

.field private static final RESUME_PRIORITY:I = 0x2

.field private static mCacheTickersBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 418
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewCore$WebCoreThread;->mCacheTickersBlocked:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 407
    sget-boolean v0, Landroid/webkit/WebViewCore$WebCoreThread;->mCacheTickersBlocked:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 407
    sput-boolean p0, Landroid/webkit/WebViewCore$WebCoreThread;->mCacheTickersBlocked:Z

    return p0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const-class v1, Landroid/webkit/WebViewCore;

    .line 421
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 422
    invoke-static {}, Landroid/webkit/WebViewCore;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 423
    const-class v0, Landroid/webkit/WebViewCore;

    monitor-enter v1

    .line 424
    :try_start_f
    new-instance v1, Landroid/webkit/WebViewCore$WebCoreThread$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkit/WebViewCore$WebCoreThread;)V

    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$302(Landroid/os/Handler;)Landroid/os/Handler;

    .line 469
    const-class v1, Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 470
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 471
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 472
    return-void

    .line 470
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method
