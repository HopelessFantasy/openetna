.class Lcom/lge/sns/message/ui/SNMessageView$1;
.super Ljava/lang/Object;
.source "SNMessageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageView;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageView;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$1;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$1;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    return-void
.end method
