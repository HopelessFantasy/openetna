.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$2;
.super Ljava/lang/Object;
.source "TwitterTweetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetList$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    return-void
.end method
