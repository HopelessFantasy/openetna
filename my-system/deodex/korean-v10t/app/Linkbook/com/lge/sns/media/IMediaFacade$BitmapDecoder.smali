.class public Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;
.super Ljava/lang/Object;
.source "IMediaFacade.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade$MediaDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/IMediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapDecoder"
.end annotation


# static fields
.field static instance:Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 475
    new-instance v0, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;

    invoke-direct {v0}, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;-><init>()V

    sput-object v0, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;->instance:Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    return-void
.end method

.method public static getInstance()Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;
    .registers 1

    .prologue
    .line 477
    sget-object v0, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;->instance:Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;

    return-object v0
.end method


# virtual methods
.method public decodeStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "is"

    .prologue
    .line 482
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 485
    :goto_4
    return-object v1

    .line 483
    :catch_5
    move-exception v0

    .line 485
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_4
.end method
