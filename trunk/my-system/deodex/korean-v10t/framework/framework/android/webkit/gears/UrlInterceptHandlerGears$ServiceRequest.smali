.class public Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;
.super Ljava/lang/Object;
.source "UrlInterceptHandlerGears.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/UrlInterceptHandlerGears;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceRequest"
.end annotation


# instance fields
.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;->url:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;->requestHeaders:Ljava/util/Map;

    .line 85
    return-void
.end method


# virtual methods
.method public getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "header"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v1, :cond_19

    .line 102
    iget-object v1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 103
    .local v0, value:[Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 104
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 109
    .end local v0           #value:[Ljava/lang/String;
    :goto_16
    return-object v1

    .restart local v0       #value:[Ljava/lang/String;
    :cond_17
    move-object v1, v3

    .line 106
    goto :goto_16

    .end local v0           #value:[Ljava/lang/String;
    :cond_19
    move-object v1, v3

    .line 109
    goto :goto_16
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;->url:Ljava/lang/String;

    return-object v0
.end method
