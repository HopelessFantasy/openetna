.class Lcom/lge/elt_test/ManualMode$1;
.super Ljava/lang/Object;
.source "ManualMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$1;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 101
    return-void
.end method
