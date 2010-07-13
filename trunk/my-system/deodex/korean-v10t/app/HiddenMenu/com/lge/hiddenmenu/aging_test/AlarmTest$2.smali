.class Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;
.super Ljava/lang/Object;
.source "AlarmTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/aging_test/AlarmTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$000(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 114
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$102(Lcom/lge/hiddenmenu/aging_test/AlarmTest;I)I

    .line 122
    :goto_1b
    return-void

    .line 118
    :cond_1c
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$000(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$102(Lcom/lge/hiddenmenu/aging_test/AlarmTest;I)I

    .line 119
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$200(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)I

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$100(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->DB_Fill(I)V

    goto :goto_1b

    .line 120
    :cond_47
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;->this$0:Lcom/lge/hiddenmenu/aging_test/AlarmTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->access$100(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->DB_Shake(I)V

    goto :goto_1b
.end method
