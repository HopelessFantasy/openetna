.class public abstract Lcom/lge/feed/Feed;
.super Lcom/lge/feed/ExtendableHelper;
.source "Feed.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/feed/Feed$FeedEntryCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42e5f33eefebcec4L


# instance fields
.field private encoding:Ljava/lang/String;

.field private feedType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/feed/ExtendableHelper;-><init>()V

    .line 33
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lge/feed/Feed;->encoding:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/feed/Feed;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lge/feed/Feed;->feedType:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/feed/Feed;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/feed/Feed;->feedType:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "encoding"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/feed/Feed;->encoding:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setFeedType(Ljava/lang/String;)V
    .registers 2
    .parameter "feedType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/feed/Feed;->feedType:Ljava/lang/String;

    .line 60
    return-void
.end method
