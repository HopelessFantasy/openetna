.class Landroid/app/SearchDialog$4;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 885
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v2

    if-nez v2, :cond_9

    .line 905
    :cond_8
    :goto_8
    return-void

    .line 891
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v2}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 894
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/search/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 895
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v2}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_35} :catch_36

    goto :goto_8

    .line 900
    :catch_36
    move-exception v2

    move-object v1, v2

    .line 903
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "SearchDialog"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 896
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_40
    :try_start_40
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/search/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 897
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    iget-object v3, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-static {v3}, Landroid/app/SearchDialog;->access$800(Landroid/app/SearchDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 898
    .local v0, appSearchIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v2}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_61} :catch_36

    goto :goto_8
.end method
