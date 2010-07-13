.class Lcom/android/contacts/ContactsListActivity$3;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 1448
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$100(Lcom/android/contacts/ContactsListActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1451
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1452
    return-void
.end method
