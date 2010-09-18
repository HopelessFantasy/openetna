.class Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;
.super Ljava/lang/Object;
.source "DownloadTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/aging_test/DownloadTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$000(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 105
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$102(Lcom/lge/hiddenmenu/aging_test/DownloadTest;I)I

    .line 113
    :goto_1b
    return-void

    .line 109
    :cond_1c
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$000(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$102(Lcom/lge/hiddenmenu/aging_test/DownloadTest;I)I

    .line 110
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$200(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)I

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$100(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->DB_Fill(I)V

    goto :goto_1b

    .line 111
    :cond_47
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/DownloadTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->access$100(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->DB_Shake(I)V

    goto :goto_1b
.end method
