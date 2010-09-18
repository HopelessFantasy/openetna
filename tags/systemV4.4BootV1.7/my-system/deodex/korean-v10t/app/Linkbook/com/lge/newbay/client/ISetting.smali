.class public interface abstract Lcom/lge/newbay/client/ISetting;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/ISetting$Alert;,
        Lcom/lge/newbay/client/ISetting$Resource;,
        Lcom/lge/newbay/client/ISetting$UserFilter;,
        Lcom/lge/newbay/client/ISetting$TimeRange;,
        Lcom/lge/newbay/client/ISetting$Feature;,
        Lcom/lge/newbay/client/ISetting$Sns;
    }
.end annotation


# virtual methods
.method public abstract createAlert(Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/lge/newbay/client/ISetting$TimeRange;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deleteAlert(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAlert(Ljava/lang/String;)Lcom/lge/newbay/client/ISetting$Alert;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract getAlerts()Lcom/lge/feed/atom/AtomFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method

.method public abstract getFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract updateAlert(Lcom/lge/newbay/client/ISetting$Alert;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateFeatures(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
