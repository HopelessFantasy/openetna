.class Lcom/android/contacts/SearchActivity$DeleteContactsListener;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteContactsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/android/contacts/SearchActivity$DeleteContactsListener;-><init>(Lcom/android/contacts/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$500(Lcom/android/contacts/SearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v11

    .line 790
    .local v11, sba:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v10

    .line 793
    .local v10, imax:I
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/SearchActivity;->access$702(Lcom/android/contacts/SearchActivity;I)I

    .line 795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v6, Ids:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2a
    if-ge v9, v10, :cond_6c

    .line 797
    invoke-virtual {v11, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 798
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    .line 799
    .local v7, contactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_52

    .line 800
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 802
    :goto_4d
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$708(Lcom/android/contacts/SearchActivity;)I

    .line 796
    .end local v7           #contactId:J
    :cond_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 801
    .restart local v7       #contactId:J
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 806
    .end local v7           #contactId:J
    :cond_6c
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-lez v0, :cond_a3

    .line 807
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$800(Lcom/android/contacts/SearchActivity;)Lcom/android/contacts/SearchActivity$QueryHandler;

    move-result-object v0

    const/16 v1, 0x36

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/SearchActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/SearchActivity;->access$702(Lcom/android/contacts/SearchActivity;I)I

    .line 815
    .end local v12           #where:Ljava/lang/StringBuilder;
    :cond_a3
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clear()V

    .line 817
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-lez v0, :cond_c2

    .line 818
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$900(Lcom/android/contacts/SearchActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 819
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$DeleteContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$900(Lcom/android/contacts/SearchActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 821
    :cond_c2
    return-void
.end method
