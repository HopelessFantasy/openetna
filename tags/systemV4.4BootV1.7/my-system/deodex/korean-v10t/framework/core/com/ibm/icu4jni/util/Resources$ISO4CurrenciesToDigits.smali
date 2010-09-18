.class final Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;
.super Ljava/util/ResourceBundle;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/util/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISO4CurrenciesToDigits"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu4jni/util/Resources$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    .line 357
    const-string v1, "XXX"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 358
    const-string v1, "-1"

    .line 365
    :goto_a
    return-object v1

    .line 360
    :cond_b
    invoke-static {p1}, Lcom/ibm/icu4jni/util/Resources;->access$700(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, res:I
    if-gez v0, :cond_1f

    .line 362
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "couldn\'t find resource."

    const-class v3, Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method
