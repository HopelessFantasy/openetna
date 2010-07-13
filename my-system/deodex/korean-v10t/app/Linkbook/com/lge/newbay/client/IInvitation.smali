.class public interface abstract Lcom/lge/newbay/client/IInvitation;
.super Ljava/lang/Object;
.source "IInvitation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/IInvitation$SnsInvitation;,
        Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;,
        Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;,
        Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;
    }
.end annotation


# virtual methods
.method public abstract getInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IInvitation$SnsInvitation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract getInvitations(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation
.end method

.method public abstract resendInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract revokInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
