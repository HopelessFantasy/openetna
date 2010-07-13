.class public Lcom/lge/feed/parser/FeedParseException;
.super Ljava/lang/Exception;
.source "FeedParseException.java"


# static fields
.field private static final serialVersionUID:J = -0x36cf927ef7f4de27L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
