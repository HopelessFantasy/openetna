.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .parameter "properties"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 114
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 115
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 11
    .parameter "buffer"
    .parameter "string"
    .parameter "key"

    .prologue
    const/16 v6, 0x20

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, i:I
    if-nez p3, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_18

    .line 120
    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 124
    :cond_18
    :goto_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_78

    .line 125
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .local v0, ch:C
    packed-switch v0, :pswitch_data_7a

    .line 140
    :pswitch_25
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_31

    if-eqz p3, :cond_36

    if-ne v0, v6, :cond_36

    .line 141
    :cond_31
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_36
    if-lt v0, v6, :cond_5a

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5a

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 128
    :pswitch_42
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 131
    :pswitch_48
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 134
    :pswitch_4e
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 137
    :pswitch_54
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 146
    :cond_5a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, hex:Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v3, 0x0

    .local v3, j:I
    :goto_64
    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_74

    .line 149
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 151
    :cond_74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 155
    .end local v0           #ch:C
    .end local v1           #hex:Ljava/lang/String;
    .end local v3           #j:I
    :cond_78
    return-void

    .line 126
    nop

    :pswitch_data_7a
    .packed-switch 0x9
        :pswitch_42
        :pswitch_48
        :pswitch_25
        :pswitch_4e
        :pswitch_54
    .end packed-switch
.end method

.method private getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 7
    .parameter "node"

    .prologue
    .line 790
    instance-of v3, p1, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_2d

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Text;

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 792
    .local v2, result:Ljava/lang/String;
    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 793
    .local v1, child:Lorg/w3c/dom/Node;
    :goto_11
    if-eqz v1, :cond_31

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Ljava/util/Properties;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_11

    .line 790
    .end local v1           #child:Lorg/w3c/dom/Node;
    .end local v2           #result:Ljava/lang/String;
    :cond_2d
    const-string v3, ""

    move-object v2, v3

    goto :goto_d

    .line 798
    .restart local v1       #child:Lorg/w3c/dom/Node;
    .restart local v2       #result:Ljava/lang/String;
    :cond_31
    return-object v2
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 781
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 168
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    check-cast v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/Object;
    move-object v0, v1

    .line 170
    .local v0, property:Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 171
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_17
    return-object v0

    .line 169
    .end local v0           #property:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/Object;
    :cond_18
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_b
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 190
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1b

    check-cast v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/Object;
    move-object v0, v1

    .line 192
    .local v0, property:Ljava/lang/String;
    :goto_b
    if-nez v0, :cond_17

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_17

    .line 193
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_17
    if-nez v0, :cond_1e

    move-object v2, p2

    .line 198
    :goto_1a
    return-object v2

    .line 191
    .end local v0           #property:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1b
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_b

    .end local v1           #result:Ljava/lang/Object;
    .restart local v0       #property:Ljava/lang/String;
    :cond_1e
    move-object v2, v0

    .line 198
    goto :goto_1a
.end method

