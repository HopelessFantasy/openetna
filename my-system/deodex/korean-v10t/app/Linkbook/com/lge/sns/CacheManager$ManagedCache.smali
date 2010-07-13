.class public Lcom/lge/sns/CacheManager$ManagedCache;
.super Lcom/lge/util/LRUHashMap;
.source "CacheManager.java"

# interfaces
.implements Lcom/lge/sns/CacheManager$CacheManagable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagedCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lge/util/LRUHashMap",
        "<TK;",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;>;",
        "Lcom/lge/sns/CacheManager$CacheManagable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21b4289a38f5d3acL


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "entryMax"

    .prologue
    .line 30
    .local p0, this:Lcom/lge/sns/CacheManager$ManagedCache;,"Lcom/lge/sns/CacheManager$ManagedCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onLowMemory()V
    .registers 1

    .prologue
    .line 34
    .local p0, this:Lcom/lge/sns/CacheManager$ManagedCache;,"Lcom/lge/sns/CacheManager$ManagedCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lge/sns/CacheManager$ManagedCache;->clear()V

    .line 35
    return-void
.end method
