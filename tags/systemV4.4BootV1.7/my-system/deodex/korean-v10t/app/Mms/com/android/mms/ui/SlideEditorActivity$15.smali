.class Lcom/android/mms/ui/SlideEditorActivity$15;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;)V
    .registers 13
    .parameter "part"

    .prologue
    const/4 v9, 0x0

    const v10, 0x7f07004f

    .line 898
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 899
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_1e

    .line 900
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 931
    :goto_1d
    return-void

    .line 907
    :cond_1e
    :try_start_1e
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 908
    .local v2, messageId:J
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 909
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v5, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 910
    .local v4, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 912
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v7, 0x7f070065

    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;I)V
    :try_end_47
    .catch Lcom/google/android/mms/MmsException; {:try_start_1e .. :try_end_47} :catch_48
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1e .. :try_end_47} :catch_67
    .catch Lcom/android/mms/ResolutionException; {:try_start_1e .. :try_end_47} :catch_8d
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1e .. :try_end_47} :catch_a8

    goto :goto_1d

    .line 913
    .end local v2           #messageId:J
    .end local v4           #newUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_48
    move-exception v6

    move-object v1, v6

    .line 914
    .local v1, e:Lcom/google/android/mms/MmsException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v7, "add picture failed"

    invoke-static {v6, v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 915
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1d

    .line 918
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_67
    move-exception v6

    move-object v1, v6

    .line 919
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f07004c

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f07004d

    iget-object v10, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 922
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_8d
    move-exception v6

    move-object v1, v6

    .line 923
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f070050

    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f070051

    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 926
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_a8
    move-exception v6

    move-object v1, v6

    .line 927
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f07004e

    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$15;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1100(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
