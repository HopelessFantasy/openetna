.class Lcom/lge/sns/media/ui/MediaUploadActivity$2;
.super Ljava/lang/Object;
.source "MediaUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaUploadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 124
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$000(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :try_start_b
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$100(Lcom/lge/sns/media/ui/MediaUploadActivity;)V
    :try_end_10
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_b .. :try_end_10} :catch_11
    .catch Lcom/lge/sns/SnsException; {:try_start_b .. :try_end_10} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_41

    .line 138
    :goto_10
    return-void

    .line 127
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 128
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, credentialIntent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->access$200(Lcom/lge/sns/media/ui/MediaUploadActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 131
    .end local v0           #credentialIntent:Landroid/content/Intent;
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_2d
    move-exception v2

    move-object v1, v2

    .line 132
    .local v1, e:Lcom/lge/sns/SnsException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const v3, 0x7f05000d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    goto :goto_10

    .line 134
    .end local v1           #e:Lcom/lge/sns/SnsException;
    :catch_41
    move-exception v2

    move-object v1, v2

    .line 135
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    const v3, 0x7f050096

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity$2;->this$0:Lcom/lge/sns/media/ui/MediaUploadActivity;

    invoke-virtual {v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    goto :goto_10
.end method
