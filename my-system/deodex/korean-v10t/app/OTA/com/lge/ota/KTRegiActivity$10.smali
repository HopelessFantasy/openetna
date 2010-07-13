.class Lcom/lge/ota/KTRegiActivity$10;
.super Ljava/lang/Object;
.source "KTRegiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ota/KTRegiActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ota/KTRegiActivity;


# direct methods
.method constructor <init>(Lcom/lge/ota/KTRegiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$300(Lcom/lge/ota/KTRegiActivity;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 454
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/ota/KTRegiActivity;->access$402(Lcom/lge/ota/KTRegiActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 457
    :cond_17
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    iget-object v0, v0, Lcom/lge/ota/KTRegiActivity;->msgView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$10;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$200(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 459
    return-void
.end method
