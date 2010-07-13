.class Lcom/android/contacts/EditContactActivity$9;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->createGroupSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 4048
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$9;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 4049
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$9;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 4050
    .local v0, entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    iput-boolean p3, v0, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 4051
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$9;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4052
    return-void
.end method
