.class Lcom/lge/sns/media/linkbook/MediaFacade$6;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Lcom/lge/newbay/client/IMedia$FileDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeFromStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "is"

    .prologue
    .line 2024
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 2027
    :goto_4
    return-object v1

    .line 2025
    :catch_5
    move-exception v0

    .line 2027
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_4
.end method
