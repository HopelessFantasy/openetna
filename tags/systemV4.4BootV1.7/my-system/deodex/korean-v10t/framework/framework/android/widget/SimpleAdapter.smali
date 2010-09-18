.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$1;,
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mHolders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .registers 7
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mHolders:Ljava/util/WeakHashMap;

    .line 83
    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    .line 84
    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    .line 85
    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 86
    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 87
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/SimpleAdapter;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 20
    .parameter "position"
    .parameter "view"

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 160
    .local v7, dataSet:Ljava/util/Map;
    if-nez v7, :cond_11

    .line 209
    :cond_10
    return-void

    .line 164
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    move-object v3, v0

    .line 165
    .local v3, binder:Landroid/widget/SimpleAdapter$ViewBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter;->mHolders:Ljava/util/WeakHashMap;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/View;

    .line 166
    .local v9, holder:[Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    move-object v8, v0

    .line 167
    .local v8, from:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleAdapter;->mTo:[I

    move-object v12, v0

    .line 168
    .local v12, to:[I
    array-length v5, v12

    .line 170
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_30
    if-ge v10, v5, :cond_10

    .line 171
    aget-object v13, v9, v10

    .line 172
    .local v13, v:Landroid/view/View;
    if-eqz v13, :cond_61

    .line 173
    aget-object v14, v8, v10

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 174
    .local v6, data:Ljava/lang/Object;
    if-nez v6, :cond_64

    const-string v14, ""

    move-object v11, v14

    .line 175
    .local v11, text:Ljava/lang/String;
    :goto_41
    if-nez v11, :cond_45

    .line 176
    const-string v11, ""

    .line 179
    :cond_45
    const/4 v4, 0x0

    .line 180
    .local v4, bound:Z
    if-eqz v3, :cond_4c

    .line 181
    invoke-interface {v3, v13, v6, v11}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    .line 184
    :cond_4c
    if-nez v4, :cond_61

    .line 185
    instance-of v14, v13, Landroid/widget/Checkable;

    if-eqz v14, :cond_93

    .line 186
    instance-of v14, v6, Ljava/lang/Boolean;

    if-eqz v14, :cond_6a

    .line 187
    check-cast v13, Landroid/widget/Checkable;

    .end local v13           #v:Landroid/view/View;
    check-cast v6, Ljava/lang/Boolean;

    .end local v6           #data:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-interface {v13, v14}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 170
    .end local v4           #bound:Z
    .end local v11           #text:Ljava/lang/String;
    :cond_61
    :goto_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    .line 174
    .restart local v6       #data:Ljava/lang/Object;
    .restart local v13       #v:Landroid/view/View;
    :cond_64
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    goto :goto_41

    .line 189
    .restart local v4       #bound:Z
    .restart local v11       #text:Ljava/lang/String;
    :cond_6a
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " should be bound to a Boolean, not a "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 192
    :cond_93
    instance-of v14, v13, Landroid/widget/TextView;

    if-eqz v14, :cond_a1

    .line 195
    check-cast v13, Landroid/widget/TextView;

    .end local v13           #v:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_61

    .line 196
    .restart local v13       #v:Landroid/view/View;
    :cond_a1
    instance-of v14, v13, Landroid/widget/ImageView;

    if-eqz v14, :cond_c3

    .line 197
    instance-of v14, v6, Ljava/lang/Integer;

    if-eqz v14, :cond_b9

    .line 198
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #v:Landroid/view/View;
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #data:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_61

    .line 200
    .restart local v6       #data:Ljava/lang/Object;
    .restart local v13       #v:Landroid/view/View;
    :cond_b9
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #v:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_61

    .line 203
    .restart local v13       #v:Landroid/view/View;
    :cond_c3
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " view that can be bounds by this SimpleAdapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 122
    if-nez p2, :cond_25

    .line 123
    iget-object v5, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, v:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 126
    .local v3, to:[I
    array-length v0, v3

    .line 127
    .local v0, count:I
    new-array v1, v0, [Landroid/view/View;

    .line 129
    .local v1, holder:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1c

    .line 130
    aget v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 133
    :cond_1c
    iget-object v5, p0, Landroid/widget/SimpleAdapter;->mHolders:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v0           #count:I
    .end local v1           #holder:[Landroid/view/View;
    .end local v2           #i:I
    .end local v3           #to:[I
    :goto_21
    invoke-direct {p0, p1, v4}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    .line 140
    return-object v4

    .line 135
    .end local v4           #v:Landroid/view/View;
    :cond_25
    move-object v4, p2

    .restart local v4       #v:Landroid/view/View;
    goto :goto_21
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 155
    iget v0, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_c

    .line 290
    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    .line 292
    :cond_c
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    iget v0, p0, Landroid/widget/SimpleAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2
    .parameter "resource"

    .prologue
    .line 150
    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    .line 151
    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .registers 2
    .parameter "viewBinder"

    .prologue
    .line 231
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 232
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "v"
    .parameter "value"

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .parameter "v"
    .parameter "value"

    .prologue
    .line 270
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 274
    :goto_7
    return-void

    .line 271
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 272
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter "v"
    .parameter "text"

    .prologue
    .line 285
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method
