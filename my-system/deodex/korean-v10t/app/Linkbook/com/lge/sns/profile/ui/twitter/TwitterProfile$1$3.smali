.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 182
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$200(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    :cond_23
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    iget-object v0, v0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$400(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$300(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method
