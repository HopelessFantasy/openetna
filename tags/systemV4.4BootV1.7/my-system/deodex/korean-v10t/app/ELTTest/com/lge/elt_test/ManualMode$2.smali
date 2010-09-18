.class Lcom/lge/elt_test/ManualMode$2;
.super Ljava/lang/Object;
.source "ManualMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/elt_test/ManualMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/ManualMode;


# direct methods
.method constructor <init>(Lcom/lge/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$2;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$2;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$000(Lcom/lge/elt_test/ManualMode;)V

    .line 106
    return-void
.end method
