.class Lcom/lge/sns/profile/linkbook/ProfileFacade$1;
.super Ljava/lang/Object;
.source "ProfileFacade.java"

# interfaces
.implements Lcom/lge/sns/CacheManager$CacheManagable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowMemory()V
    .registers 2

    .prologue
    .line 126
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 127
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->bitmapCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 128
    return-void
.end method
