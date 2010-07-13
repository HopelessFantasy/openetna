.class Lcom/lge/newbay/client/impl/NewbayContext$3;
.super Ljava/lang/Object;
.source "NewbayContext.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/impl/NewbayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 417
    check-cast p1, Lorg/apache/http/NameValuePair;

    .end local p1
    check-cast p2, Lorg/apache/http/NameValuePair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext$3;->compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I
    .registers 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 418
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, name1:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, name2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 421
    .local v2, result:I
    if-nez v2, :cond_1d

    .line 422
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, value1:Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, value2:Ljava/lang/String;
    if-eqz v3, :cond_1e

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 426
    .end local v3           #value1:Ljava/lang/String;
    .end local v4           #value2:Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v2

    .line 424
    .restart local v3       #value1:Ljava/lang/String;
    .restart local v4       #value2:Ljava/lang/String;
    :cond_1e
    if-eqz v4, :cond_23

    const/4 v5, 0x1

    move v2, v5

    goto :goto_1d

    :cond_23
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1d
.end method
