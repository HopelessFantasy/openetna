.class Ljava/text/Format$1;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/text/Format;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Ljava/text/Format$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/text/Format$1;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle;
    .registers 3

    .prologue
    .line 113
    const-string v0, "org.apache.harmony.luni.internal.locale.Locale"

    iget-object v1, p0, Ljava/text/Format$1;->val$locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