.method public list(Ljava/io/PrintStream;)V
    .registers 10
    .parameter "out"

    .prologue
    const/4 v7, 0x0

    .line 212
    if-nez p1, :cond_9

    .line 213
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 215
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 216
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 217
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 218
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, property:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 223
    .local v1, def:Ljava/util/Properties;
    :goto_30
    if-nez v4, :cond_3b

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #property:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 225
    .restart local v4       #property:Ljava/lang/String;
    iget-object v1, v1, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_30

    .line 227
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_5c

    .line 228
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_14

    .line 231
    :cond_5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 236
    .end local v1           #def:Ljava/util/Properties;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #property:Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .registers 10
    .parameter "writer"

    .prologue
    const/4 v7, 0x0

    .line 249
    if-nez p1, :cond_9

    .line 250
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 252
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 254
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 255
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    .local v4, property:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 260
    .local v1, def:Ljava/util/Properties;
    :goto_30
    if-nez v4, :cond_3b

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #property:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 262
    .restart local v4       #property:Ljava/lang/String;
    iget-object v1, v1, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_30

    .line 264
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_5c

    .line 265
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_14

    .line 268
    :cond_5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 273
    .end local v1           #def:Ljava/util/Properties;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #property:Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .registers 25
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    monitor-enter p0

    const/4 v14, 0x0

    .local v14, mode:I
    const/16 v20, 0x0

    .local v20, unicode:I
    const/4 v6, 0x0

    .line 305
    .local v6, count:I
    const/16 v21, 0x28

    :try_start_7
    move/from16 v0, v21

    new-array v0, v0, [C

    move-object v5, v0

    .line 306
    .local v5, buf:[C
    const/16 v17, 0x0

    .local v17, offset:I
    const/4 v13, -0x1

    .line 307
    .local v13, keyLength:I
    const/4 v8, 0x1

    .line 308
    .local v8, firstChar:Z
    const/16 v21, 0x100

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v9, v0

    .line 309
    .local v9, inbuf:[B
    const/4 v10, 0x0

    .local v10, inbufCount:I
    const/4 v11, 0x0

    .local v11, inbufPos:I
    move/from16 v18, v17

    .line 312
    .end local v17           #offset:I
    .local v18, offset:I
    :cond_1b
    :goto_1b
    if-ne v11, v10, :cond_1fd

    .line 313
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_48

    .line 458
    const/16 v21, 0x2

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_1cd

    const/16 v21, 0x4

    move v0, v6

    move/from16 v1, v21

    if-gt v0, v1, :cond_1cd

    .line 460
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "luni.08"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_45

    .line 304
    .end local v5           #buf:[C
    .end local v8           #firstChar:Z
    .end local v9           #inbuf:[B
    .end local v10           #inbufCount:I
    .end local v11           #inbufPos:I
    .end local v13           #keyLength:I
    .end local v18           #offset:I
    :catchall_45
    move-exception v21

    monitor-exit p0

    throw v21

    .line 316
    .restart local v5       #buf:[C
    .restart local v8       #firstChar:Z
    .restart local v9       #inbuf:[B
    .restart local v10       #inbufCount:I
    .restart local v11       #inbufPos:I
    .restart local v13       #keyLength:I
    .restart local v18       #offset:I
    :cond_48
    const/4 v11, 0x0

    move v12, v11

    .line 318
    .end local v11           #inbufPos:I
    .local v12, inbufPos:I
    :goto_4a
    add-int/lit8 v11, v12, 0x1

    .end local v12           #inbufPos:I
    .restart local v11       #inbufPos:I
    :try_start_4c
    aget-byte v21, v9, v12

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v16, v0

    .line 320
    .local v16, nextChar:C
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_7e

    .line 321
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object v15, v0

    .line 322
    .local v15, newBuf:[C
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v5

    move/from16 v1, v21

    move-object v2, v15

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    move-object v5, v15

    .line 325
    .end local v15           #newBuf:[C
    :cond_7e
    const/16 v21, 0x2

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_c9

    .line 326
    const/16 v21, 0x10

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 329
    .local v7, digit:I
    if-ltz v7, :cond_b4

    .line 330
    shl-int/lit8 v21, v20, 0x4

    add-int v20, v21, v7

    .line 331
    add-int/lit8 v6, v6, 0x1

    const/16 v21, 0x4

    move v0, v6

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    .line 339
    :cond_9e
    const/4 v14, 0x0

    .line 340
    add-int/lit8 v17, v18, 0x1

    .end local v18           #offset:I
    .restart local v17       #offset:I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v21, v0

    aput-char v21, v5, v18

    .line 341
    const/16 v21, 0xa

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_c7

    move/from16 v18, v17

    .line 342
    .end local v17           #offset:I
    .restart local v18       #offset:I
    goto/16 :goto_1b

    .line 334
    :cond_b4
    const/16 v21, 0x4

    move v0, v6

    move/from16 v1, v21

    if-gt v0, v1, :cond_9e

    .line 336
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "luni.09"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .end local v18           #offset:I
    .restart local v17       #offset:I
    :cond_c7
    move/from16 v18, v17

    .line 345
    .end local v7           #digit:I
    .end local v17           #offset:I
    .restart local v18       #offset:I
    :cond_c9
    const/16 v21, 0x1

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_102

    .line 346
    const/4 v14, 0x0

    .line 347
    sparse-switch v16, :sswitch_data_200

    .line 449
    :cond_d4
    :goto_d4
    const/4 v8, 0x0

    .line 450
    const/16 v21, 0x4

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_df

    .line 451
    move/from16 v13, v18

    .line 452
    const/4 v14, 0x0

    .line 454
    :cond_df
    add-int/lit8 v17, v18, 0x1

    .end local v18           #offset:I
    .restart local v17       #offset:I
    aput-char v16, v5, v18

    move/from16 v18, v17

    .end local v17           #offset:I
    .restart local v18       #offset:I
    goto/16 :goto_1b

    .line 349
    :sswitch_e7
    const/4 v14, 0x3

    .line 350
    goto/16 :goto_1b

    .line 352
    :sswitch_ea
    const/4 v14, 0x5

    .line 353
    goto/16 :goto_1b

    .line 355
    :sswitch_ed
    const/16 v16, 0x8

    .line 356
    goto :goto_d4

    .line 358
    :sswitch_f0
    const/16 v16, 0xc

    .line 359
    goto :goto_d4

    .line 361
    :sswitch_f3
    const/16 v16, 0xa

    .line 362
    goto :goto_d4

    .line 364
    :sswitch_f6
    const/16 v16, 0xd

    .line 365
    goto :goto_d4

    .line 367
    :sswitch_f9
    const/16 v16, 0x9

    .line 368
    goto :goto_d4

    .line 370
    :sswitch_fc
    const/4 v14, 0x2

    .line 371
    const/4 v6, 0x0

    move/from16 v20, v6

    .line 372
    goto/16 :goto_1b

    .line 375
    :cond_102
    sparse-switch v16, :sswitch_data_222

    .line 432
    :cond_105
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v21

    if-eqz v21, :cond_1bc

    .line 433
    const/16 v21, 0x3

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_113

    .line 434
    const/4 v14, 0x5

    .line 437
    :cond_113
    if-eqz v18, :cond_1b

    move/from16 v0, v18

    move v1, v13

    if-eq v0, v1, :cond_1b

    const/16 v21, 0x5

    move v0, v14

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    .line 440
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_1bc

    .line 441
    const/4 v14, 0x4

    .line 442
    goto/16 :goto_1b

    .line 378
    :sswitch_12b
    if-eqz v8, :cond_105

    .line 380
    :cond_12d
    if-ne v11, v10, :cond_1fa

    .line 381
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_140

    .line 382
    const/4 v11, -0x1

    .line 383
    goto/16 :goto_1b

    .line 385
    :cond_140
    const/4 v11, 0x0

    move v12, v11

    .line 387
    .end local v11           #inbufPos:I
    .restart local v12       #inbufPos:I
    :goto_142
    add-int/lit8 v11, v12, 0x1

    .end local v12           #inbufPos:I
    .restart local v11       #inbufPos:I
    aget-byte v21, v9, v12

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v16, v0

    .line 390
    const/16 v21, 0xd

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    const/16 v21, 0xa

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_12d

    goto/16 :goto_1b

    .line 398
    :sswitch_15d
    const/16 v21, 0x3

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_167

    .line 399
    const/4 v14, 0x5

    .line 400
    goto/16 :goto_1b

    .line 404
    :cond_167
    :sswitch_167
    const/4 v14, 0x0

    .line 405
    const/4 v8, 0x1

    .line 406
    if-lez v18, :cond_19d

    .line 407
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_174

    .line 408
    move/from16 v13, v18

    .line 410
    :cond_174
    new-instance v19, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 411
    .local v19, temp:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v19           #temp:Ljava/lang/String;
    :cond_19d
    const/4 v13, -0x1

    .line 415
    const/16 v17, 0x0

    .end local v18           #offset:I
    .restart local v17       #offset:I
    move/from16 v18, v17

    .line 416
    .end local v17           #offset:I
    .restart local v18       #offset:I
    goto/16 :goto_1b

    .line 418
    :sswitch_1a4
    const/16 v21, 0x4

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ad

    .line 419
    move/from16 v13, v18

    .line 421
    :cond_1ad
    const/4 v14, 0x1

    .line 422
    goto/16 :goto_1b

    .line 425
    :sswitch_1b0
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-ne v0, v1, :cond_105

    .line 426
    const/4 v14, 0x0

    .line 427
    move/from16 v13, v18

    .line 428
    goto/16 :goto_1b

    .line 445
    :cond_1bc
    const/16 v21, 0x5

    move v0, v14

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ca

    const/16 v21, 0x3

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_d4

    .line 446
    :cond_1ca
    const/4 v14, 0x0

    goto/16 :goto_d4

    .line 463
    .end local v16           #nextChar:C
    :cond_1cd
    if-ltz v13, :cond_1f8

    .line 464
    new-instance v19, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 465
    .restart local v19       #temp:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f8
    .catchall {:try_start_4c .. :try_end_1f8} :catchall_45

    .line 467
    .end local v19           #temp:Ljava/lang/String;
    :cond_1f8
    monitor-exit p0

    return-void

    .restart local v16       #nextChar:C
    :cond_1fa
    move v12, v11

    .end local v11           #inbufPos:I
    .restart local v12       #inbufPos:I
    goto/16 :goto_142

    .end local v12           #inbufPos:I
    .end local v16           #nextChar:C
    .restart local v11       #inbufPos:I
    :cond_1fd
    move v12, v11

    .end local v11           #inbufPos:I
    .restart local v12       #inbufPos:I
    goto/16 :goto_4a

    .line 347
    :sswitch_data_200
    .sparse-switch
        0xa -> :sswitch_ea
        0xd -> :sswitch_e7
        0x62 -> :sswitch_ed
        0x66 -> :sswitch_f0
        0x6e -> :sswitch_f3
        0x72 -> :sswitch_f6
        0x74 -> :sswitch_f9
        0x75 -> :sswitch_fc
    .end sparse-switch

    .line 375
    :sswitch_data_222
    .sparse-switch
        0xa -> :sswitch_15d
        0xd -> :sswitch_167
        0x21 -> :sswitch_12b
        0x23 -> :sswitch_12b
        0x3a -> :sswitch_1b0
        0x3d -> :sswitch_1b0
        0x5c -> :sswitch_1a4
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .registers 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    .line 599
    monitor-enter p0

    if-nez p1, :cond_c

    .line 600
    :try_start_3
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 599
    :catchall_9
    move-exception v9

    monitor-exit p0

    throw v9

    .line 603
    :cond_c
    :try_start_c
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v9, :cond_2e

    .line 604
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    move-result-object v5

    .line 610
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_14
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    iput-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_1a} :catch_3e

    .line 615
    :try_start_1a
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$1;

    invoke-direct {v10, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 629
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$2;

    invoke-direct {v10, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_9

    .line 645
    .end local v5           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_2e
    :try_start_2e
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v9, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 646
    .local v0, doc:Lorg/w3c/dom/Document;
    const-string v9, "entry"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_9
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_39} :catch_63
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_39} :catch_66

    move-result-object v2

    .line 647
    .local v2, entries:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_46

    .line 673
    :cond_3c
    monitor-exit p0

    return-void

    .line 611
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #entries:Lorg/w3c/dom/NodeList;
    .restart local v5       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_3e
    move-exception v9

    move-object v1, v9

    .line 612
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_40
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_9

    .line 650
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v2       #entries:Lorg/w3c/dom/NodeList;
    :cond_46
    :try_start_46
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 652
    .local v3, entriesListLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4b
    if-ge v6, v3, :cond_3c

    .line 653
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 654
    .local v4, entry:Lorg/w3c/dom/Element;
    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Properties;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 666
    .local v8, value:Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_9
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_60} :catch_63
    .catch Lorg/xml/sax/SAXException; {:try_start_46 .. :try_end_60} :catch_66

    .line 652
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 668
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #entries:Lorg/w3c/dom/NodeList;
    .end local v3           #entriesListLength:I
    .end local v4           #entry:Lorg/w3c/dom/Element;
    .end local v6           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_63
    move-exception v9

    move-object v1, v9

    .line 669
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    throw v1

    .line 670
    .end local v1           #e:Ljava/io/IOException;
    :catch_66
    move-exception v9

    move-object v1, v9

    .line 671
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v9, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v9, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_9
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-nez v2, :cond_9

    .line 479
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 491
    :goto_8
    return-object v2

    .line 482
    :cond_9
    new-instance v1, Ljava/util/Hashtable;

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Properties;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 483
    .local v1, set:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 484
    .local v0, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 485
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 487
    :cond_2d
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 488
    :goto_31
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 489
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 491
    :cond_3f
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    goto :goto_8
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "out"
    .parameter "comment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 515
    :goto_3
    return-void

    .line 513
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 529
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 10
    .parameter "out"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "#"

    .line 550
    monitor-enter p0

    :try_start_3
    sget-object v5, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    if-nez v5, :cond_16

    .line 551
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v6, "line.separator"

    invoke-direct {v5, v6}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    .line 555
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0xc8

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    .local v0, buffer:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "ISO8859_1"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 557
    .local v4, writer:Ljava/io/OutputStreamWriter;
    if-eqz p2, :cond_33

    .line 558
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v4, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 560
    sget-object v5, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 562
    :cond_33
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 563
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 564
    sget-object v5, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 567
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 568
    .local v3, key:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 569
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 571
    sget-object v5, Ljava/util/Properties;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 573
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_87

    goto :goto_51

    .line 550
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    :catchall_87
    move-exception v5

    monitor-exit p0

    throw v5

    .line 575
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    :cond_8a
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_87

    .line 576
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "os"
    .parameter "comment"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "\">"

    .line 720
    monitor-enter p0

    if-eqz p1, :cond_7

    if-nez p3, :cond_10

    .line 721
    :cond_7
    :try_start_7
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    .line 720
    :catchall_d
    move-exception v7

    monitor-exit p0

    throw v7

    .line 733
    :cond_10
    :try_start_10
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_10 .. :try_end_17} :catch_90
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_10 .. :try_end_17} :catch_b4

    move-result-object v1

    .line 744
    .local v1, encodingCanonicalName:Ljava/lang/String;
    :goto_18
    :try_start_18
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 746
    .local v6, printStream:Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 748
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 750
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 751
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 752
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 756
    if-eqz p2, :cond_52

    .line 757
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 759
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 762
    :cond_52
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 763
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 764
    .local v5, keyValue:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 765
    .local v3, entryValue:Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 768
    invoke-direct {p0, v3}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 769
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5a

    .line 734
    .end local v1           #encodingCanonicalName:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3           #entryValue:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #keyValue:Ljava/lang/String;
    .end local v6           #printStream:Ljava/io/PrintStream;
    :catch_90
    move-exception v7

    move-object v0, v7

    .line 735
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    const-string v1, "UTF-8"

    .line 742
    .restart local v1       #encodingCanonicalName:Ljava/lang/String;
    goto/16 :goto_18

    .line 738
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1           #encodingCanonicalName:Ljava/lang/String;
    :catch_b4
    move-exception v7

    move-object v0, v7

    .line 739
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    const-string v1, "UTF-8"

    .restart local v1       #encodingCanonicalName:Ljava/lang/String;
    goto/16 :goto_18

    .line 771
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #printStream:Ljava/io/PrintStream;
    :cond_d8
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_e0
    .catchall {:try_start_18 .. :try_end_e0} :catchall_d

    .line 773
    monitor-exit p0

    return-void
.end method
