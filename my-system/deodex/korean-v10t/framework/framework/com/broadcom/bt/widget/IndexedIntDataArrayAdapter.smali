.class public abstract Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndexedIntDataArrayAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDropDownResource:I

.field protected mFieldId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mNotifyOnChange:Z

.field protected mObjects:[I

.field protected mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[I)V
    .registers 6
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[I)V
    .registers 6
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 88
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 74
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->init(Landroid/content/Context;II[I)V

    .line 75
    return-void
.end method

.method private init(Landroid/content/Context;II[I)V
    .registers 6
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mContext:Landroid/content/Context;

    .line 110
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iput p2, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mDropDownResource:I

    iput p2, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mResource:I

    .line 112
    iput-object p4, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    .line 113
    iput p3, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mFieldId:I

    .line 114
    return-void
.end method


# virtual methods
.method public get()[I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 198
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(I)I
    .registers 3
    .parameter "item"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/SearchUtil;->binarySearch([II)I

    move-result v0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 137
    return-void
.end method

.method public set([I)V
    .registers 3
    .parameter "objects"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mObjects:[I

    .line 118
    iget-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_9
    return-void
.end method

.method public setDropDownViewResource(I)V
    .registers 2
    .parameter "resource"

    .prologue
    .line 212
    iput p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mDropDownResource:I

    .line 213
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2
    .parameter "notifyOnChange"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->mNotifyOnChange:Z

    .line 155
    return-void
.end method
