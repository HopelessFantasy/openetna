.class final Lcom/ibm/icu4jni/util/Resources$Locale;
.super Ljava/util/ListResourceBundle;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/util/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Locale"
.end annotation


# instance fields
.field private locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/ibm/icu4jni/util/Resources$Locale;->locale:Ljava/lang/String;

    .line 494
    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/ibm/icu4jni/util/Resources$Locale;->locale:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/util/Resources;->access$1200(Ljava/lang/String;Z)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
