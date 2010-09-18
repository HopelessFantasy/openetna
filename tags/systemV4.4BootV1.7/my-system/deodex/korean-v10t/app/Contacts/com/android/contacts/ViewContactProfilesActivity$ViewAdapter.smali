.class final Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;
.super Lcom/android/contacts/ProfileEntryAdapter;
.source "ViewContactProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ProfileEntryAdapter",
        "<",
        "Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/ViewContactProfilesActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/ViewContactProfilesActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactProfilesActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    .line 838
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ProfileEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 839
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/android/contacts/ViewContactProfilesActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    .line 840
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/android/contacts/ProfileEntryAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 834
    check-cast p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->bindView(Landroid/view/View;ILcom/android/contacts/ViewContactProfilesActivity$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/android/contacts/ViewContactProfilesActivity$ViewEntry;)V
    .registers 15
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;

    .line 889
    .local v8, views:Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
    iget-object v5, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->photoView:Landroid/widget/ImageView;

    .line 890
    .local v5, photoView:Landroid/widget/ImageView;
    iget-object v4, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->nameView:Landroid/widget/TextView;

    .line 891
    .local v4, nameView:Landroid/widget/TextView;
    iget-object v2, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->dataView:Landroid/widget/TextView;

    .line 892
    .local v2, dataView:Landroid/widget/TextView;
    iget-object v3, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->iconView:Landroid/widget/ImageView;

    .line 893
    .local v3, iconView:Landroid/widget/ImageView;
    iget-object v6, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->presenceView:Landroid/widget/ImageView;

    .line 894
    .local v6, presenceView:Landroid/widget/ImageView;
    iget-object v1, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->checkView:Landroid/widget/CheckedTextView;

    .line 897
    .local v1, checkView:Landroid/widget/CheckedTextView;
    if-eqz v5, :cond_1d

    .line 898
    iget-object v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->photoData:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_66

    .line 899
    iget-object v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->photoData:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 905
    :cond_1d
    :goto_1d
    if-eqz v3, :cond_32

    .line 906
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v0

    .line 907
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v0, :cond_6d

    iget-object v9, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_6d

    .line 908
    iget-object v9, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 914
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_32
    :goto_32
    if-eqz v4, :cond_39

    .line 915
    iget-object v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_39
    if-eqz v2, :cond_48

    .line 919
    iget-object v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 920
    iget-object v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :cond_48
    :goto_48
    if-eqz v6, :cond_52

    .line 927
    iget-boolean v9, p3, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->isNew:Z

    if-eqz v9, :cond_81

    .line 929
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    :cond_52
    :goto_52
    if-eqz v1, :cond_65

    .line 936
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-virtual {v9}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 937
    .local v7, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 939
    .end local v7           #sba:Landroid/util/SparseBooleanArray;
    :cond_65
    return-void

    .line 901
    :cond_66
    const v9, 0x7f0200a6

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 910
    .restart local v0       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_6d
    const v9, 0x7f0200d5

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    .line 922
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_74
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f060118

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 931
    :cond_81
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_52
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 950
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->getItem(I)Lcom/android/contacts/ProfileEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 849
    .local v1, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    if-eqz p2, :cond_16

    .line 850
    move-object v2, p2

    .line 851
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;

    .line 873
    .local v3, views:Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
    :goto_10
    iput-object v1, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 876
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->bindView(Landroid/view/View;ILcom/android/contacts/ViewContactProfilesActivity$ViewEntry;)V

    .line 877
    return-object v2

    .line 854
    .end local v2           #v:Landroid/view/View;
    .end local v3           #views:Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
    :cond_16
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactProfilesActivity;

    .line 855
    .local v0, activity:Lcom/android/contacts/ViewContactProfilesActivity;
    invoke-static {v0}, Lcom/android/contacts/ViewContactProfilesActivity;->access$400(Lcom/android/contacts/ViewContactProfilesActivity;)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_7a

    .line 856
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03003a

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 862
    .restart local v2       #v:Landroid/view/View;
    :goto_2f
    new-instance v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;-><init>(Lcom/android/contacts/ViewContactProfilesActivity$1;)V

    .line 863
    .restart local v3       #views:Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
    const v4, 0x7f050013

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->photoView:Landroid/widget/ImageView;

    .line 864
    const v4, 0x7f050001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->iconView:Landroid/widget/ImageView;

    .line 865
    const v4, 0x7f05000d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->presenceView:Landroid/widget/ImageView;

    .line 866
    const v4, 0x7f05005e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->nameView:Landroid/widget/TextView;

    .line 867
    const/high16 v4, 0x7f05

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->dataView:Landroid/widget/TextView;

    .line 868
    const v4, 0x7f05005f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;->checkView:Landroid/widget/CheckedTextView;

    .line 869
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_10

    .line 858
    .end local v2           #v:Landroid/view/View;
    .end local v3           #views:Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;
    :cond_7a
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030038

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2       #v:Landroid/view/View;
    goto :goto_2f
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
