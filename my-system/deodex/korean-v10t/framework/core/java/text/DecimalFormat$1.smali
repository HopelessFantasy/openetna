.class Ljava/text/DecimalFormat$1;
.super Ljava/lang/Object;
.source "DecimalFormat.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/text/DecimalFormat;

.field final synthetic val$fieldName:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/text/DecimalFormat;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Ljava/text/DecimalFormat$1;->this$0:Ljava/text/DecimalFormat;

    iput-object p2, p0, Ljava/text/DecimalFormat$1;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Ljava/text/DecimalFormat$1;->val$fieldName:Ljava/lang/String;

    iput-object p4, p0, Ljava/text/DecimalFormat$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1507
    invoke-virtual {p0}, Ljava/text/DecimalFormat$1;->run()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Field;
    .registers 5

    .prologue
    .line 1508
    const/4 v1, 0x0

    .line 1510
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_1
    iget-object v2, p0, Ljava/text/DecimalFormat$1;->val$target:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/text/DecimalFormat$1;->val$fieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1512
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1513
    iget-object v2, p0, Ljava/text/DecimalFormat$1;->val$target:Ljava/lang/Object;

    iget-object v3, p0, Ljava/text/DecimalFormat$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    move-object v2, v1

    .line 1517
    :goto_19
    return-object v2

    .line 1514
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 1515
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_19
.end method
