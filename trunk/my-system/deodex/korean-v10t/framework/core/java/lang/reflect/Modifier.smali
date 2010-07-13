.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field static final ANNOTATION:I = 0x2000

.field static final BRIDGE:I = 0x40

.field static final ENUM:I = 0x4000

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field public static final NATIVE:I = 0x100

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICT:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field static final SYNTHETIC:I = 0x1000

.field public static final TRANSIENT:I = 0x80

.field static final VARARGS:I = 0x80

.field public static final VOLATILE:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static isAbstract(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 154
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isFinal(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 170
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isInterface(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 186
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isNative(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 202
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPrivate(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 218
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isProtected(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 234
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPublic(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 250
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isStatic(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 266
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isStrict(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 282
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isSynchronized(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 298
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isTransient(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 314
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVolatile(I)Z
    .registers 2
    .parameter "modifiers"

    .prologue
    .line 330
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4
    .parameter "modifiers"

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 354
    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_10
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 357
    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :cond_1b
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 360
    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :cond_26
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 363
    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    :cond_31
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 366
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_3c
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 369
    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_47
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 372
    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_52
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 375
    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_5d
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isSynchronized(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 378
    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :cond_68
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 381
    const-string v1, "native "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_73
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStrict(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 384
    const-string v1, "strictfp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    :cond_7e
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 387
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_92

    .line 390
    const-string v1, ""

    .line 393
    :goto_91
    return-object v1

    .line 392
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_91
.end method
