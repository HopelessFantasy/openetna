.class Landroid/app/SearchDialog$1;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 807
    iput-object p1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 808
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_9

    .line 827
    :cond_8
    :goto_8
    return-void

    .line 811
    :cond_9
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->autoUrlDetect()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v1

    if-nez v1, :cond_8

    .line 814
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 815
    .local v0, options:I
    sget-object v1, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$400(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 816
    or-int/lit8 v0, v0, 0x2

    .line 820
    :goto_41
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$500(Landroid/app/SearchDialog;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 821
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1, v0}, Landroid/app/SearchDialog;->access$502(Landroid/app/SearchDialog;I)I

    .line 822
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    .line 824
    iget-object v1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    goto :goto_8

    .line 818
    :cond_6b
    or-int/lit8 v0, v0, 0x3

    goto :goto_41
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 790
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 797
    iget-object v0, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 805
    :cond_8
    :goto_8
    return-void

    .line 800
    :cond_9
    iget-object v0, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$200(Landroid/app/SearchDialog;)V

    .line 801
    iget-object v0, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_8

    .line 803
    iget-object v0, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    if-nez p1, :cond_24

    const-string v1, ""

    :goto_20
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$402(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method
