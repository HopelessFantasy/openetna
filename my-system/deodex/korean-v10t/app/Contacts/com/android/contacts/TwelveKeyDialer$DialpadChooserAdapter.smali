.class Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# static fields
.field static final DIALPAD_CHOICE_ADD_NEW_CALL:I = 0x67

.field static final DIALPAD_CHOICE_RETURN_TO_CALL:I = 0x66

.field static final DIALPAD_CHOICE_USE_DTMF_DIALPAD:I = 0x65

.field private static final NUM_ITEMS:I = 0x3


# instance fields
.field private mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 1680
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1678
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    .line 1682
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1688
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f06007d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1695
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f06007e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b3

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1702
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f06007f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 1707
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1710
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1724
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1733
    if-nez p2, :cond_c

    .line 1734
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1737
    :cond_c
    const v2, 0x7f05001d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1738
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    const v2, 0x7f050001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1741
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1743
    return-object p2
.end method
