.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mTop:I

.field private tempRules:[I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1220
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1096
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 1114
    invoke-static {}, Landroid/widget/RelativeLayout;->access$700()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 1115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 14
    .parameter "c"
    .parameter "attrs"
    .parameter "isRTLSupports"

    .prologue
    .line 1120
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1096
    const/16 v6, 0x10

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1122
    sget-object v6, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1125
    .local v1, a:Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1127
    .local v4, rules:[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1128
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v0, :cond_ea

    .line 1129
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1130
    .local v2, attr:I
    packed-switch v2, :pswitch_data_17a

    .line 1128
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1132
    :pswitch_22
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_1f

    .line 1135
    :pswitch_2a
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1138
    :pswitch_33
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1141
    :pswitch_3c
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1144
    :pswitch_45
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1147
    :pswitch_4e
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1150
    :pswitch_57
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1153
    :pswitch_60
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1156
    :pswitch_69
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1159
    :pswitch_72
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v4, v6

    goto :goto_1f

    .line 1162
    :pswitch_7c
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_89

    const/4 v7, -0x1

    :goto_86
    aput v7, v4, v6

    goto :goto_1f

    :cond_89
    const/4 v7, 0x0

    goto :goto_86

    .line 1165
    :pswitch_8b
    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_98

    const/4 v7, -0x1

    :goto_95
    aput v7, v4, v6

    goto :goto_1f

    :cond_98
    const/4 v7, 0x0

    goto :goto_95

    .line 1168
    :pswitch_9a
    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a8

    const/4 v7, -0x1

    :goto_a4
    aput v7, v4, v6

    goto/16 :goto_1f

    :cond_a8
    const/4 v7, 0x0

    goto :goto_a4

    .line 1171
    :pswitch_aa
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_b8

    const/4 v7, -0x1

    :goto_b4
    aput v7, v4, v6

    goto/16 :goto_1f

    :cond_b8
    const/4 v7, 0x0

    goto :goto_b4

    .line 1174
    :pswitch_ba
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_c8

    const/4 v7, -0x1

    :goto_c4
    aput v7, v4, v6

    goto/16 :goto_1f

    :cond_c8
    const/4 v7, 0x0

    goto :goto_c4

    .line 1177
    :pswitch_ca
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_d8

    const/4 v7, -0x1

    :goto_d4
    aput v7, v4, v6

    goto/16 :goto_1f

    :cond_d8
    const/4 v7, 0x0

    goto :goto_d4

    .line 1180
    :pswitch_da
    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_e8

    const/4 v7, -0x1

    :goto_e4
    aput v7, v4, v6

    goto/16 :goto_1f

    :cond_e8
    const/4 v7, 0x0

    goto :goto_e4

    .line 1186
    .end local v2           #attr:I
    :cond_ea
    const/4 v5, 0x0

    .line 1187
    .local v5, temp:I
    if-eqz p3, :cond_175

    .line 1188
    iget v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v9, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1189
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->tempRules:[I

    .line 1190
    const/16 v6, 0xb

    aget v6, v4, v6

    if-nez v6, :cond_10c

    const/16 v6, 0x9

    aget v6, v4, v6

    if-eqz v6, :cond_11c

    .line 1192
    :cond_10c
    const/16 v6, 0x9

    aget v5, v4, v6

    .line 1193
    const/16 v6, 0x9

    const/16 v7, 0xb

    aget v7, v4, v7

    aput v7, v4, v6

    .line 1194
    const/16 v6, 0xb

    aput v5, v4, v6

    .line 1196
    :cond_11c
    const/4 v6, 0x7

    aget v6, v4, v6

    if-nez v6, :cond_126

    const/4 v6, 0x5

    aget v6, v4, v6

    if-eqz v6, :cond_132

    .line 1197
    :cond_126
    const/4 v6, 0x5

    aget v5, v4, v6

    .line 1198
    const/4 v6, 0x5

    const/4 v7, 0x7

    aget v7, v4, v7

    aput v7, v4, v6

    .line 1199
    const/4 v6, 0x7

    aput v5, v4, v6

    .line 1201
    :cond_132
    const/4 v6, 0x0

    aget v6, v4, v6

    if-nez v6, :cond_13c

    const/4 v6, 0x1

    aget v6, v4, v6

    if-eqz v6, :cond_148

    .line 1202
    :cond_13c
    const/4 v6, 0x1

    aget v5, v4, v6

    .line 1203
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v4, v7

    aput v7, v4, v6

    .line 1204
    const/4 v6, 0x0

    aput v5, v4, v6

    .line 1206
    :cond_148
    const/16 v6, 0xe

    aget v6, v4, v6

    if-nez v6, :cond_175

    const/16 v6, 0xd

    aget v6, v4, v6

    if-nez v6, :cond_175

    const/4 v6, 0x7

    aget v6, v4, v6

    if-nez v6, :cond_175

    const/4 v6, 0x5

    aget v6, v4, v6

    if-nez v6, :cond_175

    const/4 v6, 0x0

    aget v6, v4, v6

    if-nez v6, :cond_175

    const/4 v6, 0x1

    aget v6, v4, v6

    if-nez v6, :cond_175

    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    if-nez v6, :cond_175

    .line 1209
    const/16 v6, 0xb

    const/4 v7, -0x1

    aput v7, v4, v6

    .line 1216
    :cond_175
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1217
    return-void

    .line 1130
    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7c
        :pswitch_8b
        :pswitch_9a
        :pswitch_aa
        :pswitch_ba
        :pswitch_ca
        :pswitch_da
        :pswitch_22
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 1227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1228
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1096
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1235
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method


# virtual methods
.method public addRule(I)V
    .registers 4
    .parameter "verb"

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1257
    return-void
.end method

.method public addRule(II)V
    .registers 4
    .parameter "verb"
    .parameter "anchor"

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1275
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "output"

    .prologue
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules()[I
    .registers 2

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method
