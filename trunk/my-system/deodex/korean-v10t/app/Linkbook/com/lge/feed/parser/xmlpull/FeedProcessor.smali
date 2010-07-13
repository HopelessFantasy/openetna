.class public interface abstract Lcom/lge/feed/parser/xmlpull/FeedProcessor;
.super Ljava/lang/Object;
.source "FeedProcessor.java"


# virtual methods
.method public abstract getFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method

.method public abstract getFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method
