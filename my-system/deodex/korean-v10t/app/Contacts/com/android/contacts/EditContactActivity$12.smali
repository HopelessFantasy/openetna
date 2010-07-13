.class Lcom/android/contacts/EditContactActivity$12;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->createSNSelectDialog()V
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
    .line 4065
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$12;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4066
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$12;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {}, Lcom/android/contacts/EditContactActivity;->access$1500()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/android/contacts/EditContactActivity;->access$1600(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;)I

    move-result v1

    .line 4067
    .local v1, snID:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    .line 4068
    sget-object v2, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 4069
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v0, :cond_25

    .line 4070
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$12;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v3, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/LinkbookAsyncHelper;->setIntentToPickFriend(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4074
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_25
    return-void
.end method
