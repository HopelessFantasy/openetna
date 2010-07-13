.class public interface abstract Lcom/lge/feed/Extendable;
.super Ljava/lang/Object;
.source "Extendable.java"


# virtual methods
.method public abstract getKnownMarkup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnknownAttrs()Ljava/util/Map;
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
.end method

.method public abstract setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUnknownMarkup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;)V"
        }
    .end annotation
.end method
