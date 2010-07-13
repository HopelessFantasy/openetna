.class public Lcom/google/wireless/gdata/parser/xml/SimplePullParser;
.super Ljava/lang/Object;
.source "SimplePullParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
    }
.end annotation


# static fields
.field public static final TEXT_TAG:Ljava/lang/String; = "![CDATA["


# instance fields
.field private mCurrentStartTag:Ljava/lang/String;

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getAttributeName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 245
    :catch_9
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_a

    move v2, p3

    .line 226
    :goto_9
    return v2

    :cond_a
    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    goto :goto_9

    .line 227
    :catch_f
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 282
    :catch_9
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 10
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_a

    move-wide v2, p3

    .line 263
    :goto_9
    return-wide v2

    :cond_a
    :try_start_a
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result-wide v2

    goto :goto_9

    .line 264
    :catch_f
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_33

    .line 205
    new-instance v1, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' attribute on \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_33
    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_a

    move-object v1, p3

    .line 191
    :goto_9
    return-object v1

    :cond_a
    move-object v1, v0

    goto :goto_9
.end method

.method public nextTag(I)Ljava/lang/String;
    .registers 3
    .parameter "parentDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->nextTagOrText(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTagOrText(ILjava/lang/StringBuffer;)Ljava/lang/String;
    .registers 9
    .parameter "parentDepth"
    .parameter "textBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 66
    :cond_1
    const/4 v2, 0x0

    .line 68
    .local v2, eventType:I
    :try_start_2
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_7} :catch_26

    move-result v2

    .line 72
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 73
    .local v0, depth:I
    iput-object v5, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 75
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2e

    add-int/lit8 v4, p1, 0x1

    if-ne v0, v4, :cond_2e

    .line 76
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 117
    :goto_25
    return-object v4

    .line 69
    .end local v0           #depth:I
    :catch_26
    move-exception v4

    move-object v1, v4

    .line 70
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v4, v1}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 96
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #depth:I
    :cond_2e
    const/4 v4, 0x3

    if-ne v2, v4, :cond_35

    if-ne v0, p1, :cond_35

    move-object v4, v5

    .line 104
    goto :goto_25

    .line 107
    :cond_35
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    if-nez p1, :cond_3c

    move-object v4, v5

    .line 108
    goto :goto_25

    .line 111
    :cond_3c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    if-ne v0, p1, :cond_1

    .line 112
    if-eqz p2, :cond_1

    .line 115
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v4, "![CDATA["

    goto :goto_25
.end method

.method public numAttributes()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public readRemainingText(ILjava/lang/StringBuffer;)V
    .registers 4
    .parameter "parentDepth"
    .parameter "textBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/SimplePullParser;->nextTagOrText(ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    return-void
.end method
