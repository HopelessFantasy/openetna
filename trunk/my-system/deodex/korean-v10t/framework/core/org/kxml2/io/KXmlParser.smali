.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final LEGACY:I = 0x3e7

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECL:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private column:I

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private entityMap:Ljava/util/Hashtable;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private line:I

.field private location:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private peek:[I

.field private peekCount:I

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private srcBuf:[C

.field private srcCount:I

.field private srcPos:I

.field private stackMismatch:I

.field private standalone:Ljava/lang/Boolean;

.field private token:Z

.field private txtBuf:[C

.field private txtPos:I

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;

.field private wasCR:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x10

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 68
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 82
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    .line 102
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    .line 104
    return-void
.end method

.method private final adjustNsp()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_89

    .line 122
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 123
    .local v1, attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 126
    .local v4, cut:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2e

    .line 127
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_22
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 138
    const/4 v0, 0x1

    .line 119
    .end local v7           #prefix:Ljava/lang/String;
    :cond_2b
    :goto_2b
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 130
    :cond_2e
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 131
    move-object v7, v1

    .line 132
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_22

    .line 141
    :cond_39
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 143
    .local v6, j:I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 144
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 145
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 147
    if-eqz v1, :cond_74

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 148
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 154
    :cond_74
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    add-int/lit8 v5, v5, -0x4

    goto :goto_2b

    .line 165
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_89
    if-eqz v0, :cond_118

    .line 166
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    sub-int v5, v8, v9

    :goto_92
    if-ltz v5, :cond_118

    .line 168
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 169
    .restart local v1       #attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 171
    .restart local v4       #cut:I
    if-nez v4, :cond_c9

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_c9

    .line 172
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_c9
    const/4 v8, -0x1

    if-eq v4, v8, :cond_114

    .line 176
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_104

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_104

    .line 183
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 186
    :cond_104
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 187
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 188
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 166
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    :cond_114
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_92

    .line 206
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    :cond_118
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 208
    .restart local v4       #cut:I
    if-nez v4, :cond_13a

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 211
    :cond_13a
    const/4 v8, -0x1

    if-eq v4, v8, :cond_150

    .line 212
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 213
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 216
    :cond_150
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 218
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_17c

    .line 219
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_178

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 221
    :cond_178
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 224
    :cond_17c
    return v0
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 228
    array-length v1, p1

    if-lt v1, p2, :cond_6

    move-object v1, p1

    .line 232
    :goto_5
    return-object v1

    .line 230
    :cond_6
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 231
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 232
    goto :goto_5
.end method

.method private final error(Ljava/lang/String;)V
    .registers 4
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_1e

    .line 237
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 242
    :cond_1d
    :goto_1d
    return-void

    .line 241
    :cond_1e
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private final exception(Ljava/lang/String;)V
    .registers 6
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 245
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_10

    move-object v1, p1

    :goto_b
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method private final get(I)Ljava/lang/String;
    .registers 5
    .parameter "pos"

    .prologue
    .line 578
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final isProp(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 5
    .parameter "n1"
    .parameter "prop"
    .parameter "n2"

    .prologue
    .line 107
    const-string v0, "http://xmlpull.org/v1/doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_9
    return v0

    .line 109
    :cond_a
    if-eqz p2, :cond_17

    .line 110
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    .line 112
    :cond_17
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method private final nextImpl()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 257
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v2, :cond_e

    .line 258
    const-string v2, "No Input specified"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 260
    :cond_e
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v7, :cond_17

    .line 261
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 264
    :cond_17
    iput v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 269
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v2, :cond_22

    .line 270
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 271
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 338
    :cond_21
    :goto_21
    :pswitch_21
    return-void

    .line 276
    :cond_22
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 278
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 280
    :cond_3b
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 281
    const/16 v2, 0x9

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_21

    .line 286
    .end local v0           #i:I
    :cond_42
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v2, :cond_9c

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-gtz v2, :cond_54

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v2

    if-ne v2, v8, :cond_9c

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-lez v2, :cond_9c

    .line 288
    :cond_54
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v2, v4

    shl-int/lit8 v1, v2, 0x2

    .line 289
    .local v1, sp:I
    iput v7, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 290
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 293
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-eq v2, v4, :cond_92

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing end tag /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inserted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 295
    :cond_92
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    if-lez v2, :cond_21

    .line 296
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    goto :goto_21

    .line 300
    .end local v1           #sp:I
    :cond_9c
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 301
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 302
    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v2

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 307
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v2, :pswitch_data_e6

    .line 336
    :pswitch_ad
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->parseLegacy(Z)I

    move-result v2

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 337
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v3, 0x3e6

    if-eq v2, v3, :cond_17

    goto/16 :goto_21

    .line 310
    :pswitch_bd
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    goto/16 :goto_21

    .line 314
    :pswitch_c2
    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    goto/16 :goto_21

    .line 318
    :pswitch_c7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->parseEndTag()V

    goto/16 :goto_21

    .line 325
    :pswitch_cc
    const/16 v2, 0x3c

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-nez v3, :cond_e3

    move v3, v4

    :goto_d3
    invoke-direct {p0, v2, v3}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 326
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_21

    .line 327
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v2, :cond_21

    .line 328
    const/4 v2, 0x7

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto/16 :goto_21

    :cond_e3
    move v3, v5

    .line 325
    goto :goto_d3

    .line 307
    nop

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_21
        :pswitch_c2
        :pswitch_c7
        :pswitch_cc
        :pswitch_ad
        :pswitch_bd
    .end packed-switch
.end method

.method private final parseDoctype(Z)V
    .registers 6
    .parameter "push"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v1, 0x1

    .line 480
    .local v1, nesting:I
    const/4 v2, 0x0

    .line 485
    .local v2, quoted:Z
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 486
    .local v0, i:I
    sparse-switch v0, :sswitch_data_2a

    .line 508
    :cond_9
    :goto_9
    if-eqz p1, :cond_2

    .line 509
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_2

    .line 489
    :sswitch_f
    const-string v3, "Unexpected EOF"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 504
    :goto_14
    return-void

    .line 493
    :sswitch_15
    if-nez v2, :cond_1a

    const/4 v3, 0x1

    move v2, v3

    .line 494
    :goto_19
    goto :goto_9

    .line 493
    :cond_1a
    const/4 v3, 0x0

    move v2, v3

    goto :goto_19

    .line 497
    :sswitch_1d
    if-nez v2, :cond_9

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 502
    :sswitch_22
    if-nez v2, :cond_9

    .line 503
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_9

    goto :goto_14

    .line 486
    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_f
        0x27 -> :sswitch_15
        0x3c -> :sswitch_1d
        0x3e -> :sswitch_22
    .end sparse-switch
.end method

.method private final parseEndTag()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 518
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 519
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 520
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 521
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 522
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 524
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int/lit8 v1, v2, 0x2

    .line 526
    .local v1, sp:I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_28

    .line 527
    const-string v2, "element stack empty"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 528
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 554
    :goto_27
    return-void

    .line 532
    :cond_28
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 537
    move v0, v1

    .line 538
    .local v0, probe:I
    :goto_5f
    if-ltz v0, :cond_80

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 539
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 540
    add-int/lit8 v0, v0, -0x4

    goto :goto_5f

    .line 543
    :cond_80
    if-gez v0, :cond_88

    .line 544
    const/4 v2, 0x0

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->stackMismatch:I

    .line 546
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_27

    .line 551
    .end local v0           #probe:I
    :cond_88
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 552
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 553
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_27
.end method

.method private final parseLegacy(Z)I
    .registers 13
    .parameter "push"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 346
    const-string v4, ""

    .line 349
    .local v4, req:Ljava/lang/String;
    const/4 v3, 0x0

    .line 351
    .local v3, prev:I
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 352
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 354
    .local v0, c:I
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_12e

    .line 355
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x78

    if-eq v8, v9, :cond_20

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x58

    if-ne v8, v9, :cond_119

    :cond_20
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_32

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_119

    .line 358
    :cond_32
    if-eqz p1, :cond_44

    .line 359
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 360
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 362
    :cond_44
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 363
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 365
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_5c

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_119

    :cond_5c
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_119

    .line 367
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->line:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6f

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->column:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_74

    .line 368
    :cond_6f
    const-string v8, "PI must not start with xml"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 370
    :cond_74
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    .line 372
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_8a

    const-string v8, "version"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8f

    .line 373
    :cond_8a
    const-string v8, "version expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 375
    :cond_8f
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 377
    const/4 v2, 0x1

    .line 379
    .local v2, pos:I
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_b1

    const-string v8, "encoding"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 381
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 382
    add-int/lit8 v2, v2, 0x1

    .line 385
    :cond_b1
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_df

    const-string v8, "standalone"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 387
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v9, v2, 0x4

    add-int/lit8 v9, v9, 0x3

    aget-object v6, v8, v9

    .line 388
    .local v6, st:Ljava/lang/String;
    const-string v8, "yes"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f1

    .line 389
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 394
    :goto_dd
    add-int/lit8 v2, v2, 0x1

    .line 397
    .end local v6           #st:Ljava/lang/String;
    :cond_df
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v2, v8, :cond_e8

    .line 398
    const-string v8, "illegal xmldecl"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 400
    :cond_e8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 401
    const/4 v8, 0x0

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 403
    const/16 v8, 0x3e6

    .line 471
    .end local v2           #pos:I
    :goto_f0
    return v8

    .line 390
    .restart local v2       #pos:I
    .restart local v6       #st:Ljava/lang/String;
    :cond_f1
    const-string v8, "no"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 391
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_dd

    .line 393
    :cond_102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal standalone value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_dd

    .line 411
    .end local v2           #pos:I
    .end local v6           #st:Ljava/lang/String;
    :cond_119
    const/16 v7, 0x3f

    .line 412
    .local v7, term:I
    const/16 v5, 0x8

    .line 437
    .local v5, result:I
    :goto_11d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_171

    .line 438
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    .line 414
    .end local v1           #i:I
    .end local v5           #result:I
    .end local v7           #term:I
    :cond_12e
    const/16 v8, 0x21

    if-ne v0, v8, :cond_158

    .line 415
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_142

    .line 416
    const/16 v5, 0x9

    .line 417
    .restart local v5       #result:I
    const-string v4, "--"

    .line 418
    const/16 v7, 0x2d

    .restart local v7       #term:I
    goto :goto_11d

    .line 420
    .end local v5           #result:I
    .end local v7           #term:I
    :cond_142
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_152

    .line 421
    const/4 v5, 0x5

    .line 422
    .restart local v5       #result:I
    const-string v4, "[CDATA["

    .line 423
    const/16 v7, 0x5d

    .line 424
    .restart local v7       #term:I
    const/4 p1, 0x1

    goto :goto_11d

    .line 427
    .end local v5           #result:I
    .end local v7           #term:I
    :cond_152
    const/16 v5, 0xa

    .line 428
    .restart local v5       #result:I
    const-string v4, "DOCTYPE"

    .line 429
    const/4 v7, -0x1

    .restart local v7       #term:I
    goto :goto_11d

    .line 433
    .end local v5           #result:I
    .end local v7           #term:I
    :cond_158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 434
    const/16 v8, 0x9

    goto :goto_f0

    .line 440
    .restart local v1       #i:I
    .restart local v5       #result:I
    .restart local v7       #term:I
    :cond_171
    const/16 v8, 0xa

    if-ne v5, v8, :cond_17c

    .line 441
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->parseDoctype(Z)V

    :cond_178
    :goto_178
    move v8, v5

    .line 471
    goto/16 :goto_f0

    .line 458
    :cond_17b
    move v3, v0

    .line 444
    :cond_17c
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 445
    const/4 v8, -0x1

    if-ne v0, v8, :cond_18c

    .line 446
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 447
    const/16 v8, 0x9

    goto/16 :goto_f0

    .line 450
    :cond_18c
    if-eqz p1, :cond_191

    .line 451
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 453
    :cond_191
    const/16 v8, 0x3f

    if-eq v7, v8, :cond_197

    if-ne v0, v7, :cond_17b

    :cond_197
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    if-ne v8, v7, :cond_17b

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_17b

    .line 461
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1b4

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_1b4

    .line 462
    const-string v8, "illegal comment delimiter: --->"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 464
    :cond_1b4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 465
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 467
    if-eqz p1, :cond_178

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_178

    .line 468
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    goto :goto_178
.end method

.method private final parseStartTag(Z)V
    .registers 15
    .parameter "xmldecl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 607
    if-nez p1, :cond_5

    .line 608
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 609
    :cond_5
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 610
    const/4 v8, 0x0

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 613
    :cond_e
    :goto_e
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 615
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v2

    .line 617
    .local v2, c:I
    if-eqz p1, :cond_25

    .line 618
    const/16 v8, 0x3f

    if-ne v2, v8, :cond_a0

    .line 619
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 620
    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 721
    :goto_24
    return-void

    .line 625
    :cond_25
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_96

    .line 626
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 627
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 628
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 629
    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 690
    :goto_37
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    shl-int/lit8 v7, v8, 0x2

    .line 692
    .local v7, sp:I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 693
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 695
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v9, v9

    if-lt v8, v9, :cond_6a

    .line 696
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v8, v8, 0x4

    new-array v1, v8, [I

    .line 697
    .local v1, bigger:[I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v11, v11

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 701
    .end local v1           #bigger:[I
    :cond_6a
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget v10, v10, v11

    aput v10, v8, v9

    .line 713
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v8, :cond_145

    .line 714
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    .line 718
    :goto_7f
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v9, v8, v7

    .line 719
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 720
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x2

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    goto :goto_24

    .line 633
    .end local v7           #sp:I
    :cond_96
    const/16 v8, 0x3e

    if-ne v2, v8, :cond_a0

    if-nez p1, :cond_a0

    .line 634
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_37

    .line 639
    :cond_a0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_aa

    .line 640
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 645
    :cond_aa
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, attrName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_bb

    .line 648
    const-string v8, "attr name expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 653
    :cond_bb
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v4, v8, 0x2

    .line 655
    .local v4, i:I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 657
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    const-string v9, ""

    aput-object v9, v8, v4

    .line 658
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v9, 0x0

    aput-object v9, v8, v5

    .line 659
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aput-object v0, v8, v4

    .line 661
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 663
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_10c

    .line 664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attr.value missing f. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 665
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v9, "1"

    aput-object v9, v8, v5

    goto/16 :goto_e

    .line 668
    :cond_10c
    const/16 v8, 0x3d

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 669
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 670
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v3

    .line 672
    .local v3, delimiter:I
    const/16 v8, 0x27

    if-eq v3, v8, :cond_141

    const/16 v8, 0x22

    if-eq v3, v8, :cond_141

    .line 673
    const-string v8, "attr value delimiter missing!"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 674
    const/16 v3, 0x20

    .line 679
    :goto_128
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 680
    .local v6, p:I
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 682
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 683
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 685
    const/16 v8, 0x20

    if-eq v3, v8, :cond_e

    .line 686
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto/16 :goto_e

    .line 677
    .end local v6           #p:I
    :cond_141
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_128

    .line 716
    .end local v0           #attrName:Ljava/lang/String;
    .end local v3           #delimiter:I
    .end local v5           #i:I
    .restart local v7       #sp:I
    :cond_145
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_7f
.end method

.method private final peek(I)I
    .registers 9
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 867
    :goto_4
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-lt p1, v1, :cond_6d

    .line 871
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v1, v1

    if-gt v1, v5, :cond_24

    .line 872
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 885
    .local v0, nw:I
    :goto_13
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4f

    .line 886
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    .line 887
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    goto :goto_4

    .line 873
    .end local v0           #nw:I
    :cond_24
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-ge v1, v2, :cond_35

    .line 874
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    aget-char v0, v1, v2

    .restart local v0       #nw:I
    goto :goto_13

    .line 876
    .end local v0           #nw:I
    :cond_35
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 877
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-gtz v1, :cond_4a

    .line 878
    const/4 v0, -0x1

    .line 882
    .restart local v0       #nw:I
    :goto_47
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    goto :goto_13

    .line 880
    .end local v0           #nw:I
    :cond_4a
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    aget-char v0, v1, v4

    .restart local v0       #nw:I
    goto :goto_47

    .line 890
    :cond_4f
    if-ne v0, v6, :cond_62

    .line 891
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    if-nez v1, :cond_5f

    .line 892
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    .line 897
    :cond_5f
    :goto_5f
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    goto :goto_4

    .line 895
    :cond_62
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v0, v1, v2

    goto :goto_5f

    .line 901
    .end local v0           #nw:I
    :cond_6d
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v1, v1, p1

    return v1
.end method

.method private final peekType()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 573
    const/4 v0, 0x4

    :goto_a
    return v0

    :sswitch_b
    move v0, v1

    .line 559
    goto :goto_a

    .line 561
    :sswitch_d
    const/4 v0, 0x6

    goto :goto_a

    .line 563
    :sswitch_f
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_2c

    .line 570
    const/4 v0, 0x2

    goto :goto_a

    .line 565
    :sswitch_18
    const/4 v0, 0x3

    goto :goto_a

    .line 568
    :sswitch_1a
    const/16 v0, 0x3e7

    goto :goto_a

    .line 557
    nop

    :sswitch_data_1e
    .sparse-switch
        -0x1 -> :sswitch_b
        0x26 -> :sswitch_d
        0x3c -> :sswitch_f
    .end sparse-switch

    .line 563
    :sswitch_data_2c
    .sparse-switch
        0x21 -> :sswitch_1a
        0x2f -> :sswitch_18
        0x3f -> :sswitch_1a
    .end sparse-switch
.end method

.method private final push(I)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    const/16 v2, 0x20

    if-gt p1, v2, :cond_31

    const/4 v2, 0x1

    :goto_8
    and-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 593
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_25

    .line 594
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [C

    .line 595
    .local v0, bigger:[C
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 599
    .end local v0           #bigger:[C
    :cond_25
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 600
    return-void

    :cond_31
    move v2, v3

    .line 591
    goto :goto_8
.end method

.method private final pushEntity()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x23

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 730
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 733
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 736
    .local v3, pos:I
    :goto_d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 737
    .local v0, c:I
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_46

    .line 758
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, code:Ljava/lang/String;
    sub-int v5, v3, v7

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 760
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-eqz v5, :cond_28

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_28

    .line 761
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 764
    :cond_28
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8a

    .line 765
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_80

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    .line 769
    :goto_42
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 785
    .end local v1           #code:Ljava/lang/String;
    :cond_45
    :goto_45
    return-void

    .line 739
    :cond_46
    const/16 v5, 0x80

    if-ge v0, v5, :cond_7c

    const/16 v5, 0x30

    if-lt v0, v5, :cond_52

    const/16 v5, 0x39

    if-le v0, v5, :cond_7c

    :cond_52
    const/16 v5, 0x61

    if-lt v0, v5, :cond_5a

    const/16 v5, 0x7a

    if-le v0, v5, :cond_7c

    :cond_5a
    const/16 v5, 0x41

    if-lt v0, v5, :cond_62

    const/16 v5, 0x5a

    if-le v0, v5, :cond_7c

    :cond_62
    const/16 v5, 0x5f

    if-eq v0, v5, :cond_7c

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_7c

    if-eq v0, v9, :cond_7c

    .line 746
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v5, :cond_75

    .line 747
    const-string v5, "unterminated entity ref"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 750
    :cond_75
    const/4 v5, -0x1

    if-eq v0, v5, :cond_45

    .line 751
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_45

    .line 755
    :cond_7c
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_d

    .line 765
    .restart local v1       #code:Ljava/lang/String;
    :cond_80
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    goto :goto_42

    .line 773
    :cond_8a
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 775
    .local v4, result:Ljava/lang/String;
    if-nez v4, :cond_bc

    move v5, v7

    :goto_95
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 777
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v5, :cond_be

    .line 778
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-nez v5, :cond_45

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unresolved: &"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_45

    :cond_bc
    move v5, v8

    .line 775
    goto :goto_95

    .line 782
    :cond_be
    const/4 v2, 0x0

    .local v2, i:I
    :goto_bf
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_45

    .line 783
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf
.end method

.method private final pushText(IZ)V
    .registers 11
    .parameter "delimiter"
    .parameter "resolveEntities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x3e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x20

    .line 796
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    .line 797
    .local v1, next:I
    const/4 v0, 0x0

    .line 799
    .local v0, cbrCount:I
    :goto_d
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    if-eq v1, p1, :cond_18

    .line 801
    if-ne p1, v3, :cond_19

    .line 802
    if-le v1, v3, :cond_18

    if-ne v1, v6, :cond_19

    .line 828
    :cond_18
    return-void

    .line 805
    :cond_19
    const/16 v2, 0x26

    if-ne v1, v2, :cond_36

    .line 806
    if-eqz p2, :cond_18

    .line 809
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    .line 818
    :goto_22
    if-ne v1, v6, :cond_2d

    if-lt v0, v5, :cond_2d

    if-eq p1, v7, :cond_2d

    .line 819
    const-string v2, "Illegal: ]]>"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 821
    :cond_2d
    if-ne v1, v7, :cond_4d

    .line 822
    add-int/lit8 v0, v0, 0x1

    .line 826
    :goto_31
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    goto :goto_d

    .line 811
    :cond_36
    const/16 v2, 0xa

    if-ne v1, v2, :cond_45

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v5, :cond_45

    .line 812
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 813
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_22

    .line 816
    :cond_45
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_22

    .line 824
    :cond_4d
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private final read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 840
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-nez v1, :cond_22

    .line 841
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 850
    .local v0, result:I
    :goto_a
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 852
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 854
    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 856
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 857
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 860
    :cond_21
    return v0

    .line 843
    .end local v0           #result:I
    :cond_22
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v0, v1, v3

    .line 844
    .restart local v0       #result:I
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v2, v2, v4

    aput v2, v1, v3

    goto :goto_a
.end method

.method private final read(C)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 833
    .local v0, a:I
    if-eq v0, p1, :cond_2d

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 835
    :cond_2d
    return-void
.end method

.method private final readName()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v4, 0x0

    .line 907
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 908
    .local v1, pos:I
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 909
    .local v0, c:I
    const/16 v3, 0x61

    if-lt v0, v3, :cond_17

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2c

    :cond_17
    if-lt v0, v6, :cond_1b

    if-le v0, v7, :cond_2c

    :cond_1b
    if-eq v0, v8, :cond_2c

    if-eq v0, v5, :cond_2c

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_2c

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v3, :cond_2c

    .line 915
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 918
    :cond_2c
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 919
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 928
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3f

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2c

    :cond_3f
    if-lt v0, v6, :cond_43

    if-le v0, v7, :cond_2c

    :cond_43
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4b

    const/16 v3, 0x39

    if-le v0, v3, :cond_2c

    :cond_4b
    if-eq v0, v8, :cond_2c

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2c

    if-eq v0, v5, :cond_2c

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2c

    const/16 v3, 0xb7

    if-ge v0, v3, :cond_2c

    .line 930
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, result:Ljava/lang/String;
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 932
    return-object v2
.end method

.method private final skip()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 939
    .local v0, c:I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_c

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 943
    :cond_c
    return-void

    .line 941
    :cond_d
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "entity"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    .line 1115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "entity replacement text must be defined after setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_c
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    return-void
.end method

.method public getAttributeCount()I
    .registers 2

    .prologue
    .line 1272
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1290
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1291
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1292
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1284
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1285
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1286
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1296
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1297
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1298
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1276
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1302
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_a

    .line 1303
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1304
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 1309
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_2b

    .line 1310
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p1, :cond_21

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1312
    :cond_21
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 1315
    :goto_27
    return-object v1

    .line 1309
    :cond_28
    add-int/lit8 v0, v0, -0x4

    goto :goto_7

    .line 1315
    :cond_2b
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 1222
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->column:I

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 1162
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

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
    .line 1319
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    .line 1100
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1101
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1105
    :goto_b
    return v0

    .line 1102
    :cond_c
    const-string v0, "relaxed"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1103
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_b

    :cond_17
    move v0, v1

    .line 1105
    goto :goto_b
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 1218
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prefix"

    .prologue
    .line 1145
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1146
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1158
    :goto_a
    return-object v1

    .line 1147
    :cond_b
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1148
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_a

    .line 1150
    :cond_16
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_21
    if-ltz v0, :cond_46

    .line 1151
    if-nez p1, :cond_32

    .line 1152
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_43

    .line 1153
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_a

    .line 1155
    :cond_32
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1156
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_a

    .line 1150
    :cond_43
    add-int/lit8 v0, v0, -0x2

    goto :goto_21

    .line 1158
    :cond_46
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getNamespaceCount(I)I
    .registers 3
    .parameter "depth"

    .prologue
    .line 1130
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_a

    .line 1131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1132
    :cond_a
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 1140
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x10

    const/4 v6, 0x3

    const-string v10, " in "

    const-string v7, ":"

    .line 1167
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_e2

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_18
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1171
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_27

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_122

    .line 1172
    :cond_27
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_30

    .line 1173
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    :cond_30
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1175
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_3e

    .line 1176
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1178
    :cond_3e
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_6c

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    :cond_6c
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1182
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 1183
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_76
    if-ge v2, v1, :cond_e6

    .line 1184
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1185
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_b3

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    :cond_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    add-int/lit8 v2, v2, 0x4

    goto :goto_76

    .line 1167
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_e2
    const-string v4, "unknown"

    goto/16 :goto_18

    .line 1191
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_e6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1205
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_eb
    :goto_eb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->column:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v4, :cond_164

    .line 1207
    const-string v4, " in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1214
    :cond_11d
    :goto_11d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1193
    :cond_122
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_eb

    .line 1194
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_134

    .line 1195
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_eb

    .line 1196
    :cond_134
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_13e

    .line 1197
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_eb

    .line 1199
    :cond_13e
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1200
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_160

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1202
    :cond_160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_eb

    .line 1210
    .end local v3           #text:Ljava/lang/String;
    :cond_164
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_11d

    .line 1211
    const-string v4, " in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11d
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "property"

    .prologue
    const/4 v1, 0x1

    .line 1120
    const-string v0, "xmldecl-version"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1121
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1126
    :goto_b
    return-object v0

    .line 1122
    :cond_c
    const-string v0, "xmldecl-standalone"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1123
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_b

    .line 1124
    :cond_17
    const-string v0, "location"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1125
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    goto :goto_b

    :cond_26
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1126
    :cond_2d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1232
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getTextCharacters([I)[C
    .registers 7
    .parameter "poslen"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1237
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_27

    .line 1238
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    .line 1239
    aput v2, p1, v2

    .line 1240
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, p1, v3

    .line 1241
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1250
    :goto_1d
    return-object v0

    .line 1243
    :cond_1e
    aput v2, p1, v2

    .line 1244
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    aput v0, p1, v3

    .line 1245
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    goto :goto_1d

    .line 1248
    :cond_27
    aput v4, p1, v2

    .line 1249
    aput v4, p1, v3

    .line 1250
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public isAttributeDefault(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 1280
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1266
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1267
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1268
    :cond_a
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1226
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    .line 1227
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1228
    :cond_14
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1324
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1326
    const/16 v0, 0x270f

    .line 1327
    .local v0, minType:I
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1330
    :cond_b
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1331
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ge v1, v0, :cond_14

    .line 1332
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1336
    :cond_14
    const/4 v1, 0x6

    if-gt v0, v1, :cond_b

    if-lt v0, v2, :cond_1f

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v1

    if-ge v1, v2, :cond_b

    .line 1338
    :cond_1f
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1339
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-le v1, v2, :cond_27

    .line 1340
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1342
    :cond_27
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1
.end method

.method public nextTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1361
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_f

    .line 1362
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1364
    :cond_f
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 1365
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1367
    :cond_1e
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1381
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 1382
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1384
    :cond_a
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1388
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    .line 1389
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1395
    :goto_19
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    .line 1396
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1398
    :cond_23
    return-object v0

    .line 1393
    .end local v0           #result:Ljava/lang/String;
    :cond_24
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_19
.end method

.method public nextToken()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1347
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1348
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1350
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1351
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1352
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
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
    .line 1373
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1c

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_10
    if-eqz p3, :cond_4a

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1376
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1378
    :cond_4a
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1403
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1404
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1409
    :goto_a
    return-void

    .line 1405
    :cond_b
    const/4 v0, 0x0

    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1406
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_a

    .line 1408
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 22
    .parameter "is"
    .parameter "_enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 981
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 982
    move-object/from16 v7, p2

    .line 984
    .local v7, enc:Ljava/lang/String;
    if-nez p1, :cond_16

    .line 985
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 989
    :cond_16
    if-nez v7, :cond_67

    .line 992
    const/4 v4, 0x0

    .line 994
    .local v4, chk:I
    :goto_19
    :try_start_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v14, v0

    const/4 v15, 0x4

    if-ge v14, v15, :cond_28

    .line 995
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 996
    .local v8, i:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_8b

    .line 1002
    .end local v8           #i:I
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_67

    .line 1003
    sparse-switch v4, :sswitch_data_204

    .line 1062
    :cond_33
    :goto_33
    const/high16 v14, -0x1

    and-int/2addr v14, v4

    const/high16 v15, -0x101

    if-ne v14, v15, :cond_1aa

    .line 1063
    const-string v7, "UTF-16BE"

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1066
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1083
    .end local v4           #chk:I
    :cond_67
    :goto_67
    if-nez v7, :cond_6b

    .line 1084
    const-string v7, "UTF-8"

    .line 1086
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v13, v0

    .line 1087
    .local v13, sc:I
    new-instance v14, Ljava/io/InputStreamReader;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1088
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1089
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1097
    return-void

    .line 998
    .end local v13           #sc:I
    .restart local v4       #chk:I
    .restart local v8       #i:I
    :cond_8b
    shl-int/lit8 v14, v4, 0x8

    or-int v4, v14, v8

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_a7} :catch_a9

    goto/16 :goto_19

    .line 1091
    .end local v4           #chk:I
    .end local v8           #i:I
    :catch_a9
    move-exception v14

    move-object v6, v14

    .line 1092
    .local v6, e:Ljava/lang/Exception;
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid stream or encoding: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v14

    .line 1005
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #chk:I
    :sswitch_cd
    :try_start_cd
    const-string v7, "UTF-32BE"

    .line 1006
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_67

    .line 1010
    :sswitch_d6
    const-string v7, "UTF-32LE"

    .line 1011
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_67

    .line 1015
    :sswitch_df
    const-string v7, "UTF-32BE"

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1017
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_67

    .line 1021
    :sswitch_f3
    const-string v7, "UTF-32LE"

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1023
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_67

    .line 1027
    :sswitch_107
    const-string v7, "UTF-16BE"

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1030
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_67

    .line 1034
    :sswitch_125
    const-string v7, "UTF-16LE"

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1037
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_67

    .line 1042
    :cond_143
    :sswitch_143
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1043
    .restart local v8       #i:I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_33

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1046
    const/16 v14, 0x3e

    if-ne v8, v14, :cond_143

    .line 1047
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move/from16 v16, v0

    move-object v0, v12

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1048
    .local v12, s:Ljava/lang/String;
    const-string v14, "encoding"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1049
    .local v9, i0:I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_33

    move v10, v9

    .line 1051
    .end local v9           #i0:I
    .local v10, i0:I
    :goto_186
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_19a

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_19a

    .line 1052
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i0:I
    .restart local v9       #i0:I
    move v10, v9

    .end local v9           #i0:I
    .restart local v10       #i0:I
    goto :goto_186

    .line 1053
    :cond_19a
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i0:I
    .restart local v9       #i0:I
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1054
    .local v5, deli:C
    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1055
    .local v11, i1:I
    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1056
    goto/16 :goto_33

    .line 1068
    .end local v5           #deli:C
    .end local v8           #i:I
    .end local v9           #i0:I
    .end local v11           #i1:I
    .end local v12           #s:Ljava/lang/String;
    :cond_1aa
    const/high16 v14, -0x1

    and-int/2addr v14, v4

    const/high16 v15, -0x2

    if-ne v14, v15, :cond_1e0

    .line 1069
    const-string v7, "UTF-16LE"

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1072
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_67

    .line 1074
    :cond_1e0
    and-int/lit16 v14, v4, -0x100

    const v15, -0x10444100

    if-ne v14, v15, :cond_67

    .line 1075
    const-string v7, "UTF-8"

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    aput-char v16, v14, v15

    .line 1077
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_201} :catch_a9

    goto/16 :goto_67

    .line 1003
    nop

    :sswitch_data_204
    .sparse-switch
        -0x20000 -> :sswitch_d6
        0x3c -> :sswitch_df
        0xfeff -> :sswitch_cd
        0x3c003f -> :sswitch_107
        0x3c000000 -> :sswitch_f3
        0x3c003f00 -> :sswitch_125
        0x3c3f786d -> :sswitch_143
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 948
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 950
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 951
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 952
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 953
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 954
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 955
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 956
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 957
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 958
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 959
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 961
    if-nez p1, :cond_1d

    .line 975
    :goto_1c
    return-void

    .line 964
    :cond_1d
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 965
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 966
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 967
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 969
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    .line 970
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1413
    const/4 v0, 0x1

    const-string v1, "location"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1414
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    .line 1417
    return-void

    .line 1416
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipSubTree()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1428
    invoke-virtual {p0, v3, v2, v2}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v1, 0x1

    .line 1430
    .local v1, level:I
    :cond_6
    :goto_6
    if-lez v1, :cond_17

    .line 1431
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    move-result v0

    .line 1432
    .local v0, eventType:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 1433
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1435
    :cond_12
    if-ne v0, v3, :cond_6

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1439
    .end local v0           #eventType:I
    :cond_17
    return-void
.end method
