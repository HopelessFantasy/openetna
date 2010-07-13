.class Lcom/lge/sns/profile/ui/FriendView$5;
.super Ljava/lang/Object;
.source "FriendView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendView;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendView$5;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView$5;->this$0:Lcom/lge/sns/profile/ui/FriendView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendView;->access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    return-void
.end method
