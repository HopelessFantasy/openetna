.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    iput-boolean p2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 190
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$500(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$300(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$400(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v5}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$200(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/lge/sns/media/IMediaFacade;->updateMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V

    .line 194
    :goto_24
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$1;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    :cond_2e
    :goto_2e
    return-void

    .line 192
    :cond_2f
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$500(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$300(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$400(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/media/IMediaFacade;->updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    :try_end_45
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_45} :catch_46
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_45} :catch_70

    goto :goto_24

    .line 201
    :catch_46
    move-exception v2

    move-object v0, v2

    .line 202
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$2;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    iget-boolean v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->val$retry:Z

    if-eqz v2, :cond_2e

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$300(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v1, v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2e

    .line 217
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_70
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, e:Lcom/lge/sns/SnsException;
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2$3;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2e
.end method
