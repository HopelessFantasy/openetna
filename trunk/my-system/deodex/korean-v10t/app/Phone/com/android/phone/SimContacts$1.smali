.class Lcom/android/phone/SimContacts$1;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SimContacts;->access$400(Lcom/android/phone/SimContacts;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v2, 0x7f0901e2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 490
    :goto_1e
    return-void

    .line 487
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 488
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ADNList"

    const-string v2, "contact save fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
