.class Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 359
    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v2, :cond_23

    instance-of v2, p2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_23

    .line 360
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    .line 362
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 364
    invoke-virtual {p2, v1}, Landroid/view/View;->setId(I)V

    .line 366
    :cond_16
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    move-object v2, v0

    iget-object v3, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v3}, Landroid/widget/RadioGroup;->access$700(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    .end local v1           #id:I
    :cond_23
    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_2c

    .line 371
    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 373
    :cond_2c
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 379
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v1, :cond_10

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_10

    .line 380
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 383
    :cond_10
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_19

    .line 384
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 386
    :cond_19
    return-void
.end method
