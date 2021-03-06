.class public Lorg/apache/harmony/xml/ExpatPullParser;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatPullParser$1;,
        Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;,
        Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;,
        Lorg/apache/harmony/xml/ExpatPullParser$Document;,
        Lorg/apache/harmony/xml/ExpatPullParser$EndDocumentEvent;,
        Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;,
        Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;,
        Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;,
        Lorg/apache/harmony/xml/ExpatPullParser$StartDocumentEvent;,
        Lorg/apache/harmony/xml/ExpatPullParser$Event;,
        Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field public static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final NOT_A_START_TAG:Ljava/lang/String; = "This is not a start tag."


# instance fields
.field private document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

.field private processNamespaces:Z

.field private relaxed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->relaxed:Z

    .line 937
    return-void
.end method

.method static synthetic access$400(Lorg/apache/harmony/xml/ExpatPullParser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->relaxed:Z

    return v0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "entityName"
    .parameter "replacementText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributeCount()I
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 283
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 198
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->getDepth()I

    move-result v0

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getType()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 83
    if-nez p1, :cond_a

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null feature name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 165
    if-nez p1, :cond_4

    .line 167
    const-string p1, ""

    .line 170
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uriFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .registers 3
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->countAt(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 5
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v2, v2, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iget-object v2, v2, Lorg/apache/harmony/xml/ExpatPullParser$Event;->namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->prefixAt(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, prefix:Ljava/lang/String;
    const-string v2, ""

    if-eq v1, v2, :cond_14

    const/4 v2, 0x1

    move v0, v2

    .line 156
    .local v0, hasPrefix:Z
    :goto_10
    if-eqz v0, :cond_17

    move-object v2, v1

    :goto_13
    return-object v2

    .line 155
    .end local v0           #hasPrefix:Z
    :cond_14
    const/4 v2, 0x0

    move v0, v2

    goto :goto_10

    .line 156
    .restart local v0       #hasPrefix:Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->uriAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 223
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v1, v1, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public getTextCharacters([I)[C
    .registers 7
    .parameter "holderForStartAndLength"

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v3, v3, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v3}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 231
    .local v2, length:I
    new-array v1, v2, [C

    .line 232
    .local v1, characters:[C
    invoke-virtual {v0, v4, v2, v1, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 234
    aput v4, p1, v4

    .line 235
    const/4 v3, 0x1

    aput v2, p1, v3

    .line 237
    return-object v1
.end method

.method public isAttributeDefault(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->isCurrentElementEmpty()Z

    move-result v0

    return v0
.end method

.method public isNamespaceProcessingEnabled()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    return v0
.end method

.method public isWhitespace()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 202
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_10

    .line 203
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Not on text."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    move v3, v5

    .line 219
    :goto_1b
    return v3

    .line 212
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 213
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    if-ge v0, v1, :cond_32

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 215
    const/4 v3, 0x0

    goto :goto_1b

    .line 213
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_32
    move v3, v5

    .line 219
    goto :goto_1b
.end method

.method public next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->dequeue()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->next()I

    move-result v0

    .line 340
    .local v0, eventType:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 341
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->next()I

    move-result v0

    .line 343
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 344
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Expected start or end tag"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :cond_20
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v1, v1, Lorg/apache/harmony/xml/ExpatPullParser$Document;->currentEvent:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 327
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Not on start tag."

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_13
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->dequeue()I

    move-result v0

    .line 330
    .local v0, next:I
    packed-switch v0, :pswitch_data_42

    .line 333
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/harmony/xml/ExpatPullParser;->TYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :pswitch_39
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 332
    :goto_3d
    return-object v1

    :pswitch_3e
    const-string v1, ""

    goto :goto_3d

    .line 330
    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method public nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    if-eqz p3, :cond_43

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 320
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/xml/ExpatPullParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_43
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_a

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null feature name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 63
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    .line 76
    :cond_14
    :goto_14
    return-void

    .line 67
    :cond_15
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->relaxed:Z

    goto :goto_14

    .line 73
    :cond_21
    if-nez p2, :cond_3b

    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 79
    :cond_3b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "in"
    .parameter "encodingName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;

    iget-boolean v1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/harmony/xml/ExpatPullParser$ByteDocument;-><init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/io/InputStream;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    .line 132
    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;

    iget-boolean v1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/harmony/xml/ExpatPullParser$CharDocument;-><init>(Lorg/apache/harmony/xml/ExpatPullParser;Ljava/io/Reader;Z)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser;->document:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    .line 127
    return-void
.end method

.method public setNamespaceProcessingEnabled(Z)V
    .registers 2
    .parameter "processNamespaces"

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/apache/harmony/xml/ExpatPullParser;->processNamespaces:Z

    .line 108
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_a

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null feature name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Properties aren\'t supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
