.class public Landroid/content/DefaultDataHandler;
.super Ljava/lang/Object;
.source "DefaultDataHandler.java"

# interfaces
.implements Landroid/content/ContentInsertHandler;


# static fields
.field private static final ARG:Ljava/lang/String; = "arg"

.field private static final COL:Ljava/lang/String; = "col"

.field private static final DEL:Ljava/lang/String; = "del"

.field private static final POSTFIX:Ljava/lang/String; = "postfix"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final SELECT:Ljava/lang/String; = "select"

.field private static final URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mUris:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    return-void
.end method

.method private insertRow()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 128
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, u:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 130
    return-object v0
.end method

.method private parseRow(Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v6, "uri"

    .line 100
    const-string v3, "uri"

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, uriStr:Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 104
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_51

    .line 106
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uri"

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsing failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    .end local v1           #uri:Landroid/net/Uri;
    :cond_35
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_60

    .line 112
    const-string v3, "postfix"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, postfix:Ljava/lang/String;
    if-eqz v0, :cond_57

    .line 114
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .end local v0           #postfix:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_51
    :goto_51
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void

    .line 117
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v0       #postfix:Ljava/lang/String;
    :cond_57
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_51

    .line 120
    .end local v0           #postfix:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_60
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "attribute parsing failure"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "row"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 202
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 203
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "uri mismatch"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_18
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1f

    .line 206
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    .line 208
    :cond_1f
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 210
    :cond_24
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .registers 4
    .parameter "contentResolver"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p2, v0, p0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 91
    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter "contentResolver"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    invoke-static {p2, p0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 97
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 244
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 15
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v7, "row"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 136
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v7, :cond_5b

    .line 138
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 139
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "uri is empty"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_1c
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    move-result-object v3

    .line 142
    .local v3, nextUri:Landroid/net/Uri;
    if-nez v3, :cond_4d

    .line 143
    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert to uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    .restart local p0
    :cond_4d
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 148
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    .line 197
    .end local v3           #nextUri:Landroid/net/Uri;
    :goto_5a
    return-void

    .line 152
    :cond_5b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 153
    .local v0, attrLen:I
    if-nez v0, :cond_6d

    .line 155
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    iget-object v8, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 157
    :cond_6d
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    goto :goto_5a

    .line 160
    .end local v0           #attrLen:I
    :cond_71
    const-string v7, "col"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 161
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 162
    .restart local v0       #attrLen:I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_99

    .line 163
    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal attributes number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :cond_99
    const/4 v7, 0x0

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, key:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, value:Ljava/lang/String;
    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c4

    if-eqz v6, :cond_c4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c4

    .line 168
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-nez v7, :cond_be

    .line 169
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iput-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 171
    :cond_be
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 173
    :cond_c4
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "illegal attributes value"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    .end local v0           #attrLen:I
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_cc
    const-string v7, "del"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_142

    .line 176
    const-string v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 177
    .local v5, u:Landroid/net/Uri;
    if-nez v5, :cond_105

    .line 178
    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attribute "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uri"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " parsing failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    :cond_105
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    const/4 v8, 0x2

    sub-int v0, v7, v8

    .line 182
    .restart local v0       #attrLen:I
    if-lez v0, :cond_12a

    .line 183
    new-array v4, v0, [Ljava/lang/String;

    .line 184
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_111
    if-ge v1, v0, :cond_11e

    .line 185
    add-int/lit8 v7, v1, 0x2

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_111

    .line 187
    :cond_11e
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x1

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 188
    .end local v1           #i:I
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_12a
    if-nez v0, :cond_139

    .line 189
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x1

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 191
    :cond_139
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 195
    .end local v0           #attrLen:I
    .end local v5           #u:Landroid/net/Uri;
    :cond_142
    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 260
    return-void
.end method
