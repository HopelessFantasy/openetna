.class Lcom/lge/sns/account/ui/SnMenuView$2;
.super Ljava/lang/Object;
.source "SnMenuView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/SnMenuView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/SnMenuView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/SnMenuView;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenuView$2;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    return-void
.end method
