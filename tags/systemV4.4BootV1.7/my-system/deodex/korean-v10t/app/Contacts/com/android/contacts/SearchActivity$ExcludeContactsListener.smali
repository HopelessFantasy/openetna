.class Lcom/android/contacts/SearchActivity$ExcludeContactsListener;
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
    name = "ExcludeContactsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;-><init>(Lcom/android/contacts/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$500(Lcom/android/contacts/SearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v13

    .line 912
    .local v13, sba:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v12

    .line 915
    .local v12, imax:I
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/SearchActivity;->access$702(Lcom/android/contacts/SearchActivity;I)I

    .line 917
    const/4 v11, 0x0

    .end local p1
    .local v11, i:I
    :goto_25
    if-ge v11, v12, :cond_c1

    .line 918
    invoke-virtual {v13, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 919
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    .line 920
    .local v7, contactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_99

    .line 921
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$1000(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9c

    .line 922
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$1100(Lcom/android/contacts/SearchActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 923
    .local v9, groupId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://contacts/people/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/groups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 924
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$800(Lcom/android/contacts/SearchActivity;)Lcom/android/contacts/SearchActivity$QueryHandler;

    move-result-object v0

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/SearchActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 931
    .end local v9           #groupId:J
    :goto_94
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$708(Lcom/android/contacts/SearchActivity;)I

    .line 917
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #contactId:J
    :cond_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    .line 926
    .restart local v7       #contactId:J
    :cond_9c
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 927
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "starred"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 929
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$800(Lcom/android/contacts/SearchActivity;)Lcom/android/contacts/SearchActivity$QueryHandler;

    move-result-object v0

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/SearchActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_94

    .line 935
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #contactId:J
    :cond_c1
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->clear()V

    .line 937
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-lez v0, :cond_e0

    .line 938
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$900(Lcom/android/contacts/SearchActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 939
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$900(Lcom/android/contacts/SearchActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 941
    :cond_e0
    return-void
.end method
