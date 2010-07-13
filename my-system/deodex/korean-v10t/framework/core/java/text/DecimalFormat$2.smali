.class Ljava/text/DecimalFormat$2;
.super Ljava/lang/Object;
.source "DecimalFormat.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/text/DecimalFormat;

.field final synthetic val$fieldName:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/text/DecimalFormat;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1531
    iput-object p1, p0, Ljava/text/DecimalFormat$2;->this$0:Ljava/text/DecimalFormat;

    iput-object p2, p0, Ljava/text/DecimalFormat$2;->val$target:Ljava/lang/Object;

    iput-object p3, p0, Ljava/text/DecimalFormat$2;->val$fieldName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 1532
    const/4 v2, 0x0

    .line 1533
    .local v2, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1535
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_2
    iget-object v3, p0, Ljava/text/DecimalFormat$2;->val$target:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/text/DecimalFormat$2;->val$fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1537
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1538
    iget-object v3, p0, Ljava/text/DecimalFormat$2;->val$target:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1a

    move-result-object v2

    move-object v3, v2

    .line 1542
    .end local v2           #result:Ljava/lang/Object;
    :goto_19
    return-object v3

    .line 1539
    .restart local v2       #result:Ljava/lang/Object;
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 1540
    .local v0, e1:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_19
.end method
