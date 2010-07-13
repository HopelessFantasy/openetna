.class Lcom/lge/sns/account/ui/AccountListView$3;
.super Ljava/lang/Object;
.source "AccountListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountListView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountListView;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$3;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 197
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 199
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountListView$3;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v0}, Lcom/lge/sns/account/ui/AccountListView;->finish()V

    .line 201
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
