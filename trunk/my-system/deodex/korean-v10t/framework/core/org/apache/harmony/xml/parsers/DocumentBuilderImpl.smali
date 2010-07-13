.class Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"


# static fields
.field private static dom:Lorg/w3c/dom/DOMImplementation;


# instance fields
.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private ignoreComments:Z

.field private ignoreElementContentWhitespace:Z

.field private namespaceAware:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/w3c/dom/DOMImplementation;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    .line 63
    return-void
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V
    .registers 33
    .parameter "parser"
    .parameter "document"
    .parameter "node"
    .parameter "endToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v23

    .line 192
    .local v23, token:I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, p4

    if-eq v0, v1, :cond_319

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_319

    .line 193
    const/16 v25, 0x8

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_6c

    .line 198
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    .line 200
    .local v22, text:Ljava/lang/String;
    const/16 v25, 0x20

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 202
    .local v11, dot:I
    const/16 v25, -0x1

    move v0, v11

    move/from16 v1, v25

    if-eq v0, v1, :cond_64

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v21, v25

    .line 203
    .local v21, target:Ljava/lang/String;
    :goto_3c
    const/16 v25, -0x1

    move v0, v11

    move/from16 v1, v25

    if-eq v0, v1, :cond_67

    add-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v10, v25

    .line 205
    .local v10, data:Ljava/lang/String;
    :goto_4f
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 372
    .end local v10           #data:Ljava/lang/String;
    .end local v11           #dot:I
    .end local v21           #target:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    :cond_5f
    :goto_5f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v23

    goto :goto_4

    .restart local v11       #dot:I
    .restart local v22       #text:Ljava/lang/String;
    :cond_64
    move-object/from16 v21, v22

    .line 202
    goto :goto_3c

    .line 203
    .restart local v21       #target:Ljava/lang/String;
    :cond_67
    const-string v25, ""

    move-object/from16 v10, v25

    goto :goto_4f

    .line 207
    .end local v11           #dot:I
    .end local v21           #target:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    :cond_6c
    const/16 v25, 0xa

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_157

    .line 214
    new-instance v24, Ljava/util/StringTokenizer;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 215
    .local v24, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_5f

    .line 216
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, name:Ljava/lang/String;
    const/16 v18, 0x0

    .line 218
    .local v18, pubid:Ljava/lang/String;
    const/16 v20, 0x0

    .line 220
    .local v20, sysid:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_ab

    .line 221
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    .line 223
    .restart local v22       #text:Ljava/lang/String;
    const-string v25, "SYSTEM"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_135

    .line 224
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_ab

    .line 225
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 237
    .end local v22           #text:Ljava/lang/String;
    :cond_ab
    :goto_ab
    if-eqz v18, :cond_e5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e5

    const-string v25, "\""

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e5

    const-string v25, "\""

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e5

    .line 238
    const/16 v25, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 241
    :cond_e5
    if-eqz v20, :cond_11f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_11f

    const-string v25, "\""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11f

    const-string v25, "\""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_11f

    .line 242
    const/16 v25, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 245
    :cond_11f
    sget-object v25, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/w3c/dom/DOMImplementation;

    move-object/from16 v0, v25

    move-object v1, v15

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 227
    .restart local v22       #text:Ljava/lang/String;
    :cond_135
    const-string v25, "PUBLIC"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_ab

    .line 228
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_14b

    .line 229
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 231
    :cond_14b
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_ab

    .line 232
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_ab

    .line 248
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #pubid:Ljava/lang/String;
    .end local v20           #sysid:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    .end local v24           #tokenizer:Ljava/util/StringTokenizer;
    :cond_157
    const/16 v25, 0x9

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_17c

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    move/from16 v25, v0

    if-nez v25, :cond_5f

    .line 254
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 256
    :cond_17c
    const/16 v25, 0x7

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a1

    .line 262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    move/from16 v25, v0

    if-nez v25, :cond_5f

    .line 263
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 265
    :cond_1a1
    const/16 v25, 0x4

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1be

    .line 270
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 271
    :cond_1be
    const/16 v25, 0x5

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1db

    .line 276
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 277
    :cond_1db
    const/16 v25, 0x6

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_219

    .line 283
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 285
    .local v13, entity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1ef

    .line 289
    :cond_1ef
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->resolveStandardEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 290
    .local v19, replacement:Ljava/lang/String;
    if-eqz v19, :cond_209

    .line 291
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 293
    :cond_209
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v25

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_5f

    .line 295
    .end local v13           #entity:Ljava/lang/String;
    .end local v19           #replacement:Ljava/lang/String;
    :cond_219
    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_5f

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2be

    .line 306
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v16

    .line 307
    .local v16, namespace:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 308
    .restart local v15       #name:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    .line 310
    .local v17, prefix:Ljava/lang/String;
    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_243

    .line 311
    const/16 v16, 0x0

    .line 315
    :cond_243
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 316
    .local v12, element:Lorg/w3c/dom/Element;
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 319
    const/4 v14, 0x0

    .local v14, i:I
    :goto_259
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v25

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_29e

    .line 321
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, attrNamespace:Ljava/lang/String;
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, attrPrefix:Ljava/lang/String;
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, attrName:Ljava/lang/String;
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, attrValue:Ljava/lang/String;
    const-string v25, ""

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_28a

    .line 327
    const/4 v7, 0x0

    .line 331
    :cond_28a
    move-object/from16 v0, p2

    move-object v1, v7

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    .line 332
    .local v5, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v5, v8}, Lorg/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    .line 333
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 334
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 319
    add-int/lit8 v14, v14, 0x1

    goto :goto_259

    .line 338
    .end local v5           #attr:Lorg/w3c/dom/Attr;
    .end local v6           #attrName:Ljava/lang/String;
    .end local v7           #attrNamespace:Ljava/lang/String;
    .end local v8           #attrPrefix:Ljava/lang/String;
    .end local v9           #attrValue:Ljava/lang/String;
    :cond_29e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v23

    .line 339
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/xmlpull/v1/XmlPullParser;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V

    .line 342
    const/16 v25, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v16

    move-object v3, v15

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 346
    .end local v12           #element:Lorg/w3c/dom/Element;
    .end local v14           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #namespace:Ljava/lang/String;
    .end local v17           #prefix:Ljava/lang/String;
    :cond_2be
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 349
    .restart local v15       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 350
    .restart local v12       #element:Lorg/w3c/dom/Element;
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2d0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v25

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_2f7

    .line 354
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    .restart local v6       #attrName:Ljava/lang/String;
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 358
    .restart local v9       #attrValue:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    .line 359
    .restart local v5       #attr:Lorg/w3c/dom/Attr;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 360
    invoke-interface {v12, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 352
    add-int/lit8 v14, v14, 0x1

    goto :goto_2d0

    .line 364
    .end local v5           #attr:Lorg/w3c/dom/Attr;
    .end local v6           #attrName:Ljava/lang/String;
    .end local v9           #attrValue:Ljava/lang/String;
    :cond_2f7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v23

    .line 365
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/xmlpull/v1/XmlPullParser;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V

    .line 368
    const/16 v25, 0x3

    const-string v26, ""

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v15

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 374
    .end local v12           #element:Lorg/w3c/dom/Element;
    .end local v14           #i:I
    .end local v15           #name:Ljava/lang/String;
    :cond_319
    return-void
.end method

.method private resolveStandardEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "entity"

    .prologue
    .line 422
    const-string v0, "lt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 423
    const-string v0, "<"

    .line 433
    :goto_a
    return-object v0

    .line 424
    :cond_b
    const-string v0, "gt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 425
    const-string v0, ">"

    goto :goto_a

    .line 426
    :cond_16
    const-string v0, "amp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 427
    const-string v0, "&"

    goto :goto_a

    .line 428
    :cond_21
    const-string v0, "apos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 429
    const-string v0, "\'"

    goto :goto_a

    .line 430
    :cond_2c
    const-string v0, "quot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 431
    const-string v0, "\""

    goto :goto_a

    .line 433
    :cond_37
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public isIgnoringComments()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->dom:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {v0, v1, v1, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .registers 10
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 106
    if-nez p1, :cond_9

    .line 107
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 110
    :cond_9
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 113
    .local v0, document:Lorg/w3c/dom/Document;
    :try_start_d
    new-instance v4, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v4}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 115
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v6, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 119
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 128
    :goto_2a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v5

    if-ne v5, v7, :cond_61

    .line 129
    new-instance v5, Lorg/xml/sax/SAXParseException;

    const-string v6, "Unexpected end of document"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v5
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_39} :catch_39

    .line 136
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_39
    move-exception v5

    move-object v1, v5

    .line 137
    .local v1, ex:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_6c

    .line 138
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 120
    .end local v1           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0
    :cond_4a
    :try_start_4a
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 121
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    goto :goto_2a

    .line 124
    :cond_58
    new-instance v5, Lorg/xml/sax/SAXParseException;

    const-string v6, "InputSource needs either stream or reader"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v5

    .line 133
    :cond_61
    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v0, v5}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->parse(Lorg/xmlpull/v1/XmlPullParser;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V

    .line 135
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_6b} :catch_39

    .line 161
    return-object v0

    .line 140
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1       #ex:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6c
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_7b

    .line 141
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getDetail()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 144
    .restart local p0
    :cond_7b
    new-instance v2, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 146
    .local v2, locator:Lorg/xml/sax/helpers/LocatorImpl;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 149
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getColumnNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 151
    new-instance v3, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 154
    .local v3, newEx:Lorg/xml/sax/SAXParseException;
    iget-object v5, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v5, :cond_ae

    .line 155
    iget-object v5, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v5, v3}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 158
    :cond_ae
    throw v3
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 379
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 383
    iput-object p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 384
    return-void
.end method

.method public setIgnoreComments(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 392
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreComments:Z

    .line 393
    return-void
.end method

.method public setIgnoreElementContentWhitespace(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 401
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->ignoreElementContentWhitespace:Z

    .line 402
    return-void
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->namespaceAware:Z

    .line 411
    return-void
.end method
