.class public abstract Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AutoSearchEntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/CharSequence;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1830
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1831
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1832
    iput-object p3, p0, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 1833
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;ILjava/lang/CharSequence;)V
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1836
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "position"

    .prologue
    .line 1840
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1826
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1844
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1849
    .local p0, this:Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,"Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter<TE;>;"
    if-nez p2, :cond_e

    .line 1850
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1854
    .local v0, v:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;->bindView(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 1855
    return-object v0

    .line 1852
    .end local v0           #v:Landroid/view/View;
    :cond_e
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_6
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method
