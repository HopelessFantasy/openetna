.class Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;
.super Ljava/lang/Object;
.source "ExternalMemoryTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    iput-object p2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/16 v4, 0xa

    .line 54
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->val$status:Ljava/lang/String;

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 55
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->textTestResult:Landroid/widget/TextView;

    const-string v3, "mounted External Memory"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v4, :cond_20

    .line 57
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    invoke-virtual {v2}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->WriteToFile()Z

    move-result v0

    .local v0, TestResult:Z
    if-nez v0, :cond_2c

    .line 60
    .end local v0           #TestResult:Z
    :cond_20
    if-ge v1, v4, :cond_2f

    .line 61
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->textTestResult:Landroid/widget/TextView;

    const-string v3, "External Memory Test Fail!!!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v1           #i:I
    :goto_2b
    return-void

    .line 56
    .restart local v0       #TestResult:Z
    .restart local v1       #i:I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 64
    .end local v0           #TestResult:Z
    :cond_2f
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->textTestResult:Landroid/widget/TextView;

    const-string v3, "External Memory Test Success"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 68
    .end local v1           #i:I
    :cond_39
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->textTestResult:Landroid/widget/TextView;

    const-string v3, "Please insert SD card!!!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method
