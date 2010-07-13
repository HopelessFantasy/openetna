.class Lcom/android/browser/BrowserActivity$PromptListener$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$PromptListener;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$PromptListener;

.field final synthetic val$this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$PromptListener;Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4982
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->val$this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v12, "nextURI"

    const-string v11, "installNotifyURI"

    const-string v8, "cookiedata"

    .line 4983
    const/4 v6, -0x1

    if-ne p2, v6, :cond_ca

    .line 4984
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mIsRoapTrigger:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 4985
    new-instance v0, Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    const/16 v7, 0x65

    invoke-direct {v0, v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 4986
    .local v0, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v6, v0}, Lcom/android/browser/BrowserActivity;->addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V

    .line 4987
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    if-eqz v6, :cond_3a

    .line 4988
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    const-string v7, "installNotifyURI"

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4989
    :cond_3a
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    if-eqz v6, :cond_4d

    .line 4990
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    const-string v7, "nextURI"

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    invoke-virtual {v6, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4991
    :cond_4d
    new-array v6, v9, [Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    aput-object v7, v6, v10

    invoke-virtual {v0, v6}, Lcom/lge/browser/OmaDrmHandlerV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5043
    .end local v0           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_58
    :goto_58
    return-void

    .line 4994
    :cond_59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 4995
    .local v2, status:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b6

    .line 5000
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 5001
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    const v7, 0x7f0700c4

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5002
    .local v1, msg:Ljava/lang/String;
    const v4, 0x7f0700c3

    .line 5008
    .local v4, title:I
    :goto_7b
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f07000b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_58

    .line 5004
    .end local v1           #msg:Ljava/lang/String;
    .end local v4           #title:I
    :cond_9f
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    const v7, 0x7f0700c2

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v9, v9, Lcom/android/browser/BrowserActivity$PromptListener;->mDdName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5005
    .restart local v1       #msg:Ljava/lang/String;
    const v4, 0x7f0700c1

    .restart local v4       #title:I
    goto :goto_7b

    .line 5016
    .end local v1           #msg:Ljava/lang/String;
    .end local v4           #title:I
    :cond_b6
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v8, v8, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v9, v9, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 5020
    .end local v2           #status:Ljava/lang/String;
    :cond_ca
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    if-nez v6, :cond_d6

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    if-eqz v6, :cond_58

    .line 5022
    :cond_d6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 5023
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    if-eqz v6, :cond_ea

    .line 5024
    const-string v6, "installNotifyURI"

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5026
    :cond_ea
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    if-eqz v6, :cond_f9

    .line 5027
    const-string v6, "nextURI"

    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5028
    :cond_f9
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    const-string v7, "useragent"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5029
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_10a

    .line 5030
    const-string v6, "useragent"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5032
    :cond_10a
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    const-string v7, "cookiedata"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5033
    if-eqz v3, :cond_11b

    .line 5034
    const-string v6, "cookiedata"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    :cond_11b
    iget-object v6, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v6, v6, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    const-string v7, "referer"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5037
    if-eqz v3, :cond_12c

    .line 5038
    const-string v6, "referer"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5040
    :cond_12c
    const-string v6, "notify_code"

    const-string v7, "902 User Cancelled"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5041
    new-instance v6, Lcom/lge/browser/DDHandlerV1;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity$PromptListener$1;->this$1:Lcom/android/browser/BrowserActivity$PromptListener;

    iget-object v7, v7, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/lge/browser/DDHandlerV1;-><init>(Lcom/android/browser/BrowserActivity;I)V

    new-array v7, v9, [Landroid/content/ContentValues;

    aput-object v5, v7, v10

    invoke-virtual {v6, v7}, Lcom/lge/browser/DDHandlerV1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_58
.end method
