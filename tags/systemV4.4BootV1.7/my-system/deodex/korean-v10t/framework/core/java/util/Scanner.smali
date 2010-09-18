.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final DEFAULT_TRUNK_SIZE:I = 0x400

.field private static final DIPLOID:I = 0x2

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cacheHasNextValue:Ljava/lang/Object;

.field private cachehasNextIndex:I

.field private closed:Z

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private integerRadix:I

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 66
    const-string v3, "\\p{javaWhitespace}+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    .line 70
    const-string v3, "true|false"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    const-string v2, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    .line 86
    .local v2, terminator:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, multiTerminator:Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, line:Ljava/lang/StringBuilder;
    const-string v3, ".*("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")|.+("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    const-string v3, "(?s).*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .parameter "src"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 121
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->integerRadix:I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 126
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 129
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 132
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    .line 136
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    .line 140
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 145
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 191
    if-nez p1, :cond_34

    .line 192
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "KA00a"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_34
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    .local v1, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_47

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "KA009"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_47
    :try_start_47
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_4e} :catch_52

    .line 210
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 211
    return-void

    .line 202
    :catch_52
    move-exception v2

    move-object v0, v2

    .line 204
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_61

    .line 208
    :goto_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :catch_61
    move-exception v2

    goto :goto_57
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 234
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 121
    const/16 v1, 0xa

    iput v1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 126
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 129
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 132
    iput v2, p0, Ljava/util/Scanner;->bufferLength:I

    .line 136
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 140
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 145
    iput-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 149
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 250
    if-nez p1, :cond_34

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "KA00b"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3b} :catch_3f

    .line 259
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 260
    return-void

    .line 256
    :catch_3f
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 126
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 129
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 132
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 140
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 145
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 270
    if-nez p1, :cond_2e

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 273
    :cond_2e
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 274
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 126
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 129
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 132
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 140
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 145
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 221
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 222
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 286
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 121
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 126
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 129
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 132
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 140
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 145
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 302
    if-nez p1, :cond_34

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "KA00d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_34
    if-nez p2, :cond_42

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KA009"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_42
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 311
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 312
    return-void
.end method

.method private addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 10
    .parameter "unSignNumeral"

    .prologue
    const-string v7, "\\Q"

    const-string v6, "\\E"

    const-string v5, ""

    .line 1936
    const-string v0, ""

    .line 1937
    .local v0, negativePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1938
    .local v1, negativeSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1941
    :cond_37
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1944
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1947
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 10
    .parameter "unSignNumeral"

    .prologue
    const-string v7, "\\Q"

    const-string v6, "\\E"

    const-string v5, ""

    .line 1918
    const-string v0, ""

    .line 1919
    .local v0, positivePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1920
    .local v1, positiveSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    :cond_37
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1926
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1929
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private checkClosed()V
    .registers 2

    .prologue
    .line 1787
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_a

    .line 1788
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1790
    :cond_a
    return-void
.end method

