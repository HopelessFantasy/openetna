.class public Lcom/lge/feed/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private foreignAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnknownAttrs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/feed/Tag;->foreignAttrs:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/Tag;->foreignAttrs:Ljava/util/Map;

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/lge/feed/Tag;->foreignAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/lge/feed/Tag;->getUnknownAttrs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
