.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field public static final LITERAL:I = 0x10

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNIX_LINES:I = 0x1

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field private flags:I

.field transient mGroupCount:I

.field transient mNativePattern:I

.field private pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "pattern"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_f

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CANON_EQ flag not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_f
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 237
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 3
    .parameter "pattern"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private compileImpl(Ljava/lang/String;I)V
    .registers 4
    .parameter "pattern"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 252
    if-nez p1, :cond_8

    .line 253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 256
    :cond_8
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_10

    .line 257
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    :cond_10
    and-int/lit8 p2, p2, 0x2f

    .line 264
    invoke-static {p1, p2}, Lcom/ibm/icu4jni/regex/NativeRegEx;->open(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern;->mNativePattern:I

    .line 265
    iget v0, p0, Ljava/util/regex/Pattern;->mNativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->groupCount(I)I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern;->mGroupCount:I

    .line 266
    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "regex"
    .parameter "input"

    .prologue
    .line 339
    new-instance v0, Ljava/util/regex/Matcher;

    new-instance v1, Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "s"

    .prologue
    const-string v5, "\\E"

    .line 441
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 442
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 444
    .local v0, apos:I
    :goto_e
    const-string v3, "\\E"

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, k:I
    if-ltz v1, :cond_28

    .line 445
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\\\\E\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    add-int/lit8 v0, v1, 0x2

    goto :goto_e

    .line 449
    :cond_28
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 476
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Pattern;->flags:I

    invoke-direct {p0, v0, v1}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)V

    .line 477
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget v0, p0, Ljava/util/regex/Pattern;->mNativePattern:I

    if-eqz v0, :cond_9

    .line 461
    iget v0, p0, Ljava/util/regex/Pattern;->mNativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->close(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 465
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 467
    return-void

    .line 465
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flags()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 3
    .parameter "input"

    .prologue
    .line 315
    new-instance v0, Ljava/util/regex/Matcher;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .registers 12
    .parameter "inputSeq"
    .parameter "limit"

    .prologue
    const-string v8, ""

    .line 388
    if-gtz p2, :cond_3b

    const v6, 0x7fffffff

    move v4, v6

    .line 390
    .local v4, maxLength:I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, input:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/regex/Matcher;

    invoke-direct {v3, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 394
    .local v3, matcher:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 399
    .local v5, savedPos:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 400
    :goto_1d
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v4, :cond_3d

    .line 401
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    goto :goto_1d

    .end local v1           #input:Ljava/lang/String;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #maxLength:I
    .end local v5           #savedPos:I
    :cond_3b
    move v4, p2

    .line 388
    goto :goto_8

    .line 407
    .restart local v1       #input:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    .restart local v4       #maxLength:I
    .restart local v5       #savedPos:I
    :cond_3d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v4, :cond_50

    .line 408
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6d

    .line 409
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_50
    :goto_50
    if-nez p2, :cond_73

    .line 417
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v0, v6, v7

    .line 419
    .local v0, i:I
    :goto_59
    if-lez v0, :cond_73

    const-string v6, ""

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 420
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 411
    .end local v0           #i:I
    :cond_6d
    const-string v6, ""

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 425
    :cond_73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