.method private checkNull(Ljava/util/regex/Pattern;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1797
    if-nez p1, :cond_8

    .line 1798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1800
    :cond_8
    return-void
.end method

.method private expandBuffer()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2241
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 2242
    .local v4, oldPosition:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    .line 2243
    .local v2, oldCapacity:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 2244
    .local v3, oldLimit:I
    mul-int/lit8 v1, v2, 0x2

    .line 2245
    .local v1, newCapacity:I
    new-array v0, v1, [C

    .line 2246
    .local v0, newBuffer:[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2247
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 2248
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2249
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2250
    return-void
.end method

.method private findPostDelimiter()I
    .registers 5

    .prologue
    .line 2172
    const/4 v1, 0x0

    .line 2173
    .local v1, tokenEndIndex:I
    const/4 v0, 0x0

    .line 2174
    .local v0, findComplete:Z
    :cond_2
    :goto_2
    if-nez v0, :cond_34

    .line 2175
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2176
    const/4 v0, 0x1

    .line 2177
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2179
    const/4 v0, 0x0

    goto :goto_2

    .line 2182
    :cond_27
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_32

    .line 2183
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2184
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_2

    .line 2186
    :cond_32
    const/4 v2, -0x1

    .line 2192
    :goto_33
    return v2

    .line 2190
    :cond_34
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2191
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2192
    goto :goto_33
.end method

.method private findPreDelimiter()I
    .registers 5

    .prologue
    .line 2113
    const/4 v0, 0x0

    .line 2114
    .local v0, findComplete:Z
    :cond_1
    :goto_1
    if-nez v0, :cond_39

    .line 2115
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2116
    const/4 v0, 0x1

    .line 2118
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    .line 2121
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    .line 2122
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2123
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 2124
    const/4 v0, 0x0

    goto :goto_1

    .line 2128
    :cond_2c
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_37

    .line 2129
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2130
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1

    .line 2132
    :cond_37
    const/4 v2, -0x1

    .line 2138
    :goto_38
    return v2

    .line 2136
    :cond_39
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 2137
    .local v1, tokenStartIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2138
    goto :goto_38
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .registers 20

    .prologue
    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    check-cast v3, Ljava/text/DecimalFormat;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1862
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "([0-9]|(\\p{javaDigit}))"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v6, digit:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "[\\p{javaDigit}&&[^0]]"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1864
    .local v14, nonZeroDigit:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1866
    .local v15, numeral:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\\"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1868
    .local v5, decimalSeparator:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*+|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "++)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1872
    .local v4, decimalNumeral:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "([eE][+-]?"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "+)?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1875
    .local v7, exponent:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "(([-+]?"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "))"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1882
    .local v3, decimal:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "([-+]?0[xX][0-9a-fA-F]*"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\\."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1885
    .local v10, hexFloat:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v11

    .line 1886
    .local v11, localNaN:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v12

    .line 1888
    .local v12, localeInfinity:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "(NaN|\\Q"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\\E|Infinity|\\Q"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\\E)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1890
    .local v13, nonNumber:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "((([-+]?("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")))|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "))"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1894
    .local v16, singedNonNumber:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1896
    .local v9, floatString:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 1897
    .local v8, floatPattern:Ljava/util/regex/Pattern;
    return-object v8
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .registers 13
    .parameter "radix"

    .prologue
    const-string v10, "((?i)["

    .line 1832
    const/4 v8, 0x2

    if-lt p1, v8, :cond_9

    const/16 v8, 0x24

    if-le p1, v8, :cond_15

    .line 1833
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "KA00e"

    invoke-static {v9, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1836
    :cond_15
    iget-object v8, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    check-cast v8, Ljava/text/DecimalFormat;

    iput-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1838
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1839
    .local v1, allAvailableDigits:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, ASCIIDigit:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1842
    .local v5, nonZeroASCIIDigit:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1844
    .local v2, digit:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1846
    .local v6, nonZeroDigit:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, v6}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1848
    .local v7, numeral:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(([-+]?("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")))|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1852
    .local v3, integer:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1853
    .local v4, integerPattern:Ljava/util/regex/Pattern;
    return-object v4
.end method

.method private getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .parameter "digit"
    .parameter "nonZeroDigit"

    .prologue
    .line 1902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, groupSeparator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1909
    .local v1, groupedNumeral:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++)|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1911
    .local v2, numeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private initialization()V
    .registers 3

    .prologue
    .line 1777
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 1778
    iget-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1779
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1780
    return-void
.end method

.method private readMore()V
    .registers 7

    .prologue
    .line 2201
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 2202
    .local v2, oldPosition:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2204
    .local v1, oldBufferLength:I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_15

    .line 2205
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    .line 2209
    :cond_15
    const/4 v3, 0x0

    .line 2211
    .local v3, readCount:I
    :try_start_16
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2212
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2213
    :cond_26
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_41

    move-result v3

    if-eqz v3, :cond_26

    .line 2230
    :goto_30
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2231
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2232
    const/4 v4, -0x1

    if-ne v4, v3, :cond_4f

    .line 2233
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 2237
    :goto_40
    return-void

    .line 2216
    :catch_41
    move-exception v4

    move-object v0, v4

    .line 2220
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2225
    const/4 v3, -0x1

    .line 2226
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_30

    .line 2235
    .end local v0           #e:Ljava/io/IOException;
    :cond_4f
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_40
.end method

