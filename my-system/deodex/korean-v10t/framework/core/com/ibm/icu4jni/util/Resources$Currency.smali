.class final Lcom/ibm/icu4jni/util/Resources$Currency;
.super Ljava/util/ResourceBundle;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/util/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Currency"
.end annotation


# instance fields
.field private locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/ibm/icu4jni/util/Resources$Currency;->locale:Ljava/lang/String;

    .line 410
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
    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/ibm/icu4jni/util/Resources$Currency;->locale:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/util/Resources;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
