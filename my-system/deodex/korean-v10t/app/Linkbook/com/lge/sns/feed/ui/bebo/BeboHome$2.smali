.class Lcom/lge/sns/feed/ui/bebo/BeboHome$2;
.super Ljava/lang/Object;
.source "BeboHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$2;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 287
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 288
    return-void
.end method
