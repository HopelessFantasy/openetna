.class Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu4jni/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/ResourceBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;


# direct methods
.method constructor <init>(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;->this$0:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle;
    .registers 3

    .prologue
    .line 43
    const-string v0, "org.apache.harmony.luni.internal.locale.Locale"

    iget-object v1, p0, Lcom/ibm/icu4jni/text/DecimalFormatSymbols$1;->this$0:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-static {v1}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->access$000(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
