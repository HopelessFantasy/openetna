.class final Lcom/ibm/icu4jni/util/Resources$ISO4Currencies;
.super Ljava/util/ResourceBundle;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/util/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISO4Currencies"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu4jni/util/Resources$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/ibm/icu4jni/util/Resources$ISO4Currencies;-><init>()V

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
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 333
    invoke-static {p1}, Lcom/ibm/icu4jni/util/Resources;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
