.class Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;
.super Ljava/lang/Object;
.source "ContactsTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$000(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 364
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    .line 370
    :cond_f
    :goto_f
    return-void

    .line 365
    :cond_10
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$000(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 366
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto :goto_f

    .line 367
    :cond_20
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$000(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 368
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;->this$0:Lcom/lge/hiddenmenu/contacts_test/ContactsTest;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V

    goto :goto_f
.end method
