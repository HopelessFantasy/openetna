.class Lcom/lge/sns/profile/ui/ProfileView$8;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$8;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$8;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 756
    return-void
.end method
