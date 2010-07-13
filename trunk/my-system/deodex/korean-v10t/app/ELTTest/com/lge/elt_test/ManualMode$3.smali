.class Lcom/lge/elt_test/ManualMode$3;
.super Ljava/lang/Object;
.source "ManualMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/ManualMode;


# direct methods
.method constructor <init>(Lcom/lge/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-string v7, " "

    .line 228
    iget-object v4, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v4}, Lcom/lge/elt_test/ManualMode;->access$500(Lcom/lge/elt_test/ManualMode;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, t1:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v4}, Lcom/lge/elt_test/ManualMode;->access$500(Lcom/lge/elt_test/ManualMode;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f05000c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    .local v1, t2:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v4}, Lcom/lge/elt_test/ManualMode;->access$500(Lcom/lge/elt_test/ManualMode;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, t3:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v4}, Lcom/lge/elt_test/ManualMode;->access$500(Lcom/lge/elt_test/ManualMode;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f05000e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 232
    .local v3, t4:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v5}, Lcom/lge/elt_test/ManualMode;->access$600(Lcom/lge/elt_test/ManualMode;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v5}, Lcom/lge/elt_test/ManualMode;->access$600(Lcom/lge/elt_test/ManualMode;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v5}, Lcom/lge/elt_test/ManualMode;->access$600(Lcom/lge/elt_test/ManualMode;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/elt_test/ManualMode$3;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v5}, Lcom/lge/elt_test/ManualMode;->access$600(Lcom/lge/elt_test/ManualMode;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method
