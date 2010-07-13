.class Ljava/util/Formatter$Transformer$1;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Formatter$Transformer;->transfromFromLineSeparator()Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Formatter$Transformer;


# direct methods
.method constructor <init>(Ljava/util/Formatter$Transformer;)V
    .registers 2
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Ljava/util/Formatter$Transformer$1;->this$0:Ljava/util/Formatter$Transformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1521
    invoke-virtual {p0}, Ljava/util/Formatter$Transformer$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1522
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
