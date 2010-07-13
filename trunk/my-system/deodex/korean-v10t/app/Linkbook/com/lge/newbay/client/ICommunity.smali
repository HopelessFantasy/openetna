.class public interface abstract Lcom/lge/newbay/client/ICommunity;
.super Ljava/lang/Object;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/ICommunity$SnsFeatures;,
        Lcom/lge/newbay/client/ICommunity$Feature;,
        Lcom/lge/newbay/client/ICommunity$Restriction;,
        Lcom/lge/newbay/client/ICommunity$SnsAuth;,
        Lcom/lge/newbay/client/ICommunity$CommunityState;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract deactivate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCommunities(Lcom/lge/newbay/client/ICommunity$CommunityState;)Lcom/lge/feed/atom/AtomFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method

.method public abstract getFeatures(Ljava/lang/String;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract getSnsAuth(Ljava/lang/String;)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract getUserAuthenticated()Lcom/lge/feed/atom/AtomFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method
