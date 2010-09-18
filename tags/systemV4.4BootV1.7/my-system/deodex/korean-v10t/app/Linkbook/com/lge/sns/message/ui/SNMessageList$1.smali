.class Lcom/lge/sns/message/ui/SNMessageList$1;
.super Ljava/lang/Object;
.source "SNMessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageList;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageList;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList$1;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList$1;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageList;->access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    return-void
.end method
