.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$Field;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 2
    .parameter "locale"

    .prologue
    .line 110
    new-instance v0, Ljava/text/Format$1;

    invoke-direct {v0, p0}, Ljava/text/Format$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ResourceBundle;

    return-object p0
.end method

.method static upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z
    .registers 13
    .parameter "string"
    .parameter "position"
    .parameter "buffer"
    .parameter "stop"

    .prologue
    const/16 v8, 0x27

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 257
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, lastQuote:Z
    const/4 v5, 0x0

    .local v5, quote:Z
    move v2, v1

    .line 258
    .end local v1           #index:I
    .local v2, index:I
    :goto_f
    if-ge v2, v4, :cond_34

    .line 259
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, ch:C
    if-ne v0, v8, :cond_26

    .line 261
    if-eqz v3, :cond_1e

    .line 262
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    :cond_1e
    if-nez v5, :cond_24

    move v5, v7

    .line 265
    :goto_21
    const/4 v3, 0x1

    :goto_22
    move v2, v1

    .line 273
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_f

    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_24
    move v5, v6

    .line 264
    goto :goto_21

    .line 266
    :cond_26
    if-ne v0, p3, :cond_2f

    if-nez v5, :cond_2f

    .line 267
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move v6, v7

    .line 275
    .end local v0           #ch:C
    :goto_2e
    return v6

    .line 270
    .restart local v0       #ch:C
    :cond_2f
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 274
    .end local v0           #ch:C
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_34
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move v1, v2

    .line 275
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2e
.end method

.method static upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    .registers 13
    .parameter "string"
    .parameter "position"
    .parameter "buffer"
    .parameter "stop"
    .parameter "start"

    .prologue
    const/4 v7, 0x1

    .line 280
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .local v2, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, length:I
    const/4 v1, 0x1

    .line 281
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, quote:Z
    move v3, v2

    .line 282
    .end local v2           #index:I
    .local v3, index:I
    :goto_c
    if-ge v3, v4, :cond_33

    .line 283
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 284
    .local v0, ch:C
    const/16 v6, 0x27

    if-ne v0, v6, :cond_1b

    .line 285
    if-nez v5, :cond_27

    move v5, v7

    .line 287
    :cond_1b
    :goto_1b
    if-nez v5, :cond_2e

    .line 288
    if-ne v0, p3, :cond_21

    .line 289
    add-int/lit8 v1, v1, -0x1

    .line 291
    :cond_21
    if-nez v1, :cond_2a

    .line 292
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 293
    return v7

    .line 285
    :cond_27
    const/4 v6, 0x0

    move v5, v6

    goto :goto_1b

    .line 295
    :cond_2a
    if-ne v0, p4, :cond_2e

    .line 296
    add-int/lit8 v1, v1, 0x1

    .line 299
    :cond_2e
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    .line 300
    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_c

    .line 302
    .end local v0           #ch:C
    :cond_33
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "text.07"

    invoke-static {v7}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 105
    :goto_4
    return-object v1

    .line 104
    :catch_5
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .parameter "template"
    .parameter "fromChars"
    .parameter "toChars"
    .parameter "check"

    .prologue
    .line 122
    if-nez p4, :cond_a

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, p1

    .line 150
    :goto_9
    return-object v6

    .line 125
    :cond_a
    const/4 v5, 0x0

    .line 126
    .local v5, quote:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v4, output:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 128
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v2, :cond_61

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 131
    .local v3, next:C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_23

    .line 132
    if-nez v5, :cond_36

    const/4 v6, 0x1

    move v5, v6

    .line 134
    :cond_23
    :goto_23
    if-nez v5, :cond_39

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_39

    .line 135
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .end local v1           #index:I
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 132
    :cond_36
    const/4 v6, 0x0

    move v5, v6

    goto :goto_23

    .line 136
    :cond_39
    if-eqz p4, :cond_5d

    if-nez v5, :cond_5d

    const/16 v6, 0x61

    if-lt v3, v6, :cond_45

    const/16 v6, 0x7a

    if-le v3, v6, :cond_4d

    :cond_45
    const/16 v6, 0x41

    if-lt v3, v6, :cond_5d

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_5d

    .line 140
    :cond_4d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "text.05"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    :cond_5d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 146
    .end local v3           #next:C
    :cond_61
    if-eqz v5, :cond_6f

    .line 148
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "text.04"

    invoke-static {v7}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    :cond_6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9
.end method

.method public final format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "object"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .parameter "object"

    .prologue
    .line 211
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 226
    .local v0, position:Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_22

    .line 228
    :cond_17
    new-instance v2, Ljava/text/ParseException;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 230
    :cond_22
    return-object v1
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
