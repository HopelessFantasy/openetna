.class Landroid/widget/AutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_f

    .line 1274
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$800(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-result-object v0

    .line 1276
    .local v0, dropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_f

    .line 1277
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$402(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 1280
    .end local v0           #dropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_f
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
