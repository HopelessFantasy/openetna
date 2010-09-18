.class Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$2;
.super Ljava/lang/Object;
.source "TwitterTweetUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate$2;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterTweetUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    return-void
.end method