.method private recoverPreviousStatus()V
    .registers 2

    .prologue
    .line 1825
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1826
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;
    .registers 14
    .parameter "token"
    .parameter "type"

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    .line 1981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v6, tokenBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v6}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v3

    .line 1984
    .local v3, negative:Z
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1986
    .local v1, groupSeparator:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1987
    .local v5, separatorIndex:I
    :goto_1b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_27

    .line 1988
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1991
    :cond_27
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, decimalSeparator:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1994
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v4, result:Ljava/lang/StringBuilder;
    sget-object v7, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_61

    .line 1996
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_61

    .line 1997
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_5e

    .line 1999
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1996
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 2003
    .end local v2           #i:I
    :cond_61
    sget-object v7, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_7e

    .line 2004
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 2006
    const-string v7, "NaN"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_85

    .line 2021
    move-object v4, v6

    .line 2023
    :cond_85
    if-eq v9, v5, :cond_8c

    .line 2024
    const-string v7, "."

    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    :cond_8c
    if-eqz v3, :cond_94

    .line 2028
    const/4 v7, 0x0

    const/16 v8, 0x2d

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2030
    :cond_94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2007
    :cond_99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 2009
    const-string v7, "Infinity"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 2011
    :cond_b3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_7e

    .line 2012
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_cf

    .line 2013
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2011
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "floatString"

    .prologue
    const/4 v4, -0x1

    .line 1955
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v4, v3, :cond_11

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_13

    :cond_11
    move-object v3, p1

    .line 1973
    :goto_12
    return-object v3

    .line 1964
    :cond_13
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, exponentIndex:I
    if-ne v4, v1, :cond_23

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v4, v1, :cond_50

    .line 1966
    :cond_23
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, decimalNumeralString:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1969
    .local v2, exponentString:Ljava/lang/String;
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 1973
    .end local v0           #decimalNumeralString:Ljava/lang/String;
    .end local v2           #exponentString:Ljava/lang/String;
    :cond_50
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v3

    goto :goto_12
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .registers 13
    .parameter "tokenBuilder"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    const-string v8, ""

    .line 2037
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    .line 2038
    .local v3, positivePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    .line 2039
    .local v4, positiveSuffix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 2040
    .local v1, negativePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    .line 2042
    .local v2, negativeSuffix:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_28

    .line 2043
    invoke-virtual {p1, v7, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2045
    :cond_28
    const-string v5, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3d

    .line 2047
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2049
    :cond_3d
    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_5b

    .line 2051
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2055
    :cond_5b
    const/4 v0, 0x0

    .line 2056
    .local v0, negative:Z
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_68

    .line 2057
    invoke-virtual {p1, v7, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2058
    const/4 v0, 0x1

    .line 2060
    :cond_68
    const-string v5, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7e

    .line 2062
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2063
    const/4 v0, 0x1

    .line 2065
    :cond_7e
    const-string v5, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_9d

    .line 2067
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2070
    const/4 v0, 0x1

    .line 2072
    :cond_9d
    return v0
.end method

.method private resetMatcher()V
    .registers 4

    .prologue
    .line 1806
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_18

    .line 1807
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1811
    :goto_e
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1812
    return-void

    .line 1809
    :cond_18
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_e
.end method

.method private saveCurrentStatus()V
    .registers 2

    .prologue
    .line 1818
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1819
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .registers 8
    .parameter "findIndex"

    .prologue
    const/4 v5, -0x1

    .line 2147
    const/4 v0, 0x0

    .line 2149
    .local v0, setSuccess:Z
    if-ne v5, p1, :cond_18

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_18

    .line 2150
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2151
    .local v2, tokenStartIndex:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2152
    .local v1, tokenEndIndex:I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2153
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2154
    const/4 v0, 0x1

    .line 2157
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_18
    if-eq v5, p1, :cond_3a

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 2158
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2159
    .restart local v2       #tokenStartIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2160
    .restart local v1       #tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2162
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2163
    const/4 v0, 0x1

    .line 2165
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_3a
    return v0
.end method

.method private setTokenRegion()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2082
    const/4 v1, 0x0

    .line 2084
    .local v1, tokenStartIndex:I
    const/4 v0, 0x0

    .line 2086
    .local v0, tokenEndIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2087
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2089
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    .line 2090
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v5

    .line 2105
    :goto_1e
    return v2

    .line 2093
    :cond_1f
    invoke-direct {p0}, Ljava/util/Scanner;->findPostDelimiter()I

    move-result v0

    .line 2095
    const/4 v2, -0x1

    if-ne v2, v0, :cond_34

    .line 2097
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_2e

    .line 2098
    const/4 v2, 0x0

    goto :goto_1e

    .line 2100
    :cond_2e
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2101
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2104
    :cond_34
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move v2, v5

    .line 2105
    goto :goto_1e
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 324
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_5

    .line 335
    :goto_4
    return-void

    .line 327
    :cond_5
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_12

    .line 329
    :try_start_b
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_16

    .line 334
    :cond_12
    :goto_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_4

    .line 330
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 331
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_12
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 442
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 9
    .parameter "pattern"

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 365
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 366
    const/4 v1, 0x0

    .line 368
    .local v1, horizonLineSeparator:I
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v5, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 369
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, findComplete:Z
    const/4 v3, 0x0

    .line 373
    .local v3, terminatorLength:I
    :goto_19
    if-nez v0, :cond_48

    .line 374
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 375
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 376
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int v3, v4, v5

    .line 377
    const/4 v0, 0x1

    goto :goto_19

    .line 379
    :cond_39
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_44

    .line 380
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 381
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_19

    .line 383
    :cond_44
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 384
    const/4 v0, 0x1

    goto :goto_19

    .line 389
    :cond_48
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 397
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 398
    .local v2, oldLimit:I
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 401
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v4, v5, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 402
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 404
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 406
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-ne v1, v4, :cond_7c

    .line 407
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 409
    :cond_7c
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 412
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 415
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 423
    :goto_8a
    return-object v4

    .line 419
    :cond_8b
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 422
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 423
    const/4 v4, 0x0

    goto :goto_8a
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    .line 556
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 11
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 480
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 481
    if-gez p2, :cond_16

    .line 482
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "KA00e"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    :cond_16
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 489
    .local v0, findEndIndex:I
    const/4 v1, 0x0

    .line 490
    .local v1, horizonEndIndex:I
    if-nez p2, :cond_58

    .line 491
    const v1, 0x7fffffff

    .line 496
    :cond_23
    :goto_23
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 501
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v4, :cond_5d

    move v2, v7

    .line 507
    .local v2, isHorizonInBuffer:Z
    :goto_30
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v4, v5, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 508
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 509
    if-nez v2, :cond_45

    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v4, :cond_65

    .line 510
    :cond_45
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 528
    :cond_4b
    if-eqz v3, :cond_70

    .line 529
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 530
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 534
    :goto_57
    return-object v3

    .line 493
    .end local v2           #isHorizonInBuffer:Z
    :cond_58
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v4, p2

    goto :goto_23

    :cond_5d
    move v2, v6

    .line 503
    goto :goto_30

    .line 517
    .restart local v2       #isHorizonInBuffer:Z
    :cond_5f
    if-nez v2, :cond_4b

    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_4b

    .line 523
    :cond_65
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_23

    .line 524
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 525
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_23

    .line 532
    :cond_70
    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_57
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 570
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .registers 3
    .parameter "pattern"

    .prologue
    .line 624
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    const/4 v2, 0x0

    .line 587
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 588
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 589
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 590
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 592
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_17

    .line 593
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    move v1, v2

    .line 605
    :goto_16
    return v1

    .line 596
    :cond_17
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, hasNext:Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 600
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 602
    const/4 v0, 0x1

    .line 604
    :cond_2d
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    move v1, v0

    .line 605
    goto :goto_16
.end method

.method public hasNextBigDecimal()Z
    .registers 6

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 639
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 640
    .local v3, isBigDecimalValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 641
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    :try_start_15
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1e

    .line 645
    const/4 v3, 0x1

    .line 650
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v3

    .line 646
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1e
    move-exception v4

    move-object v0, v4

    .line 647
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1d
.end method

.method public hasNextBigInteger()Z
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 682
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 683
    .local v3, isBigIntegerValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 684
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 687
    :try_start_17
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_20

    .line 688
    const/4 v3, 0x1

    .line 693
    .end local v1           #intString:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v3

    .line 689
    .restart local v1       #intString:Ljava/lang/String;
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 690
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1f
.end method

.method public hasNextBoolean()Z
    .registers 2

    .prologue
    .line 707
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .registers 2

    .prologue
    .line 721
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 739
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 740
    .local v3, isByteValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 741
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 744
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 745
    const/4 v3, 0x1

    .line 750
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 746
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 747
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextDouble()Z
    .registers 6

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 765
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 766
    .local v3, isDoubleValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 767
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 770
    :try_start_15
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 771
    const/4 v3, 0x1

    .line 776
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 772
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 773
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextFloat()Z
    .registers 6

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 791
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 792
    .local v3, isFloatValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 793
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 796
    :try_start_15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 797
    const/4 v3, 0x1

    .line 802
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 798
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 799
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextInt()Z
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 835
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 836
    .local v3, isIntValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 837
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 840
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 841
    const/4 v3, 0x1

    .line 846
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 842
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 843
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextLine()Z
    .registers 5

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 861
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 862
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 864
    const/4 v0, 0x0

    .line 866
    .local v0, hasNextLine:Z
    :cond_14
    :goto_14
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 867
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v2, :cond_37

    .line 868
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 869
    const/4 v0, 0x1

    .line 883
    :goto_2e
    return v0

    .line 873
    :cond_2f
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_37

    .line 874
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2e

    .line 878
    :cond_37
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_14

    .line 879
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 880
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_14
.end method

.method public hasNextLong()Z
    .registers 2

    .prologue
    .line 897
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 914
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 915
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 916
    .local v3, isLongValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 917
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 920
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 921
    const/4 v3, 0x1

    .line 926
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 922
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 923
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextShort()Z
    .registers 2

    .prologue
    .line 941
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 958
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 959
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 960
    .local v3, isShortValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 961
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 964
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 965
    const/4 v3, 0x1

    .line 970
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 966
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 967
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .registers 2

    .prologue
    .line 1008
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_a

    .line 1009
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1011
    :cond_a
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1027
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1086
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1049
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1051
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 1052
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1053
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1055
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1057
    :cond_1b
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1058
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1059
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1060
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    .line 1063
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1064
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .registers 7

    .prologue
    .line 1110
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1111
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1112
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1113
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_14

    .line 1114
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1115
    check-cast v4, Ljava/math/BigDecimal;

    .end local v4           #obj:Ljava/lang/Object;
    move-object v5, v4

    .line 1128
    :goto_13
    return-object v5

    .line 1117
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_14
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1118
    .local v2, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, floatString:Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1122
    :try_start_20
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_25} :catch_27

    .local v0, bigDecimalValue:Ljava/math/BigDecimal;
    move-object v5, v0

    .line 1128
    goto :goto_13

    .line 1123
    .end local v0           #bigDecimalValue:Ljava/math/BigDecimal;
    :catch_27
    move-exception v5

    move-object v1, v5

    .line 1124
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1125
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1126
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1146
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .registers 8
    .parameter "radix"

    .prologue
    .line 1174
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1175
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1176
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1177
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_14

    .line 1178
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1179
    check-cast v4, Ljava/math/BigInteger;

    .end local v4           #obj:Ljava/lang/Object;
    move-object v5, v4

    .line 1192
    :goto_13
    return-object v5

    .line 1181
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_14
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1182
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1186
    :try_start_22
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_27} :catch_29

    .local v0, bigIntegerValue:Ljava/math/BigInteger;
    move-object v5, v0

    .line 1192
    goto :goto_13

    .line 1187
    .end local v0           #bigIntegerValue:Ljava/math/BigInteger;
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1188
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1189
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1190
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .registers 2

    .prologue
    .line 1210
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .registers 2

    .prologue
    .line 1228
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .registers 8
    .parameter "radix"

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1257
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1258
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1259
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_17

    .line 1260
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1261
    check-cast v4, Ljava/lang/Byte;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 1274
    :goto_16
    return v5

    .line 1263
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1264
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1266
    const/4 v0, 0x0

    .line 1268
    .local v0, byteValue:B
    :try_start_26
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v0

    move v5, v0

    .line 1274
    goto :goto_16

    .line 1269
    :catch_2c
    move-exception v1

    .line 1270
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1271
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1272
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .registers 9

    .prologue
    .line 1301
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1302
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1303
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1304
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_17

    .line 1305
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1306
    check-cast v5, Ljava/lang/Double;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 1319
    :goto_16
    return-wide v6

    .line 1308
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1309
    .local v3, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    .line 1310
    .local v4, floatString:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1311
    const-wide/16 v0, 0x0

    .line 1313
    .local v0, doubleValue:D
    :try_start_25
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_28} :catch_2b

    move-result-wide v0

    move-wide v6, v0

    .line 1319
    goto :goto_16

    .line 1314
    :catch_2b
    move-exception v2

    .line 1315
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1316
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1317
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .registers 7

    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1347
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1348
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1349
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_17

    .line 1350
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1351
    check-cast v4, Ljava/lang/Float;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1364
    :goto_16
    return v5

    .line 1353
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1354
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1356
    const/4 v3, 0x0

    .line 1358
    .local v3, floatValue:F
    :try_start_24
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_27} :catch_2a

    move-result v3

    move v5, v3

    .line 1364
    goto :goto_16

    .line 1359
    :catch_2a
    move-exception v0

    .line 1360
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1361
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1362
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 1382
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 8
    .parameter "radix"

    .prologue
    .line 1411
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1412
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1413
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1414
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 1415
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1416
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1429
    :goto_16
    return v5

    .line 1418
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1419
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1420
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1421
    const/4 v2, 0x0

    .line 1423
    .local v2, intValue:I
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v2

    move v5, v2

    .line 1429
    goto :goto_16

    .line 1424
    :catch_2c
    move-exception v0

    .line 1425
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1426
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1427
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1447
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1449
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1450
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1451
    const/4 v0, 0x0

    .line 1453
    .local v0, result:Ljava/lang/String;
    :cond_15
    :goto_15
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1454
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v2, v3, :cond_5f

    .line 1455
    :cond_2b
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1456
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1457
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1472
    if-eqz v0, :cond_52

    .line 1473
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1474
    .local v1, terminatorMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1475
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .end local v1           #terminatorMatcher:Ljava/util/regex/Matcher;
    :cond_52
    return-object v0

    .line 1461
    :cond_53
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_5f

    .line 1462
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1463
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1466
    :cond_5f
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_15

    .line 1467
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1468
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_15
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 1496
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .registers 10
    .parameter "radix"

    .prologue
    .line 1525
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1526
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1527
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1528
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_17

    .line 1529
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1530
    check-cast v5, Ljava/lang/Long;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1543
    :goto_16
    return-wide v6

    .line 1532
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1533
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, intString:Ljava/lang/String;
    sget-object v6, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1535
    const-wide/16 v3, 0x0

    .line 1537
    .local v3, longValue:J
    :try_start_27
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_2d

    move-result-wide v3

    move-wide v6, v3

    .line 1543
    goto :goto_16

    .line 1538
    :catch_2d
    move-exception v0

    .line 1539
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1540
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1541
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .registers 2

    .prologue
    .line 1561
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .registers 8
    .parameter "radix"

    .prologue
    .line 1590
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1591
    iget-object v3, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1592
    .local v3, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1593
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_17

    .line 1594
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1595
    check-cast v3, Ljava/lang/Short;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    .line 1608
    :goto_16
    return v5

    .line 1597
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1598
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1600
    const/4 v4, 0x0

    .line 1602
    .local v4, shortValue:S
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v4

    move v5, v4

    .line 1608
    goto :goto_16

    .line 1603
    :catch_2c
    move-exception v0

    .line 1604
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1605
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1606
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .registers 2

    .prologue
    .line 1618
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1681
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 8
    .parameter "pattern"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1639
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1640
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1641
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1642
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1644
    :cond_16
    :goto_16
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1645
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v1, v2, :cond_36

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v1, v2, :cond_44

    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_44

    :cond_36
    move v0, v5

    .line 1647
    .local v0, matchInBuffer:Z
    :goto_37
    if-eqz v0, :cond_52

    .line 1648
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1649
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1663
    return-object p0

    .end local v0           #matchInBuffer:Z
    :cond_44
    move v0, v4

    .line 1645
    goto :goto_37

    .line 1653
    :cond_46
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_52

    .line 1654
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1655
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1658
    :cond_52
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_16

    .line 1659
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1660
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{(delimiter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(findStartIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(match succeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(closed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1726
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 1712
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 1713
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 3
    .parameter "l"

    .prologue
    .line 1738
    if-nez p1, :cond_8

    .line 1739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1741
    :cond_8
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1742
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .registers 4
    .parameter "radix"

    .prologue
    .line 1754
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_13

    .line 1755
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KA008"

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_13
    iput p1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 1759
    return-object p0
.end method
