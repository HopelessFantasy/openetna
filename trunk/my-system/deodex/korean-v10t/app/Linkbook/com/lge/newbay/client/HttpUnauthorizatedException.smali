.class public Lcom/lge/newbay/client/HttpUnauthorizatedException;
.super Lorg/apache/http/client/HttpResponseException;
.source "HttpUnauthorizatedException.java"


# static fields
.field private static final serialVersionUID:J = -0x4b35a4224ad748c7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 23
    const/16 v0, 0x191

    invoke-direct {p0, v0, p1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method
