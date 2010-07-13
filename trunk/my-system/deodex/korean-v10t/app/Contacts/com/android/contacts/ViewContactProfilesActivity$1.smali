.class Lcom/android/contacts/ViewContactProfilesActivity$1;
.super Ljava/lang/Object;
.source "ViewContactProfilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactProfilesActivity;->showAddCommunityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactProfilesActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactProfilesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/contacts/ViewContactProfilesActivity$1;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$1;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-static {v1}, Lcom/android/contacts/ViewContactProfilesActivity;->access$300(Lcom/android/contacts/ViewContactProfilesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/IconListAdapter$IconListItem;

    .line 777
    .local v0, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    if-eqz v0, :cond_1c

    .line 778
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity$1;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-virtual {v0}, Lcom/android/contacts/IconListAdapter$IconListItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/LinkbookAsyncHelper;->setIntentToPickFriend(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    :cond_1c
    return-void
.end method
