.class Lcom/android/mms/ui/MessageListItem$4;
.super Landroid/widget/ArrayAdapter;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 685
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-string v6, "tel:"

    .line 686
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 688
    .local v5, v:Landroid/view/View;
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$4;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, url:Ljava/lang/String;
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 690
    .local v3, tv:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 691
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_47

    .line 692
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 693
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 694
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 696
    :cond_47
    const-string v2, "tel:"

    .line 697
    .local v2, telPrefix:Ljava/lang/String;
    const-string v6, "tel:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 698
    const-string v6, "tel:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    :cond_5f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_62} :catch_63

    .line 704
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #telPrefix:Ljava/lang/String;
    .end local v3           #tv:Landroid/widget/TextView;
    .end local v4           #url:Ljava/lang/String;
    :goto_62
    return-object v5

    .line 701
    :catch_63
    move-exception v6

    goto :goto_62
.end method
