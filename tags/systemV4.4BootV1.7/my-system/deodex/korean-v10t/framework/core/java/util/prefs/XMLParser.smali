.class Ljava/util/prefs/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final DOCTYPE:Ljava/lang/String; = "<!DOCTYPE preferences SYSTEM"

.field private static final EMPTY_SARRAY:[Ljava/lang/String; = null

.field private static final FILE_PREFS:Ljava/lang/String; = "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

.field static final HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

.field static final PREFS_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"

.field private static final XML_VERSION:F = 1.0f

.field private static final builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static indent:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 105
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Ljava/util/prefs/XMLParser;->EMPTY_SARRAY:[Ljava/lang/String;

    .line 125
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 131
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 133
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 136
    :try_start_f
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_15} :catch_2a

    .line 140
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$1;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$1;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 154
    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$2;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$2;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 167
    return-void

    .line 137
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 138
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method private static exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 7
    .parameter "prefs"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, keys:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 247
    .local v2, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_17

    .line 248
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 250
    :cond_17
    invoke-static {v1, v2, p1}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 251
    return-void
.end method

.method private static exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 12
    .parameter "keys"
    .parameter "values"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "map"

    .line 255
    array-length v1, p0

    if-nez v1, :cond_e

    .line 256
    const-string v1, "map"

    invoke-static {v5, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 267
    :goto_d
    return-void

    .line 259
    :cond_e
    const-string v1, "map"

    invoke-static {v5, p2}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v1, p0

    if-ge v0, v1, :cond_37

    .line 261
    aget-object v1, p1, v0

    if-eqz v1, :cond_34

    .line 262
    const-string v1, "entry"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v6

    const-string v3, "value"

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/String;

    aget-object v4, p0, v0

    aput-object v4, v3, v6

    aget-object v4, p1, v0

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 260
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 266
    :cond_37
    const-string v1, "map"

    invoke-static {v5, p2}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto :goto_d
.end method

.method private static exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V
    .registers 10
    .parameter "ancestors"
    .parameter "prefs"
    .parameter "withSubTree"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "node"

    .line 211
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 212
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, name:Ljava/lang/String;
    const-string v1, "node"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v5, v1, v2, p3}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 215
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 216
    const-string v1, "map"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 217
    invoke-static {p0, p1, p2, p3}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 224
    :cond_2b
    :goto_2b
    const-string v1, "node"

    invoke-static {v5, p3}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 226
    .end local v0           #name:Ljava/lang/String;
    :cond_30
    return-void

    .line 219
    .restart local v0       #name:Ljava/lang/String;
    :cond_31
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 220
    if-eqz p2, :cond_2b

    .line 221
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    goto :goto_2b
.end method

.method static exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V
    .registers 12
    .parameter "prefs"
    .parameter "stream"
    .parameter "withSubTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "root"

    const-string v7, "preferences"

    .line 177
    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    .line 179
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 181
    .local v1, out:Ljava/io/BufferedWriter;
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 185
    const-string v2, "<!DOCTYPE preferences SYSTEM"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 186
    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    const-string v2, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 188
    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 190
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 192
    const-string v2, "preferences"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EXTERNAL_XML_VERSION"

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/String;

    const/high16 v4, 0x3f80

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v7, v2, v3, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 194
    const-string v2, "root"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_8a

    const-string v4, "user"

    :goto_63
    aput-object v4, v3, v5

    invoke-static {v8, v2, v3, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 196
    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 198
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, ancestors:Ljava/util/StringTokenizer;
    invoke-static {v0, p0, p2, v1}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    .line 202
    const-string v2, "root"

    invoke-static {v8, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 203
    const-string v2, "preferences"

    invoke-static {v7, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 205
    const/4 v1, 0x0

    .line 206
    return-void

    .line 194
    .end local v0           #ancestors:Ljava/util/StringTokenizer;
    :cond_8a
    const-string v4, "system"

    goto :goto_63
.end method

.method private static exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .registers 11
    .parameter "prefs"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "node"

    .line 230
    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, names:[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_34

    .line 232
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v2

    if-ge v1, v3, :cond_34

    .line 233
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    .line 234
    .local v0, child:Ljava/util/prefs/Preferences;
    const-string v3, "node"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    aget-object v5, v2, v1

    aput-object v5, v4, v6

    invoke-static {v8, v3, v4, p1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 236
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 237
    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    .line 238
    const-string v3, "node"

    invoke-static {v8, p1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 241
    .end local v0           #child:Ljava/util/prefs/Preferences;
    .end local v1           #i:I
    :cond_34
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 281
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 285
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 286
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 6
    .parameter "tagName"
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 291
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 293
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 294
    const-string v0, " />"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 296
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    .line 297
    return-void
.end method

.method private static flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 272
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 274
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 276
    return-void
.end method

.method static flushFilePrefs(Ljava/io/File;Ljava/util/Properties;)V
    .registers 3
    .parameter "file"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/util/prefs/XMLParser$4;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/XMLParser$4;-><init>(Ljava/io/File;Ljava/util/Properties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method static flushFilePrefsImpl(Ljava/io/File;Ljava/util/Properties;)V
    .registers 13
    .parameter "file"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v6, 0x0

    .line 582
    .local v6, out:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 584
    .local v4, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 586
    .local v5, ostream:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v10, 0x2000

    invoke-direct {v7, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_7e

    .line 588
    .end local v6           #out:Ljava/io/BufferedWriter;
    .local v7, out:Ljava/io/BufferedWriter;
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 589
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 590
    const-string v9, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    .line 592
    const-string v9, "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    .line 594
    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v9

    if-nez v9, :cond_46

    .line 595
    sget-object v9, Ljava/util/prefs/XMLParser;->EMPTY_SARRAY:[Ljava/lang/String;

    sget-object v10, Ljava/util/prefs/XMLParser;->EMPTY_SARRAY:[Ljava/lang/String;

    invoke-static {v9, v10, v7}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 605
    :goto_3a
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_6b

    .line 608
    :try_start_3d
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_76

    .line 612
    :goto_40
    if-eqz v7, :cond_45

    .line 613
    :try_start_42
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_78

    .line 618
    :cond_45
    :goto_45
    return-void

    .line 597
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 598
    .local v2, keys:[Ljava/lang/String;
    array-length v3, v2

    .line 599
    .local v3, length:I
    new-array v8, v3, [Ljava/lang/String;

    .line 600
    .local v8, values:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    if-ge v1, v3, :cond_67

    .line 601
    aget-object v9, v2, v1

    invoke-virtual {p1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 603
    :cond_67
    invoke-static {v2, v8, v7}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_6b

    goto :goto_3a

    .line 607
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #i:I
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #length:I
    .end local v8           #values:[Ljava/lang/String;
    :catchall_6b
    move-exception v9

    move-object v6, v7

    .line 608
    .end local v5           #ostream:Ljava/io/FileOutputStream;
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :goto_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7a

    .line 612
    :goto_70
    if-eqz v6, :cond_75

    .line 613
    :try_start_72
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7c

    .line 616
    :cond_75
    :goto_75
    throw v9

    .line 609
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v5       #ostream:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :catch_76
    move-exception v9

    goto :goto_40

    .line 615
    :catch_78
    move-exception v9

    goto :goto_45

    .line 609
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v5           #ostream:Ljava/io/FileOutputStream;
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :catch_7a
    move-exception v10

    goto :goto_70

    .line 615
    :catch_7c
    move-exception v10

    goto :goto_75

    .line 607
    :catchall_7e
    move-exception v9

    goto :goto_6d
.end method

.method private static flushIndent(ILjava/io/BufferedWriter;)V
    .registers 4
    .parameter "ind"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 313
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    :cond_b
    return-void
.end method

.method private static flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_24

    .line 302
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 303
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 304
    const-string v1, "=\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 305
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 306
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_24
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 3
    .parameter "tagName"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 330
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 332
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 334
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .registers 5
    .parameter "tagName"
    .parameter "attrKeys"
    .parameter "attrValues"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    .line 320
    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 322
    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 323
    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    .line 325
    return-void
.end method

.method private static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 337
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 340
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 341
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 343
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 346
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 349
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 352
    :sswitch_2b
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 355
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 361
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 341
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
        0x5c -> :sswitch_2b
    .end sparse-switch
.end method

.method static importPrefs(Ljava/io/InputStream;)V
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    sget-object v7, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 375
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 376
    .local v2, preferences:Lorg/w3c/dom/Element;
    const-string v7, "EXTERNAL_XML_VERSION"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, version:Ljava/lang/String;
    if-eqz v6, :cond_35

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_35

    .line 379
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    const-string v8, "prefs.2"

    invoke-static {v8, v6}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_2d} :catch_2d
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_2d} :catch_5e

    .line 396
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #preferences:Lorg/w3c/dom/Element;
    .end local v6           #version:Ljava/lang/String;
    :catch_2d
    move-exception v7

    move-object v1, v7

    .line 397
    .local v1, e:Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 384
    .end local v1           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v2       #preferences:Lorg/w3c/dom/Element;
    .restart local v6       #version:Ljava/lang/String;
    :cond_35
    :try_start_35
    const-string v7, "root"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 386
    .local v4, root:Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 387
    .local v3, prefsRoot:Ljava/util/prefs/Preferences;
    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, type:Ljava/lang/String;
    const-string v7, "user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 389
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v3

    .line 395
    :goto_55
    invoke-static {v3, v4}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 406
    return-void

    .line 391
    :cond_59
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_5c
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_35 .. :try_end_5c} :catch_2d
    .catch Lorg/xml/sax/SAXException; {:try_start_35 .. :try_end_5c} :catch_5e

    move-result-object v3

    goto :goto_55

    .line 398
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v2           #preferences:Lorg/w3c/dom/Element;
    .end local v3           #prefsRoot:Ljava/util/prefs/Preferences;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catch_5e
    move-exception v7

    move-object v1, v7

    .line 399
    .local v1, e:Lorg/xml/sax/SAXException;
    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method static loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;
    .registers 2
    .parameter "file"

    .prologue
    .line 504
    new-instance v0, Ljava/util/prefs/XMLParser$3;

    invoke-direct {v0, p0}, Ljava/util/prefs/XMLParser$3;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method static loadFilePrefsImpl(Ljava/io/File;)Ljava/util/Properties;
    .registers 11
    .parameter "file"

    .prologue
    .line 520
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 521
    .local v8, result:Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 522
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :goto_12
    move-object p0, v8

    .line 562
    .end local v8           #result:Ljava/util/Properties;
    .local p0, result:Ljava/util/Properties;
    :goto_13
    return-object p0

    .line 523
    .restart local v8       #result:Ljava/util/Properties;
    .local p0, file:Ljava/io/File;
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 528
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_1c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 530
    .local v1, istream:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 p0, 0x2000

    invoke-direct {v6, v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_6f

    .line 532
    .end local v0           #in:Ljava/io/InputStream;
    .end local p0           #file:Ljava/io/File;
    .local v6, in:Ljava/io/InputStream;
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 533
    .local v0, channel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_a6

    .end local v1           #istream:Ljava/io/FileInputStream;
    move-result-object v3

    .line 534
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .local v3, lock:Ljava/nio/channels/FileLock;
    :try_start_38
    sget-object p0, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p0, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 536
    .local p0, doc:Lorg/w3c/dom/Document;
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .end local p0           #doc:Lorg/w3c/dom/Document;
    const-string v0, "entry"

    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    invoke-static {p0, v0}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 539
    .local p0, entries:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 540
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4d
    if-ge v0, v2, :cond_67

    .line 541
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 542
    .local v4, node:Lorg/w3c/dom/Element;
    const-string v1, "key"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, key:Ljava/lang/String;
    const-string v5, "value"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v8, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_38 .. :try_end_64} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_64} :catch_aa

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 551
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_67
    :try_start_67
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_8c

    .line 555
    .end local p0           #entries:Lorg/w3c/dom/NodeList;
    :goto_6a
    :try_start_6a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_8e

    :goto_6d
    move-object p0, v8

    .line 557
    .end local v8           #result:Ljava/util/Properties;
    .local p0, result:Ljava/util/Properties;
    goto :goto_13

    .line 547
    .end local v2           #length:I
    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .end local v6           #in:Ljava/io/InputStream;
    .end local p0           #result:Ljava/util/Properties;
    .local v0, in:Ljava/io/InputStream;
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #result:Ljava/util/Properties;
    :catch_6f
    move-exception p0

    move-object v1, v7

    .line 548
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .local v1, lock:Ljava/nio/channels/FileLock;
    .local p0, e:Ljava/lang/Exception;
    :goto_71
    :try_start_71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_a0

    .line 551
    :try_start_74
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_90

    .line 555
    .end local p0           #e:Ljava/lang/Exception;
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_12

    .line 556
    :catch_7b
    move-exception p0

    goto :goto_12

    .line 550
    .end local v1           #lock:Ljava/nio/channels/FileLock;
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catchall_7d
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    move-object v0, v7

    .line 551
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .local v0, lock:Ljava/nio/channels/FileLock;
    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_92

    .line 555
    .end local v0           #lock:Ljava/nio/channels/FileLock;
    :goto_84
    :try_start_84
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_94

    .line 557
    .end local p0           #in:Ljava/io/InputStream;
    :goto_87
    throw v1

    .line 560
    .local p0, file:Ljava/io/File;
    :cond_88
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_12

    .line 552
    .local v0, i:I
    .restart local v2       #length:I
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v6       #in:Ljava/io/InputStream;
    .local p0, entries:Lorg/w3c/dom/NodeList;
    :catch_8c
    move-exception p0

    goto :goto_6a

    .line 556
    .end local p0           #entries:Lorg/w3c/dom/NodeList;
    :catch_8e
    move-exception p0

    goto :goto_6d

    .line 552
    .end local v2           #length:I
    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .end local v6           #in:Ljava/io/InputStream;
    .local v0, in:Ljava/io/InputStream;
    .restart local v1       #lock:Ljava/nio/channels/FileLock;
    .local p0, e:Ljava/lang/Exception;
    :catch_90
    move-exception p0

    goto :goto_77

    .end local v1           #lock:Ljava/nio/channels/FileLock;
    .local v0, lock:Ljava/nio/channels/FileLock;
    .local p0, in:Ljava/io/InputStream;
    :catch_92
    move-exception v0

    goto :goto_84

    .line 556
    .end local v0           #lock:Ljava/nio/channels/FileLock;
    :catch_94
    move-exception p0

    goto :goto_87

    .line 550
    .end local p0           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catchall_96
    move-exception p0

    move-object v1, p0

    move-object v0, v7

    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .restart local v0       #lock:Ljava/nio/channels/FileLock;
    move-object p0, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local p0       #in:Ljava/io/InputStream;
    goto :goto_81

    .end local v0           #lock:Ljava/nio/channels/FileLock;
    .end local p0           #in:Ljava/io/InputStream;
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_9b
    move-exception p0

    move-object v1, p0

    move-object v0, v3

    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .restart local v0       #lock:Ljava/nio/channels/FileLock;
    move-object p0, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local p0       #in:Ljava/io/InputStream;
    goto :goto_81

    .local v0, in:Ljava/io/InputStream;
    .restart local v1       #lock:Ljava/nio/channels/FileLock;
    .local p0, e:Ljava/lang/Exception;
    :catchall_a0
    move-exception p0

    move-object v9, p0

    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #lock:Ljava/nio/channels/FileLock;
    .local v0, lock:Ljava/nio/channels/FileLock;
    move-object v1, v9

    goto :goto_81

    .line 547
    .end local v0           #lock:Ljava/nio/channels/FileLock;
    .end local p0           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_a6
    move-exception p0

    move-object v1, v7

    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .restart local v1       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v6

    .end local v6           #in:Ljava/io/InputStream;
    .local v0, in:Ljava/io/InputStream;
    goto :goto_71

    .end local v0           #in:Ljava/io/InputStream;
    .end local v1           #lock:Ljava/nio/channels/FileLock;
    .restart local v3       #lock:Ljava/nio/channels/FileLock;
    .restart local v6       #in:Ljava/io/InputStream;
    :catch_aa
    move-exception p0

    move-object v1, v3

    .end local v3           #lock:Ljava/nio/channels/FileLock;
    .restart local v1       #lock:Ljava/nio/channels/FileLock;
    move-object v0, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_71
.end method

.method private static loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .registers 16
    .parameter "prefs"
    .parameter "node"

    .prologue
    .line 414
    const-string v12, "node"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 415
    .local v3, children:Lorg/w3c/dom/NodeList;
    const-string v12, "map/entry"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 417
    .local v4, entries:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 418
    .local v2, childNumber:I
    new-array v10, v2, [Ljava/util/prefs/Preferences;

    .line 419
    .local v10, prefChildren:[Ljava/util/prefs/Preferences;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 420
    .local v6, entryNumber:I
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    iget-object v13, v12, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 421
    :try_start_1d
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 422
    monitor-exit v13

    .line 442
    .end local p0
    :cond_28
    return-void

    .line 424
    .restart local p0
    :cond_29
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2a
    if-ge v7, v6, :cond_44

    .line 425
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 426
    .local v5, entry:Lorg/w3c/dom/Element;
    const-string v12, "key"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, key:Ljava/lang/String;
    const-string v12, "value"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 428
    .local v11, value:Ljava/lang/String;
    invoke-virtual {p0, v8, v11}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 431
    .end local v5           #entry:Lorg/w3c/dom/Element;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_44
    const/4 v7, 0x0

    :goto_45
    if-ge v7, v2, :cond_5c

    .line 432
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 433
    .local v1, child:Lorg/w3c/dom/Element;
    const-string v12, "name"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, name:Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v12

    aput-object v12, v10, v7

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 436
    .end local v1           #child:Lorg/w3c/dom/Element;
    .end local v9           #name:Ljava/lang/String;
    :cond_5c
    monitor-exit v13
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_6e

    .line 439
    const/4 v7, 0x0

    .end local p0
    :goto_5e
    if-ge v7, v2, :cond_28

    .line 440
    aget-object v12, v10, v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {v12, p0}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 436
    .end local v7           #i:I
    .restart local p0
    :catchall_6e
    move-exception v12

    :try_start_6f
    monitor-exit v13
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v12
.end method

.method private static selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 18
    .parameter "documentElement"
    .parameter "string"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-string v15, "entry"

    .line 449
    const/4 v9, 0x0

    .line 451
    .local v9, result:Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, input:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string v11, "/"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, path:[Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 457
    .local v2, childNodes:Lorg/w3c/dom/NodeList;
    aget-object v11, v8, v13

    const-string v12, "entry"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    aget-object v11, v8, v13

    const-string v12, "node"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_56

    .line 458
    :cond_2b
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_bd

    .line 459
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 460
    .local v6, next:Lorg/w3c/dom/Node;
    instance-of v11, v6, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_53

    .line 461
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v8, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    instance-of v11, v6, Lorg/w3c/dom/Node;

    if-eqz v11, :cond_53

    .line 463
    check-cast v6, Lorg/w3c/dom/Node;

    .end local v6           #next:Lorg/w3c/dom/Node;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 467
    .end local v3           #i:I
    :cond_56
    aget-object v11, v8, v13

    const-string v12, "map"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bd

    aget-object v11, v8, v14

    const-string v12, "entry"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 468
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6b
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_bd

    .line 469
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 470
    .restart local v6       #next:Lorg/w3c/dom/Node;
    instance-of v11, v6, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_ba

    .line 471
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v8, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    instance-of v11, v6, Lorg/w3c/dom/Node;

    if-eqz v11, :cond_ba

    .line 473
    check-cast v6, Lorg/w3c/dom/Node;

    .end local v6           #next:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 474
    .local v7, nextChildNodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_94
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v5, v11, :cond_ba

    .line 475
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 476
    .local v10, subnext:Lorg/w3c/dom/Node;
    instance-of v11, v10, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_b7

    .line 477
    move-object v0, v10

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v11, v0

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v8, v14

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    .line 478
    check-cast v10, Lorg/w3c/dom/Node;

    .end local v10           #subnext:Lorg/w3c/dom/Node;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 468
    .end local v5           #j:I
    .end local v7           #nextChildNodes:Lorg/w3c/dom/NodeList;
    :cond_ba
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 487
    .end local v3           #i:I
    :cond_bd
    new-instance v9, Ljava/util/prefs/NodeSet;

    .end local v9           #result:Lorg/w3c/dom/NodeList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/prefs/NodeSet;-><init>(Ljava/util/Iterator;)V

    .line 489
    .restart local v9       #result:Lorg/w3c/dom/NodeList;
    return-object v9
.end method
