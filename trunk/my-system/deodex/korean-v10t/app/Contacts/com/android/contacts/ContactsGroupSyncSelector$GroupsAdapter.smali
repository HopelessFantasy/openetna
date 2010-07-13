.class final Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactsGroupSyncSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsGroupSyncSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsGroupSyncSelector;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactsGroupSyncSelector;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;->this$0:Lcom/android/contacts/ContactsGroupSyncSelector;

    .line 67
    const v0, 0x1090005

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 70
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;->this$0:Lcom/android/contacts/ContactsGroupSyncSelector;

    iget-boolean v0, v0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;->this$0:Lcom/android/contacts/ContactsGroupSyncSelector;

    iget-boolean v1, v1, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    :goto_10
    return-object v0

    .line 92
    :cond_11
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_10
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "pos"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;->this$0:Lcom/android/contacts/ContactsGroupSyncSelector;

    iget-boolean v0, v0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
