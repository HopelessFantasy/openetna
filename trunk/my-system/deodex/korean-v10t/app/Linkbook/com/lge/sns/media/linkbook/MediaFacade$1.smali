.class Lcom/lge/sns/media/linkbook/MediaFacade$1;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Lcom/lge/sns/CacheManager$CacheManagable;


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
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowMemory()V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->rawCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 97
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->decodedCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 98
    sget-object v0, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 99
    return-void
.end method
