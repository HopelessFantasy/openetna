.class Lcom/android/mms/ui/ComposeMessageActivity$16;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;)V
    .registers 14
    .parameter "part"

    .prologue
    const v11, 0x7f07004f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3075
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 3076
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3078
    .local v5, r:Landroid/content/res/Resources;
    if-nez p1, :cond_23

    .line 3079
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 3109
    :goto_22
    return-void

    .line 3085
    :cond_23
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v7, 0x4

    invoke-static {v6, v7, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 3087
    :try_start_29
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3088
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 3089
    .local v4, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/AttachmentEditor;->changeImage(Landroid/net/Uri;)V

    .line 3090
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_56
    .catch Lcom/google/android/mms/MmsException; {:try_start_29 .. :try_end_56} :catch_57
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_29 .. :try_end_56} :catch_6f
    .catch Lcom/android/mms/ResolutionException; {:try_start_29 .. :try_end_56} :catch_97
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_29 .. :try_end_56} :catch_ac

    goto :goto_22

    .line 3092
    .end local v2           #messageId:J
    .end local v4           #newUri:Landroid/net/Uri;
    :catch_57
    move-exception v6

    move-object v1, v6

    .line 3093
    .local v1, e:Lcom/google/android/mms/MmsException;
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_22

    .line 3096
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_6f
    move-exception v6

    move-object v1, v6

    .line 3097
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    const v6, 0x7f07004c

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004d

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 3100
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_97
    move-exception v6

    move-object v1, v6

    .line 3101
    .local v1, e:Lcom/android/mms/ResolutionException;
    const v6, 0x7f070050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070051

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 3104
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_ac
    move-exception v6

    move-object v1, v6

    .line 3105
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v11, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22
.end method
