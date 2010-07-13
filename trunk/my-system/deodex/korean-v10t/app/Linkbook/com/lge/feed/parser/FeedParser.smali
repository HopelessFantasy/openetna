.class public interface abstract Lcom/lge/feed/parser/FeedParser;
.super Ljava/lang/Object;
.source "FeedParser.java"


# virtual methods
.method public abstract parse(Ljava/io/Reader;)Lcom/lge/feed/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/Reader;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method
