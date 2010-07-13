.class final Lcom/ibm/icu4jni/util/Resources$ISO3Countries;
.super Ljava/util/ResourceBundle;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/util/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISO3Countries"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu4jni/util/Resources$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/ibm/icu4jni/util/Resources$ISO3Countries;-><init>()V

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
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 293
    invoke-static {p1}, Lcom/ibm/icu4jni/util/Resources;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
