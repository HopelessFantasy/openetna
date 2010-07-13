.class Lcom/android/contacts/TwelveKeyDialer$2;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->autoSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$200(Lcom/android/contacts/TwelveKeyDialer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 402
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$200(Lcom/android/contacts/TwelveKeyDialer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, number:Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 406
    .local v1, position:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 407
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_2b
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$300(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$300(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v3}, Lcom/android/contacts/TwelveKeyDialer;->access$300(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 412
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/contacts/TwelveKeyDialer;->setDialFont()V

    .line 415
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #position:I
    :cond_50
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$400(Lcom/android/contacts/TwelveKeyDialer;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 416
    return-void
.end method
