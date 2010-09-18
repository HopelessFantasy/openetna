.class Lcom/android/contacts/ContactsListActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter "uri"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p2, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->mUri:Landroid/net/Uri;

    .line 544
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/ContactsListActivity;

    const v1, 0x7f0600ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    return-void
.end method
