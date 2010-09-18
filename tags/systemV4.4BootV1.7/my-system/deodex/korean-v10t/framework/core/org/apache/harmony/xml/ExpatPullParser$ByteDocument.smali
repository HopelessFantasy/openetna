.class Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;
.super Lorg/apache/harmony/xml/ExpatPullParser$Document;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteDocument"
.end annotation


# instance fields
.field final buffer:[B

.field final in:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatPullParser;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter "in"
    .parameter "encoding"
    .parameter "processNamespaces"

    .prologue
    .line 943
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    .line 944
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/harmony/xml/ExpatPullParser$Document;-><init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/lang/String;Z)V

    .line 939
    const/16 v0, 0x1fa0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->buffer:[B

    .line 945
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->in:Ljava/io/InputStream;

    .line 946
    return-void
.end method


# virtual methods
.method buffer()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method flush(Lorg/apache/harmony/xml/ExpatParser;I)V
    .registers 7
    .parameter "parser"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 957
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->buffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_6} :catch_7

    .line 962
    return-void

    .line 958
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 959
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Error parsing document."

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;->this$0:Lorg/apache/harmony/xml/ExpatPullParser;

    invoke-direct {v1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method
