.class Lorg/apache/harmony/luni/util/MsgHelp$1;
.super Ljava/lang/Object;
.source "MsgHelp.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/util/MsgHelp;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;

.field final synthetic val$resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/harmony/luni/util/MsgHelp$1;->val$resource:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/luni/util/MsgHelp$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/luni/util/MsgHelp$1;->val$resource:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/luni/util/MsgHelp$1;->val$locale:Ljava/util/Locale;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
