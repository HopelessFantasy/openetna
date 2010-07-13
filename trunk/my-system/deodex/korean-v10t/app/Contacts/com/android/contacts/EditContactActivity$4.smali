.class Lcom/android/contacts/EditContactActivity$4;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
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
    .line 562
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$4;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 563
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$4;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v4}, Lcom/android/contacts/EditContactActivity;->access$300(Lcom/android/contacts/EditContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$4;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v4, v4, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v4, v5, v5}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 565
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-eqz v1, :cond_32

    .line 566
    invoke-virtual {v1}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, data:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 568
    :cond_2b
    const-string v4, "EditContactActivity"

    const-string v5, "number or name cannot be Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v0           #data:Ljava/lang/String;
    :cond_32
    :goto_32
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$4;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v4}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 577
    return-void

    .line 570
    .restart local v0       #data:Ljava/lang/String;
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND number =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity$4;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v4, v4, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "content://icc/adn"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_32
.end method
